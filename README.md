# README

## users

|Column             |Type   |Options                   |
|-------------------|-------|--------------------------|
|store_name         |string |null: false               |
|manager            |string |null: false               |
|email              |string |null: false, unique: true |
|encrypted_password |string |null: false               |

### Association
- has_many :customers


## customers

|Column              |Type       |Options                        |
|--------------------|-----------|-------------------------------|
|user                |references |null: false, foreign_key: true |
|name                |string     |null: false                    |
|name_kana           |string     |null: false                    |
|coming_date         |date       |null: false                    |
|birth_date          |date       |                               |
|company             |string     |                               |
|phone               |string     |                               |
|address             |text       |                               |
|friend              |string     |                               |
|server              |string     |                               |
|memo                |text       |                               |

### Association
- belongs_to :user
- has_many :bottles


## bottles

|Column              |Type       |Options                         |
|--------------------|-----------|--------------------------------|
|customer            |references |null: false, foreign_key: true  |
|bottle_name         |string     |                                |
|control_number      |integer    |unique: true                    |
|amount_in_bottle    |string     |                                |
|opening_date        |date       |                                |

### Association
- belongs_to :customer