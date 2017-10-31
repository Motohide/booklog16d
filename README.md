## はじめに
本アプリケーションは株式会社ブクログの提供しているwebサービス「ブクログ」を目コピしたものである。
http://booklog.jp/

## DB構成
#### Userモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |id|string|true||null: false, unique: true|
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


#### Productモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |||-||-|
  |||-||-|
  |||-||-|

#### Bookshelfモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |||-||-|
  |||-||-|
  |||-||-|

#### Product-Bookshelfモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |||-||-|
  |||-||-|
  |||-||-|

#### Reviewモデル
 | カラム名 | 型 | index | 外部制約|その他 |
  | :---------------: |:---------------:| :----------: | :----------: | :-------:|
  |||-||-|
  |||-||-|
  |||-||-|
