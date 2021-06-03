## groups テーブル

| Column | Type   | Options                   |
| ------ | ------ | ------------------------- |
| name   | string | null: false               |

### Association
- has_many :users
- has_many :cards
- has_many :shops
- has_many :prices

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false, unique: true      |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| group              | references | null: false, foreign_key: true |

### Association
- belongs_to :group

## cards テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| name         | string     | null: false                    |
| expansion_id | integer    | null: false                    |
| rarity_id    | integer    |                                |
| card_type_id | integer    | null: false                    |
| attribute_id | integer    |                                |
| group        | references | null: false, foreign_key: true |

### Association
- belongs_to :group

- has_many :prices

## shops テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| group  | references | null: false, foreign_key: true |

### Association
- belongs_to :group

- has_many :prices

## prices テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| price  | integer    | null: false                    |
| group  | references | null: false, foreign_key: true |
| card   | references | null: false, foreign_key: true |
| shop   | references | null: false, foreign_key: true |

### Association
- belongs_to :group
- belongs_to :card
- belongs_to :shop
