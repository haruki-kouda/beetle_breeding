# README

# テーブル設計
## users テーブル
| Column            | Type       | Options     |
| ----------------  | ------     | ----------- |
| nickname          | string     | null: false |
| password          | string     | null: false |
| email             | string     | null: false unique: true, index:true |
| breeding_history  | string     | null: false |
| profile           | text       | null: false |
### Association
- has_many :breeds


## breeds テーブル
| Column                |  Type        |   Options   |
| ----------------------| -----------  | ----------- |
| name                  | string       | null: false |
| category_id           | integer      | null: false |
| beetle_type_id        | integer      |             |
| stag_beetle_type_id   | integer      |             |
| parent_information    | string       | null: false |
| date                  | date         | null: false |
| result                | text         |             |
| note                  | text         | null: false |
| user_id               | reference    | foreign_key: true | 
### Association 
- belongs_to :user

## 画像をアップロードする際はActive Storage Gemを用いる。