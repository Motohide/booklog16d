## はじめに
本アプリケーションは株式会社ブクログの提供しているwebサービス「ブクログ」を目コピしたものである。
http://booklog.jp/

## DB構成
### Userモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |mail|string|true||null: false, unique: true|
  |gender|integer|-|||
  |birth_year|integer|-|||
  |birth_month|integer|-|||
  |birth_day|integer|-|||
  |image|string||||
  |prefecture|integer||||
  |hometown|string||||
  |website|string||||
  |bio|string||||
  |job|string||||
  |nickname|string|true||null: false, unique: true|

## Association


### Productモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |name|string|true||null: false|
  |image|string|-||-|
  |author|string|-||null: false|
  |publisher|string|||null: false|

## Association

### Bookshelfモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |user_id||-||-|
  |product_id||-||-|

## Association

### Reviewモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |reading_status|integer|-||null: false|
  |rate|integer|-||null: false|
  |body|string|-||null: false|
  |note|string||||
  |public_status|integer||||
  |spoiler_status|integer||||

## Association
