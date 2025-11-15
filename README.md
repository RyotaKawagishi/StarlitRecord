# 星屑レコード / Starlit Record

3分で読了できる短編ノベルゲーム。ティラノスクリプト Ver.4 を用い、3回の二択で True / Good / Bad の3種類のエンディングに分岐します。

## プレイ
- Web: [GitHub Pages 版](https://ryotakawagishi.github.io/StarlitRecord/)
- ローカル確認: `docs/index.html` をブラウザで開く

## 物語概要
夜のスタジオで兄の遺したレコーダーを解析する若きエンジニア「カナト」が主人公。サポートAI「レミィ」とのやり取りの中で、失われた真実に迫るか、諦めて記録を破棄するかをプレイヤーが選びます。

フロー: 導入 → 選択1（信頼/疑念）→ 急展開 → 選択2（書き換え/保留）→ うまくいかず粘る → 選択3（真実/妥協/破棄）→ エンディング3種。フラグ `flagA`/`flagB` を用いて条件分岐を管理しています。

## ファイル構成
- `docs/data/scenario/first.ks` : 本編スクリプト（ラベル・選択肢・エンディングを記述）
- `docs/data/bgimage/*.png` : 背景画像（`run.png`, `studio.png`, `server.png`, `sleep.png`, `void.png`）
- `docs/tyrano` : TyranoScript 本体
- `docs/index.html` : テストプレイ用エントリーポイント

## タグ・実装メモ
- `[bg storage=***.png time=500]` でシーン切り替えを演出
- `[link]` / `[endlink]` で2択メニューを表示
- フラグ管理は `[eval exp="f.flagA=true"]` のように `tstorage.f` を使用
- エンディング後は `[jump target=*start]` でタイトルへ戻り周回可能

## ライセンスと素材
- `first.ks` 内のスクリプトは CC0
- TyranoScript 本体は [公式ライセンス](https://tyrano.jp/) に従う
- `docs/data/bgimage` 配下の PNG は本プロジェクト向けに作成・配置された素材です。再利用時は各素材の権利表記や配布元ポリシーに従ってください。
