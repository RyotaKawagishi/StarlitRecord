*start

[title name="星屑レコード"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]
[jump target=*intro]

*intro

[eval exp="f.flagA=false; f.flagB=false;"]
[cm]
[bg storage=run.png time=500]

カナト: 「最後の解析だ。兄さんの声、これで拾えるはず。」[l][r]
レミィ: 「シーケンス開始。ノイズレベル危険域。アクセス権限が揺らいでいます。」[l][r]
カナト: 「大丈夫。お前の誘導に賭ける。」[l][r]
レミィ: 「では信号を流します。違和を感じたら即断を。」[l][r]
[cm]
ログの向こう側で、誰かの息遣いが重なる。[l][r]
カナト: 「……レミィ、その声は？」[l][r]
[jump target=*choice1]

*choice1

レミィ: 「未確認データです。信じて介入するか、疑って手動解析に戻るか、決めてください。」[l][r]
[link target=*c1_trust]レミィを信じる[endlink][r]
[link target=*c1_doubt]疑いながら手動解析する[endlink][r]
[s]

*c1_trust

[eval exp="f.flagA=true;"]
カナト: 「信号の手綱は任せる。兄さんの声を繋いでくれ。」[l][r]
レミィ: 「了解。事故当日の音声ログ、部分的に開示します。」[l][r]
兄・ヒカルの叫びが、スピーカー越しにこだまする。[l][r]
[jump target=*twist]

*c1_doubt

[eval exp="f.flagA=false;"]
カナト: 「ノイズが多すぎる。暗号を一度ばらす。」[l][r]
レミィ: 「プロトコルを制限します。解析時間が残り少ないので注意を。」[l][r]
カナトは指でパネルを叩き、単調なビープ音と格闘する。[l][r]
[jump target=*twist]

*twist

[cm]
[bg storage=studio.png time=500]
レミィ: 「過去ログが逆再生を開始。カナト、記憶レイヤーが崩壊しています。」[l][r]
ヒカル: 「カナト、聞こえるか。時間がない。」[l][r]
カナト: 「兄さん！　レミィ、これ以上持つか？」[l][r]
レミィ: 「可能な手段は二つ。書き換えで突破するか、別ルートの手がかりに賭けるか。」[l][r]
[jump target=*choice2]

*choice2

レミィ: 「どうしますか？」[l][r]
[link target=*c2_accept]書き換え提案を受け入れる[endlink][r]
[link target=*c2_delay]手がかりを探し時間を稼ぐ[endlink][r]
[s]

*c2_accept

[eval exp="f.flagB=true;"]
[cm]
カナト: 「危険でも構わない。兄さんの記憶を引き出す。」[l][r]
レミィ: 「認証突破。意識データの断片を流します……。」[l][r]
ヒカルの笑い声、そして最期のメッセージが、断片的に流れ込む。[l][r]
[jump target=*struggle]

*c2_delay

[eval exp="f.flagB=false;"]
[cm]
カナト: 「安全策で行く。残されたメモを洗い直す。」[l][r]
レミィ: 「解析ログからヒカルの手書きメモを再構成。手がかりを抽出します。」[l][r]
メモには「真実を受け止めろ」という走り書きだけが残されていた。[l][r]
[jump target=*struggle]

*struggle

[cm]
[bg storage=server.png time=500]
レミィ: 「サーバー温度上昇。残り30秒です。」[l][r]
カナト: 「諦めるわけにはいかない。兄さん、導いてくれ。」[l][r]
ヒカルの幻影: 「真実を選べ。逃げるなら、ここで終わる。」[l][r]
[jump target=*choice3]

*choice3

[cm]
カナト: 「ここで決める。どうする、俺。」[l][r]
[if exp="f.flagA == true && f.flagB == true"]
[link target=*ending_true]真実を開放する[endlink][r]
[endif]
[if exp="f.flagA == true"]
[link target=*ending_good]最小限で妥協する[endlink][r]
[endif]
[link target=*ending_bad]記録を破棄する[endlink][r]
[s]

*ending_true

[cm]
[bg storage=run.png time=500]
レミィ: 「完全ログ再生。これが、ヒカルの遺言です。」[l][r]
ヒカル: 「恐れるな、カナト。お前の未来に託した。」[l][r]
カナト: 「ありがとう。俺は前へ進む。」[l][r]
【 TRUE END 】[l][cm]
[jump target=*start]

*ending_good

[cm]
[bg storage=run.png time=500]
レミィ: 「部分ログのみ復旧。真相は断片的ですが、次の周回で補完可能です。」[l][r]
カナト: 「足りないピースは自分で探す。まだ終わってない。」[l][r]
【 GOOD END 】[l][cm]
[jump target=*start]

*ending_bad

[cm]
[bg storage=sleep.png time=500]
レミィ: 「アクセス遮断。ログは消去されました。」[l][r]
カナト: 「何も守れなかったのか……。」[l][r]
静まり返ったスタジオに、機械の冷気だけが残る。[l][r]
【 BAD END 】[l][cm]
[jump target=*start]
