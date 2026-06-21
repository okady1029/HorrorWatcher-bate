; 第一章　観測開始
[cm]
[bg storage="lab_clean.png" time="1200"]
[layopt layer="message0" visible="true"]
[position layer="message0" page="fore" left="55" top="500" width="1170" height="185" color="0x020811" opacity="215" marginl="35" margint="22" marginr="35" marginb="20"]
[font color="0xe8f6ff" size="26" face="sans-serif"]

[font color="0x88ddff" size="38" bold="true"]第一章　観測開始[p]
[font color="0xe8f6ff" size="26" bold="false"]
午前二時十三分。東都工科大学、量子光学棟地下三階。[p]
雨粒が窓を叩くたび、検出器の緑色の数字が一つずつ増えた。[p]
僕、水城透は光学台の前で、十二時間目の測定を続けていた。[p]

二重スリットを通った光子は、誰にも見られていない間だけ波として振る舞う。[p]
左右どちらの隙間を通ったか調べれば、干渉縞は消え、粒子として一つの経路に決まる。[p]
御厨教授はそれを「世界が観測者へ差し出す領収書」と呼んだ。[p]

『観測とは、見ることではない。結果を世界に残すことだ』[p]
教授の口癖を思い出しながら、僕は記録端末へ時刻を入力した。[p]
その瞬間、僕が触れていないキーボードが一度だけ沈んだ。[p]

白衣のポケットでスマホが二度震えた。圏外の表示の横で、時刻だけが02:13と02:12を往復している。[p]
[eval exp="quantumPhone.receive('c1_warning','久世真琴','画面を見ないで。あなたが読んだ文章が、次の現実になる。','02:13',true)"]
削除した覚えのない連絡先——久世真琴。通知を開く前から、僕はその文面を知っていた。[p]

[font color="0xff8888" bold="true"]02:13:07　観測者：久世真琴[p]
[font color="0xe8f6ff" bold="false"]
久世真琴。僕と同じ研究班にいたはずの名前。[p]
けれど研究室の名簿にも、学生証の記録にも、そんな人物は存在しない。[p]
それなのに僕は彼女の声を知っていた。笑うとき左手で口元を隠す癖も知っていた。[p]

背後の自動扉が開き、篠宮葵が濡れた傘を抱えて飛び込んできた。[p]
[font color="0xaaddff" bold="true"]葵「先輩、まだ実験していたんですか。教授から中止命令が出ています」[p]
[font color="0xe8f6ff" bold="false"]
学部四年の葵は、いつもより青い顔で検出器を見た。[p]
僕が久世の名を口にすると、彼女は一拍だけ息を止めた。[p]

[font color="0xaaddff" bold="true"]葵「その名前を、どこで？」[p]
[font color="0xe8f6ff" bold="false"]
知らない人間の反応ではなかった。[p]
問い詰めようとしたとき、壁のスピーカーから御厨教授の声が流れた。[p]

[font color="0xddbb88" bold="true"]御厨『水城君。検出器を切りたまえ。画面を見てはいけない』[p]
[font color="0xe8f6ff" bold="false"]
教授は大学から二十キロ離れた国際会議場にいるはずだった。[p]
監視カメラの映像には、教授がこの棟の制御室でマイクを握る姿が映っている。[p]

端末には三つの測定結果が同時に表示された。[p]
結果A。久世真琴は一年前の事故で死亡。[p]
結果B。久世真琴は生存し、水城透が死亡。[p]
結果C。事故そのものが発生していない。[p]

どの結果にも、現在時刻の署名があった。[p]
葵は僕の袖をつかみ、画面から目をそらせようとした。[p]

[cm]
[glink text="葵を信じて検出器を切る" target="*c1_aoi" x="300" y="275" width="680" height="64" color="navy" font_color="white" size="25"]
[glink text="教授の映像へ呼びかける" target="*c1_prof" x="300" y="375" width="680" height="64" color="gray" font_color="white" size="25"]
[s]

*c1_aoi
[eval exp="f.trust_aoi+=1"]
[eval exp="quantumPhone.receive('c1_aoi','篠宮 葵（明日）','その判断で合っています。でもスマホの電源は切らないで。久世先輩への唯一の線です。','明日 02:13',false)"]
[cm]
電源を落とすと、干渉縞は消えた。[p]
だが暗くなった画面の反射には、僕と葵の間に白衣姿の女が立っていた。[p]
葵は見えていないふりをした。震える指だけが、嘘を告白していた。[p]
[jump target="*c1_join"]

*c1_prof
[eval exp="f.trust_mikuri+=1;f.observation_count+=1"]
[eval exp="quantumPhone.receive('c1_prof','御厨教授','私から着信があっても出るな。今夜、私は君へ電話していない。','未送信',false)"]
[cm]
僕は監視カメラへ教授の名を呼んだ。[p]
映像の教授はこちらを向いたが、唇の動きと声が三秒ずれていた。[p]
[font color="0xddbb88" bold="true"]御厨『返事をしてはいけない。そこに映っている私は、明日の私だ』[p]
[font color="0xe8f6ff" bold="false"]
その直後、映像の教授の背後から血まみれの僕が現れ、カメラへ顔を押しつけた。[p]
[jump target="*c1_join"]

*c1_join
[cm]
実験室の時計が二時十三分で止まった。[p]
葵の腕時計も、僕の携帯も同じ時刻を示す。秒針だけが逆向きに動いている。[p]
[eval exp="quantumPhone.receive('c1_self','水城 透','三つの通知のうち、一つは死んだ僕が送った。どれかは僕にも分からない。','02:13',false)"]
非常扉が解錠され、廊下の奥で資料室の灯りが点いた。[p]

葵は小さな鍵を差し出した。タグには「QO-13」と刻まれている。[p]
[font color="0xaaddff" bold="true"]葵「久世先輩は、存在しなかったんじゃありません。存在した結果が消されたんです」[p]
[font color="0xe8f6ff" bold="false"]
彼女は一年前の事故当日、この棟で何かを見た。[p]
しかし話せば、その記憶まで観測される。そう言って口を閉ざした。[p]

僕たちは実験室を出た。[p]
扉が閉まる直前、無人の光学台から女の声がした。[p]
[font color="0xff7777" size="30" bold="true"]「四つの記録を集めて。そうすれば、殺されなかった世界を選べる」[p]
[font color="0xe8f6ff" size="26" bold="false"]
[call storage="chapter2.ks"]
[return]
