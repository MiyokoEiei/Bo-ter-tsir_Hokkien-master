-- phraseComment_Module.lua
-- Copyright (C) 2023 yaoyuan.dou <douyaoyuan@126.com>

--引入系统变更处理模块
local sysInfoEnable, sysInfo = pcall(require, 'sysInfo')

--引入 utf8String 处理字符串相关操作
local utf8StringEnable, utf8String = pcall(require, 'utf8String')

local logEnable, log = pcall(require, "runLog")
if logEnable then
	log.writeLog('')
	log.writeLog('log from phraseComment_Module.lua')
	log.writeLog('sysInfoEnable:'..tostring(sysInfoEnable))
	log.writeLog('utf8StringEnable:'..tostring(utf8StringEnable))
end

local stringSplit = utf8String.utf8Split
local currentDir = sysInfo.currentDir

-- ===== 新增：value 的 <br> / &nbsp; 编解码 =====
local NBSP = "\194\160"   -- U+00A0 不换行空格（占位）
local BR   = "\n"         -- 内部用真实换行做占位

local function decodeVal(v)
	if nil == v then return v end
	v = v:gsub("&nbsp;?", NBSP)     -- 兼容 &nbsp 和 &nbsp;
	v = v:gsub("<br%s*/?>", BR)     -- 兼容 <br> <br/> <br />
	return v
end

local function encodeVal(v)
	if nil == v then return v end
	v = v:gsub("\n", "\r")      -- ← 原来是 "<br>"，改成 "\r"
	return v
end
-- ==============================================

local function files_to_lines(...)
	local tab=setmetatable({},{__index=table})
	local index=1
	for i,filename in next,{...} do
		local fn = io.open(filename)
		if fn then
			for line in fn:lines() do
				if not line or #line > 0 then
					tab:insert(line)
				end
			end
			fn:close()
		end
	end
	
	return tab
end

local function dictload(...) -- filename)
	local lines=files_to_lines(...)
	local dict={}
	local dictkeysCnt={} --用于记录每个key的值出现的次数
	local randomNum = 0
	local thisNum = 0
	for i,line in next ,lines do
		if not line:match("^%s*#") then  -- 第一字 # 为注释行
			local keys,rawVal = string.match(line,"(.+)\t(.+)")
			if nil ~= keys and nil ~= rawVal then
				local val = decodeVal(rawVal)          -- ① 先解码
				local keyList = stringSplit(keys,' ')
				for idx=1,#keyList do
					local key = keyList[idx]
					if nil ~= key then
						if nil ~= dict[key] then
							--如果该key已经存在，
							if false then
								--等概率顶替处理
								thisNum = dictkeysCnt[key] + 1
								dictkeysCnt[key] = thisNum
								
								--生成一个伪随机数
								randomNum = math.random()
								--判断是否需要顶替
								if randomNum * thisNum < 1 then
									dict[key] = val
								end
							else
								--换行处理（统一用占位符 BR）
								dict[key] = dict[key]..BR..val
							end
						else
							dict[key] = val
							dictkeysCnt[key] = 1
						end
					end
				end
			end
		end
	end
	
	dictkeysCnt = {}  --清空dictkeysCnt，释放内存
	return dict
end

-- Module
local M={}
local dict={}
local function getVal(s)
  return encodeVal(dict[s])
end

function M.init(...)
	local files={...}
	--文件名不支持中文
	--其中 # 开始的行为注释行
	table.insert(files,"phraseComment commonPhrase.txt")
	table.insert(files,"phraseComment emoji.txt")
	table.insert(files,"phraseComment personal.txt")
	
	for i,v in next, files do
		files[i] = currentDir().."/".. v
	end
	dict= dictload(table.unpack(files))
	
	M.getVal=getVal
end

M.init()

return M