; 第四章　観測者の死
[cm]
[bg storage="doppelganger.png" time="900"]
[font color="0x88ddff" size="38" bold="true"]第四章　観測者の死[p]
[font color="0xe8f6ff" size="26" bold="false"]
光学台の反対側に、もう一人の僕が立っていた。[p]
同じ身長、同じ白衣、同じ左手の傷。違うのは頸動脈を裂いた赤い線だけだ。[p]

[font color="0xff7777" bold="true"]もう一人の僕「僕たちは本物と偽物じゃない。一度死んだ人間の、二つの測定結果だ」[p]
[font color="0xe8f6ff" bold="false"]
一年前、僕は久世を観測椅子から引きずり出し、自分が代わりに座った。[p]
教授が測定を開始した瞬間、僕の生死は久世の生死ともつれた。[p]
世界は大学を残すため、久世の存在を消した。そして僕の死を観測できなかった。[p]

観測されなかった死は消えない。[p]
もう一人の僕は、選ばれなかった結果の中で一年間死に続けていた。[p]
焼ける世界。溺れる世界。誰にも発見されない世界。[p]
無数の死を経験するたび、彼は生きている僕の記憶を一つ奪った。[p]

だから僕は事故を忘れた。久世を忘れた。自分がすでに死んだ可能性も忘れた。[p]

[font color="0xaaddff" bold="true"]葵「先輩のどちらかを選べば、また一人が消えます。選ばなければ二人とも崩壊します」[p]
[font color="0xe8f6ff" bold="false"]
御厨教授は緊急停止キーを握っていた。[p]
停止すれば世界は最も確率の高い結果へ収束する。久世は消え、僕だけが残る。[p]
続行すれば、すべての結果が重なったまま観測者を侵食する。[p]

久世の声が天井のスピーカーから落ちてきた。[p]
[font color="0xff9999" bold="true"]久世『四つの記録があるなら、三つ目の方法を選べる』[p]
久世『装置を止めるんじゃない。観測者と結果の結びつきを切るの』[p]
[font color="0xe8f6ff" bold="false"]
デコヒーレンス。量子状態を外部環境へ拡散し、干渉できなくする現象。[p]
僕たちを一つの物語として見ている外部観測者——画面の向こうの誰かへ、選択を返す。[p]

もう一人の僕が光学台を越えて近づいた。[p]
彼の黒い眼球に、これまで選ばれなかったすべての場面が映っている。[p]

[cm]
[glink text="もう一人の自分を観測する" target="*final_observe" x="280" y="220" width="720" height="60" color="red" font_color="white" size="24"]
[glink text="教授に緊急停止を命じる" target="*final_stop" x="280" y="320" width="720" height="60" color="gray" font_color="white" size="24"]
[glink text="目を閉じ、外部の視線を探す" target="*final_refuse" x="280" y="420" width="720" height="60" color="navy" font_color="white" size="24"]
[s]

*final_observe
[eval exp="f.final_choice='observe';f.observation_count+=3"]
[cm]
[quake count="18" time="40" hmax="28" vmax="16"]
僕はもう一人の自分の眼を見た。[p]
視線が交差した瞬間、無数の死が皮膚の内側で同時に始まった。[p]
骨が折れ、肺が水で満ち、喉が裂ける。それでも次の世界の僕が目を開く。[p]
[call storage="chapter5.ks" target="*end_b"]
[return]

*final_stop
[eval exp="f.final_choice='stop';f.trust_mikuri+=1"]
[cm]
教授はキーを回した。[p]
久世の声が途切れ、葵の記憶から彼女の名前が消える。[p]
もう一人の僕は安堵したように笑い、光の粒へ崩れた。[p]
[call storage="chapter5.ks" target="*end_a"]
[return]

*final_refuse
[eval exp="f.final_choice='refuse'"]
[cm]
[if exp="f.log_count>=4"]
[call storage="chapter5.ks" target="*end_d"]
[else]
[call storage="chapter5.ks" target="*end_c"]
[endif]
[return]
