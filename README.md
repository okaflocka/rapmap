# README

## artistsモデル
| Column             | Type       | Options                     |
| ------------------ | ---------- | --------------------------- |
| image              | references | null: false                 |
| name               | references | null: false                 |
| genre              | references | null: false                 |
| city(state)_id     | integer    | null: false                 |


## users テーブル

| Column             | Type   | Options                     |
| ------------------ | ------ | --------------------------- |
| nickname           | string | null: false                 |
| email              | string | null: false, unique: true   |
| encrypted_password | string | null: false                 |
