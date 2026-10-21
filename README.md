# 沒袋子的閩南語輸入方案
本方案是基於a-thok/rime-hokkien方案的修改版，主要改動如下：
## 輸入方案部分
- 刪除單字聲調，原因一是單字有所增加、維護不便；二是太卡了orz
- 聲母輸入單鍵化。原方案c-ch/ts-tsh鍵位改爲z-c；k-kh改爲k-q；t-th改爲t-v/t-th；p-ph改爲p-f/p-ph等
- 韻母輸入簡化，如oo可用w輸入、泉音-ir可用-r輸入、泉山音-eru可用-ou輸入等
- 提供鼻化韻輸入簡式。主要是將inn改爲y，如y=inn、ya=iann、enn=ey等（並不系統，-uann之類的還是只能全拼）
- 細化、改善腔口區分，如爲泉山添加-eru、爲南安添加-erk，以及對漳音-ee的映射規則做出調整
- 爲特殊單字添加額外規則，優化輸入體驗
- 優化（也可能是劣化）了schema.yaml/speller的可讀性，追加了一些文字說明
- 原方案部分訛誤處（如-uInn有的誤寫作-ng）一並予以修改
- 提供一些脫離現代核心閩南語音系的輸入方式（如強制分泥來、-uap/-uam，我自己也在用XD），供有需要者啓用：）

<img width="260" height="490" alt="image" src="https://github.com/user-attachments/assets/68bc12aa-7c60-4199-aad4-cd2a87c7b1a8" />

| IPA | 臺羅 | 鍵位 | IPA | 臺羅 | 鍵位 | IPA | 臺羅 | 鍵位 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| p | p | p | a | a | a | am | am | am |
| pʰ | ph | ph/f | i | i | i | an | an | an |
| b | b | b | u | u | u | aŋ | ang | ang |
| m | m | m | e | e | e | im | im | im |
| t | t | t | ɔ | oo | oo/w | in | in | in |
| tʰ | th | th/v | o | o | o | iŋ | ing | ing |
| n | n | n | ɨ | ir | ir/r | iam | iam | iam |
| l | l | l | ə | er | er | ian | ian | ian |
| ts | ts | z | ɛ | ee | ee | iaŋ | iang | iang |
| tsʰ | tsh | c | ai | ai | ai | iɔŋ | iong | iong |
| dz | j | j | au | au | au | un | un | un |
| s | s | s | ia | ia | ia | uan | uan | uan |
| k | k | k | iu | iu | iu | uam | uam | uam |
| kʰ | kh | q | io | io | io | uaŋ | uang | uang |
| g | g | g | iau | iau | iau | ɔŋ | ong | ong |
| ŋ | ng | ng | ua | ua | ua | ɔm | om | om |
| h | h | h | ui | ui | ui | ən | - | ern |
| 　 | 　 | 　 | ue | ue | ue | əm | - | erm |
| 　 | 　 | 　 | uɛ | uee | uee | əŋ | - | erng |
| 　 | 　 | 　 | uai | uai | uai | m̩ | m | m |
| 　 | 　 | 　 | ou | - | ou | ŋ̍ | ng | ng |
| 　 | 　 | 　 | əu | - | eru | 　 | 　 | 　 |

| IPA | 臺羅 | 鍵位 | IPA | 臺羅 | 鍵位 | IPA | 臺羅 | 鍵位 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ap | ap | ap | ãʔ | annh | annh | ã | ann | ann |
| at | at | at | ãĩʔ | ainnh | ayh | ĩ | inn | y |
| ak | ak | ak | ãũʔ | aunnh | aunnh | ẽ | enn | enn/ey |
| ip | ip | ip | ĩʔ | innh | yh | ɔ̃ | onn | onn |
| it | it | it | ĩãʔ | iannh | yah | ãĩ | ainn | ay |
| ik | ik | ik | ĩãũʔ | iaunnh | iaunnh | ãũ | aunn | aunn |
| iap | iap | iap | m̩ʔ | mh | mh | iã | iann | ya |
| iat | iat | iat | ŋ̍ʔ | ngh | ngh | iũ | iunn | yu |
| iak | iak | iak | ɔ̃ʔ | onnh | onnh | iɔ̃ | ionn | yo |
| iɔk | iok | iok | ũẽʔ | uennh | uennh | iãũ | iaunn | iaunn |
| ut | ut | ut | ũĩʔ | uinnh | uyh | uã | uann | uann |
| uat | uat | uat | uãĩʔ | uainnh | uayh | uẽ | uenn | uenn/uey |
| uap | - | uap | 　 | 　 | 　 | uĩ | uinn | uy |
| ɔk | ok | ok | 　 | 　 | 　 | uãĩ | uainn | uay |
| ət | - | ert | 　 | 　 | 　 | 　 | 　 | 　 |
| ək | - | erk | 　 | 　 | 　 | 　 | 　 | 　 |
| aʔ | ah | ah | 　 | 　 | 　 | 　 | 　 | 　 |
| iʔ | ih | ih | 　 | 　 | 　 | 　 | 　 | 　 |
| uʔ | uh | uh | 　 | 　 | 　 | 　 | 　 | 　 |
| eʔ | eh | eh | 　 | 　 | 　 | 　 | 　 | 　 |
| oʔ | oh | oh | 　 | 　 | 　 | 　 | 　 | 　 |
| ɔʔ | ooh | ooh/wh | 　 | 　 | 　 | 　 | 　 | 　 |
| ɨʔ | - | irh/rh | 　 | 　 | 　 | 　 | 　 | 　 |
| əʔ | erh | erh | 　 | 　 | 　 | 　 | 　 | 　 |
| ɛʔ | - | eeh | 　 | 　 | 　 | 　 | 　 | 　 |
| aiʔ | aih | aih | 　 | 　 | 　 | 　 | 　 | 　 |
| auʔ | auh | auh | 　 | 　 | 　 | 　 | 　 | 　 |
| iaʔ | iah | iah | 　 | 　 | 　 | 　 | 　 | 　 |
| iuʔ | iuh | iuh | 　 | 　 | 　 | 　 | 　 | 　 |
| ioʔ | ioh | ioh | 　 | 　 | 　 | 　 | 　 | 　 |
| uaʔ | uah | uah | 　 | 　 | 　 | 　 | 　 | 　 |
| uiʔ | uih | uih | 　 | 　 | 　 | 　 | 　 | 　 |
| ueʔ | ueh | ueh | 　 | 　 | 　 | 　 | 　 | 　 |
| uɛʔ | - | ueeh | 　 | 　 | 　 | 　 | 　 | 　 |
| iauʔ | iauh | iauh | 　 | 　 | 　 | 　 | 　 | 　 |
| uaiʔ | uaih | uaih | 　 | 　 | 　 | 　 | 　 | 　 |

（ps：當鼻化韻前面聲母爲n-、m-或ng-時，可省略鼻化輸入）
## 詞彙部分
- 將八股文併入dict，並予以刪減（刪除詞彙約2萬，尚未完成）
- 簡單拆分了dict（主要是將單字、共有詞彙和閩南語詞彙分開，其他部分純屬個人喜好，重新合併也無妨）
- 閩南詞略爲增加，多來自龍海話和永春話，以及從unlui上面複製的內容XD
- 爲部分常用字詞添加了數量有限的「訓讀」，以適應非閩南語正字環境
- 同時，輸入法方案中也仍保留這些訓讀字詞的正字，不喜者亦可直接將hunthak.dict.yaml刪除，影響不大

<img width="350" height="350" alt="image" src="https://github.com/user-attachments/assets/c4a0727b-9f41-4b99-b13e-ee147735e537" />

## 反查部分
- 添加了所謂d模式（本來打算用d鍵做前綴，但並沒有），與拼音反查共用「`」鍵
- d模式是基於閩南語文讀音來拆字的反查模式，長期沒更新，下次重點改這部分orz
- 該方案的schema.yaml默認用泉州音，腔口不同的用家請自行複製粘貼orz

<img width="350" height="149" alt="image" src="https://github.com/user-attachments/assets/b0c41986-9e5c-4ee2-9591-c69c77b565cb" />

## 註釋部分
- 借用「他山之石」（指別人做的lua濾鏡），用於字詞註釋，目前詞條尚少
- 主要是註明訓讀、替字，以及地名雅化，也兼有提示部分詞彙用法腔口差的功能
- 還在做

<img width="300" height="400" alt="image" src="https://github.com/user-attachments/assets/aa4726f9-16e2-440b-82b0-ef7d3377e05a" />
<img width="350" height="350" alt="image" src="https://github.com/user-attachments/assets/791b26c8-d509-47bc-aa59-7ef995c99cd7" />
<img width="400" height="400" alt="image" src="https://github.com/user-attachments/assets/029c0cdd-0d9d-40a7-8eaf-7ffc3fc7bb0e" />

## 輔助部分
- 利用table_translator功能的產物
- 核心是把「單字常用但組詞少用」的字挑出放在hutsoo裏面，使之固定在靠前位置，但又不參與組詞，以優化輸入體驗
- 例如度、予、傳這種一般單用，或組詞比較少、容易枚舉的介詞，以免打kok thoo出來「國度」這種胡亂組詞
## 閩㐎部分
- 「bangul」Neta自hangul，即閩南語（古）諺文拼音方案，爲遊戲之作，與臺諺方案有區別
- 字符顯示存在問題，尤其在輸入框上
- 不喜者可以直接將schema.yaml中dependencies和translator的bangul部分刪除

<img width="347" height="487" alt="image" src="https://github.com/user-attachments/assets/23f75a2b-441b-4168-98be-aafb8ee1be92" />


## 尚待解決的缺陷
- 統一將同一碼位的單字詞頻調整爲0—100，使得首字母簡拼輸入的詞頻比較混亂。如輸入s，「僧」、「勺」排在「是」、「先」等常用詞前面
- 帶inn的鼻化韻並未統一設置簡拼，如-iaunn、-iaunnh等並不能按-yau、-yauh打出來
- m、ng、ngh等聲化韻占用簡拼碼位，如輸入m只能顯示「毋」、「梅」等字，以m-爲聲母的漢字不顯示在輸入框中
- 腔口差的細分主要集中於泉山、漳北和泉府等若干腔口之間，對於漳南、廈門、臺灣等區域內部的方音差認知有限，因而也未作更多區分
- 最後，本人schema.yaml技術猶如🐒，代碼能力更是爲0，請大方之家不吝賜教orz
