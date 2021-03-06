# アプリケーション名	
	price-share

# アプリケーション概要
	商品（中古トレカ）の価格を「メモ・共有」できるアプリケーションを作成しました。

	「ユーザー」を作成をすると、「グループ」が作成できます。
	「ユーザー」は作成した「グループ」か既存の「グループ」に所属できます。
	「グループ」に所属した「ユーザー」は「カード」と「店舗」と「価格」を作成することができます。
		ただし、「価格」は「カード」と「店舗」を紐付けないと作成できません。
	「ユーザー」は既に作成されている「価格」を編集することができます。
		「ユーザー」は自分以外が作成した「価格」も編集が可能です。

# URL
	http://3.128.144.209/

# テスト用アカウント
	Email: masumoto1234@com
	Password: masumoto1234

# 利用方法
	実店舗を訪れ、自身の購入したい商品の価格を確認します。
	確認した商品の価格をアプリケーションに登録します。
		または、既に登録されている商品の価格を更新します。
	他店舗の同一商品と価格を比較し、希望する価格の商品を実店舗で購入します。

# 目指した課題解決

## ペルソナ
	20~40代のトレーディングカードゲームを趣味とする会社員です。

## 前提
	対戦型のトレーディングカードゲームでは、自分の好きなカードを組み合わせたデッキを作成します。
	デッキに入れたいカードがある場合、入手方法は主に２通りあります。
		１．パックをメーカー小売希望価格の定価で自分の欲しいカードが出るまで購入する。
			※パックに入っているカードは、ランダムです。
		２．カード専門店に行き、自分の欲しいカードを欲しいだけ購入する。
			※カード専門店では、パックから開封されたカードなどがバラ売りされており、カードの強さや需要に応じて、お店側が価格が付けている。
	目的に応じて、入手方法の選択は異なりますが、多くのユーザーが２の方法を活用しています。

## 課題
	中古品の販売事情から、実店舗での販売価格はインターネットなどで公式には公開されていません。
		※特に価格が１日単位で変動することが大きい
	また、店舗により商品の価格が異なます。
	商品を安く購入したいユーザーは、店舗ごとの商品の価格を比較するために、複数店舗を訪れる手間が生じます。
	この課題を解決しようと考えたのが今回のcard_price_appです。

## アプリを作成するにあたって配慮した点
	想定した解決したい課題から考えると、誰もが「価格」を作成・編集し、その「価格」を共有できる機能は必須です。
	その為、不特定多数のユーザーで情報を共有することが課題になります。
	具体的な懸念事項としては、悪意のあるユーザーが虚偽の価格を更新することを考えました。
	これに対して、グループ機能を作成し、特定のユーザー同士でのみ価格を共有できるようにします。
	さらに承認機能を実装できれば、実用的になるかと考えています。

# 洗い出した要件
	価格登録機能
	カード登録機能
	店舗登録機能
	ユーザー登録機能
	グループ登録機能
	グループ承認機能

# 実装した機能についての画像やGIFおよびその説明
  トップページ
	https://i.gyazo.com/9a5763d71c2e2940a8295705c0ee16bb.png
	価格登録機能
	https://gyazo.com/645c2be654545c3526b30b2abcfbcd86
	価格編集機能
	https://gyazo.com/331e89bc8eb47278aa534a422a2f966a

# 実装予定の機能
	グループ承認機能

# データベース設計
・前提
	言語：Ruby
	フレームワーク：ruby on rails
	バージョン管理：gitHub
	デプロイするサーバー：AWS

・効率的な開発
	Gem：devise, ActiveHash

## groups テーブル

| Column | Type   | Options                   |
| ------ | ------ | ------------------------- |
| name   | string | null: false               |

### Association
- has_many :users
- has_many :cards
- has_many :shops
- has_many :prices

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

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false, unique: true      |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| group              | references | null: false, foreign_key: true |

### Association
- belongs_to :group
