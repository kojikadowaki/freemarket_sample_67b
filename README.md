# README
# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true, index: true|
|password|integer|null: false|
### Association
- has_many :products, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :orders, dependent: :destroy
- has_one :profile, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :shipping_address, dependent: :destroy

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|avatar|string|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## credit_cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user

### shipping-addressesテーブル
|Column|Type|Options|
|------|----|-------|
|address_first_name|string|null: false|
|address_family_name|string|null: false|
|address_first_name_kana|string|null: false|
|address_family_name_kana|string|null: false|
|post_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_number|string|null: false|
|building_name|string|
|phone_number|string|unique: true|
|user_id|references|null: false, foreign_key: true|
#### Association
- belongs_to :user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|description|text|null: false|
|size_id|references|null: false, foreign_key: true|
|ship_from_location_id|references|null: false, foreign_key: true|
|product_condition_id|references|null: false, foreign_key: true|
|derivery_fee_payer_id|references|null: false, foreign_key: true|
|derivery_day_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
### Association
- has_many :comments, dependent: :destroy
- has_many :product_images, dependent: :destroy
- belongs_to :user
- belongs_to :size
- belongs_to :ship_from_location
- belongs_to :product_condition
- belongs_to :derivery_fee_payer
- belongs_to :derivery_day
- belongs_to :category
- has_one :order, dependent: :destroy

## product_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|url|string|null: false|
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to :product

## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|
### Association
- has_many :products, dependent: :destroy
- has_many :categories, through: :category_sizes
- has_many :category_sizes, dependent: :destroy

## ship_from_locationsテーブル
|Column|Type|Options|
|------|----|-------|
|ship_from_location|string|null: false|
### Association
- has_many :products, dependent: :destroy

## product_conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|product_condition|string|null: false|
### Association
- has_many :products, dependent: :destroy

## derivery_fee_payersテーブル
|Column|Type|Options|
|------|----|-------|
|derivery_fee_payer|string|null: false|
### Association
- has_many :products, dependent: :destroy

## derivery_daysテーブル
|Column|Type|Options|
|------|----|-------|
|derivery_day|integer|null: false|
### Association
- has_many :products, dependent: :destroy

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|
### Association
- has_many :products, dependent: :destroy
- has_many :sizes, through: :category_sizes
- has_many :category_sizes, dependent: :destroy

## category_sizesテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false, foreign_key: true|
|size_id|references|null: false, foreign_key: true|
### Association
- belongs_to :category
- belongs_to :size

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :product

## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to: user
- belongs_to: product

# git push確認用


下に自分の名前を追記してmasterブランチへpush

* 南條孝太朗
* 門脇光志
* 岡安海渡
* 柏木翔大
* 坂本紗也華