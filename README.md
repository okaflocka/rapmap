# README

# 機能:Spotifyから取得したアーティストと出身地を紐づけて保存するアプリケーション。

# テーブル設計

## artistsモデル
| Column             | Type       | Options                     |
| ------------------ | ---------- | --------------------------- |
| image              | string     | null: false                 |
| name               | string     | null: false                 |
| genre              | string     | null: false                 |
| spotify_link       | string     | null: false                 |
| comment            | text       | null: false                 |
| city(state)_id     | integer    | null: false                 |

### Association
- belongs_to :user


## users テーブル
| Column             | Type     | Options                     |
| ------------------ | -------- | --------------------------- |
| nickname           | string   | null: false                 |
| email              | string   | null: false, unique: true   |
| encrypted_password | string   | null: false                 |

### Association
- has_many :artists