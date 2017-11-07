## はじめに
本アプリケーションは株式会社ブクログの提供しているwebサービス「ブクログ」を目コピしたものである。
作品の登録機能、本棚機能、本棚への本の登録機能、レビュー機能、ユーザー管理機能を必須の機能として実装を行う。

本データベース設計は、上述の機能の実装にあたって必要なモデルを書き出したものである。
必須機能の実装が終わり、追加機能の実装を行なって行く場合、モデルの追加・カラムの追加などの変更が行われる可能性がある。

http://booklog.jp/

## DB構成
### Userモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |mail|string|true||null: false, unique: true|
  |nickname|string|true||null: false, unique: true|
  |gender|integer|-|-|-|
  |birth_year|integer|-|-|-|
  |birth_month|integer|-|-|-|
  |birth_day|integer|-|-|-|
  |image|string|-|-|-|
  |prefecture|integer|-|-|-|
  |hometown|string|-|-|-|
  |website|string|-|-|-|
  |biography|string|-|-|-|
  |job|string|-|-|-|

#### Association
  - has_many :products, through: :bookshelf
  - has_many :bookshelfs
  - has_many :reviews

#### 備考
  - ユーザー管理機能はdeviseを用いて行う。
  - imageのアップロードはcarrierwaveを用いて行う。

### Productモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |name|string|true||null: false|
  |image|string|-|-|-|
  |author|string|-|-|null: false|
  |publisher|string|-|-|null: false|
  |release_year|integer|-|-|-|
  |release_month|integer|-|-|-|
  |release_day|integer|-|-|-|

#### Association
  - has_many :reviews
  - has_many :users, through: :bookshelfs
  - has_many :bookshelfs

#### 備考
  ・imageのアップロードはcarrierwaveを用いて行う。

### Bookshelfモデル(Product - Userの中間テーブル)
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |user_id|integer|-||-|
  |product_id|integer|-||-|

#### Association
  - belongs_to :user
  - belongs_to :product


### Reviewモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |reading_status|integer|-||null: false|
  |rate|integer|-||null: false|
  |body|string|-||null: false|
  |note|string|-|-|-|
  |public_status|integer|-|-|-|
  |spoiler_status|integer|-|-|-|
  |user_id|-|-|true|-|
  |product_id|-|-|true||

#### Association
  - belongs_to :user
  - belongs_to :product
