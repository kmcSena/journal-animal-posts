# どうぶつ日和 — JSON + MVC

FlutterでJSONから投稿を読み込み、一覧表示する練習アプリです。12件のどうぶつ日記をGitHub Pagesから取得します。

## 実行

```bash
flutter pub get
flutter run -d chrome
```

## 投稿JSON

公開URL: <https://kmcsena.github.io/journal-animal-posts/posts.json>

各投稿は `emoji`、`user`、`text` の3項目で構成します。ローカルのコピーは `assets/posts.json` にあります。

## MVCの役割

- `lib/model.dart`: HTTPでJSONを取得して投稿データに変換
- `lib/controller.dart`: 投稿一覧を保持
- `lib/view.dart`: 投稿一覧を画面に表示
- `lib/post.dart`: 投稿1件分のデータ
