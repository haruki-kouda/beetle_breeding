# README

## アプリケーション名    Beetle_Breeding
![Nov-25-2020 08-42-09](https://user-images.githubusercontent.com/71618264/100164053-6cfaa780-2efa-11eb-8912-98a6e56f940e.gif)
## アプリケーション概要
飼育情報を画像付きで投稿でき、投稿内容を編集・削除できる。また現段階では外部サイトのスプレッドシートを使用してより細かな飼育管理が可能です。
## アプリケーションを作成した背景
５年以上外国産のカブトムシ・クワガタを趣味で飼育してますが、情報の多い飼育データーを１つにまとめられるアプリケーションがなかったので効率化を目指し、自身が使用する目的で作成してみました。今後は同じ趣味を持った方々も利用できるように機能を追加実装してく予定です。最終的にはカブトムシ・クワガタ飼育をしたことが無い方でもこのWEBサイト１つで飼育方法を学べるようにしたいと思います。
## URL
https://beetle-breeding-app.herokuapp.com/
## テスト用アカウント
アカウント    アドレス:beetle@yahoo.co    パスワード:111qqq    nickname:太郎くん
## 利用方法
ユーザー登録を行い、飼育情報の登録を行います。投稿した飼育情報を飼育状況により、編集・削除が可能です。
## 洗い出した要件
| 優先順位 | 機能   | 目的   | 詳細   | ストーリー  | 
| -- | -- | -- | -- | -- | 
|大| ユーザー管理機能 | ユーザーのログイン機能 | ユーザーがログインしている場合としていない場合で機能の制限をつけるため |・ユーザーを登録をしないと多くの機能が使用できない状況になっている。|
|大| ユーザーの詳細機能 | ユーザーの詳細情報と投稿した内容の一覧表示させる為 | ユーザー詳細情報と投稿した内容の一覧表示をする事で今までの投稿内容をまとめる機能 | ・ユーザー登録を行っていてログインしている事、かつ投稿している事が前提<br>・ユーザーの詳細情報と自身が投稿した一部の投稿内容が一覧表示されている<br>・投稿画像をクリックすると投稿内容の詳細ページに遷移する 
|大| 投稿機能 | 飼育情報を投稿する為 | 指定された項目に沿って、投稿する事で飼育情報の内容を投稿できる機能 | ・ユーザー登録を行っていてログインしている事が前提  <br>・ヘッダーにあるNEW　BREEDをクリックすると、投稿ページへ遷移する  <br>・投稿した内容はユーザーの詳細機能またより細かい内容は詳細ページに表示されるようになっている。 
|大| 投稿内容の詳細機能 | 投稿した内容の詳細が表示でき、編集・削除機能がおこなえるようにする為 | 投稿した内容の詳細が表示でき、編集・削除機能がおこなる機能 | ・ユーザー登録を行っていてログインしている事、かつ投稿している事が前提<br>・ユーザー詳細ページにある投稿画像をクッリックすると投稿内容の詳細ページに遷移する <br>・投稿の詳細ページには編集・削除できる機能がついている。
|大| 投稿内容の編集機能 | 投稿した内容を編集する為 | 投稿した内容を今後編集する必要がある為、特定の項目のみ編集できるようになっている機能 | ・ユーザー登録を行っていてログインしている事、かつ投稿している事が前提<br>・投稿の詳細ページにて自身が投稿した投稿をあらかじめ設定された項目のみ編集する事ができる。
|中| 投稿内容の削除機能 | 投稿した内容を削除する為 | 不必要になった投稿を削除できるようにする機能 | ・ユーザー登録を行っていてログインしている事、かつ投稿している事が前提<br>・投稿の詳細ページにて自身が投稿した投稿を削除する事ができる。

## 実装した機能についての画像と説明
### ユーザー管理機能
![Nov-25-2020 11-13-37](https://user-images.githubusercontent.com/71618264/100174213-57dc4380-2f0f-11eb-8d2e-cf075901d5e2.gif)
### ユーザーのマイページ・飼育情報の投稿機能　・投稿した情報の編集・削除機能
![Nov-25-2020 11-08-25](https://user-images.githubusercontent.com/71618264/100173851-a9d09980-2f0e-11eb-9be5-9a914d30e166.gif)
## 今後実装予定の機能
No.1 他ユーザーの投稿内容が見れるような投稿一覧ページを作成。<br>No.2 より細かな飼育データー（現状スプレッドシートで対応している飼育情報）が保存できるように新たなテーブルの作成。<br>No.3 また他ユーザーの投稿内容に関してコメントできる機能を実装。<br>No.4 静的のページの作成。
## データベース設計
![image](https://user-images.githubusercontent.com/71618264/98806549-b52abc00-245c-11eb-84c6-a1732794ca22.png)

# テーブル設計
## users テーブル
| Column            | Type       | Options     |
| ----------------  | ------     | ----------- |
| nickname          | string     | null: false |
| password          | string     | null: false |
| email             | string     | null: false unique: true, index:true |
|breeding_history | string  | null: false |
| profile           | text       | null: false |
### Association
- has_many :breeds

## breeds テーブル
| Column                |  Type        |   Options   |
| ----------------------| -----------  | ----------- |
| name                  | string       | null: false |
| category_id           | integer      | null: false |
|beetle_type_id        | integer      |             |
| stag_beetle_type_id   | integer      |             |
| parent_information    | string       | null: false |
| date                  | date         | null: false |
| result                | text         |             |
| note                  | text         | null: false |
| user_id               | reference    | foreign_key: true | 
### Association 
- belongs_to :user

## 画像をアップロードする際はActive Storage Gemを用いる。
