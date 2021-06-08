class Expansion < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'VMAXスペシャルセット（イーブイ）' },
    { id: 3, name: 'イーブイヒーローズ' },
    { id: 4, name: 'ハイクラスデッキ（インテレオン）' },
    { id: 5, name: 'ハイクラスデッキ（ゲンガー）' },
    { id: 6, name: 'ジャンボパック（白銀＆漆黒）' },
    { id: 7, name: '漆黒のガイスト' },
    { id: 8, name: '白銀のランス' },
    { id: 9, name: '双璧のファイター' },
    { id: 10, name: 'プレミアムトレーナーズボックス（一撃＆連撃）' },
    { id: 11, name: '連撃マスター' },
    { id: 12, name: '一撃マスター' },
    { id: 13, name: 'スターターセットVMAX（リザードン・カメックス・フシギバナ）' },
    { id: 14, name: 'シャイニースターV' },
    { id: 15, name: 'VMAXスペシャルセット' },
    { id: 16, name: '仰天のボルテッカー' },
    { id: 17, name: '伝説の鼓動' },
    { id: 18, name: 'Vスタートデッキ' },
    { id: 19, name: 'ムゲンゾーン' },
    { id: 20, name: '爆炎ウォーカー' },
    { id: 21, name: 'スタートセットVMAX（リザードン・オーロンゲ）' },
    { id: 22, name: 'ザシアン・ザマゼンタBOX' },
    { id: 23, name: '反逆クラッシュ' },
    { id: 24, name: 'VMAXライジング' },
    { id: 25, name: 'シールド' },
    { id: 26, name: 'ソード' },
    { id: 27, name: 'ソード＆シールド スターターセットV' },
    { id: 28, name: 'プロも' },
    { id: 29, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end