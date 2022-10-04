# README

# 機能:Spotifyから取得したアーティスト情報と、そのアーティストの出身地を紐づけて管理するアプリケーション。
# 目的：地域ごとの音楽性の違いを一覧化し、レコメンデーションに活用。

# テーブル設計

## artistsモデル
| Column             | Type       | Options                     |
| ------------------ | ---------- | --------------------------- |
| image              | string     | null: false                 |
| name               | string     | null: false                 |
| genre              | string     | null: false                 |
| spotify_link       | text       | null: false                 |
| state_id           | integer    | null: false                 |

### Association
- belongs_to :state
- belongs_to :user

## mapsモデル
| Column             | Type       | Options                     |
| ------------------ | ---------- | --------------------------- |
| state_name         | string     | null: false                 |
| state_code         | string     | null: false                 |

### Association
- has_many ：artists

## users テーブル
| Column             | Type     | Options                     |
| ------------------ | -------- | --------------------------- |
| nickname           | string   | null: false                 |
| email              | string   | null: false, unique: true   |
| encrypted_password | string   | null: false                 |

### Association
- has_many :artists