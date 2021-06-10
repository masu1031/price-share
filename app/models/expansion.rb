class Expansion < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'VMAXSPセット' },
    { id: 3, name: 'イーブイヒーローズ' },
    { id: 4, name: 'ハイクラスデッキ(イ)' },
    { id: 5, name: 'ハイクラスデッキ(ゲ)' },
    { id: 6, name: 'ジャンボパック' },
    { id: 7, name: '漆黒のガイスト' },
    { id: 8, name: '白銀のランス' },
    { id: 9, name: '双璧のファイター' },
    { id: 10, name: 'PTBox（一撃＆連撃）' },
    { id: 11, name: '連撃マスター' },
    { id: 12, name: '一撃マスター' },
    { id: 13, name: 'スターターセットVMAX' },
    { id: 14, name: 'シャイニースターV' },
    { id: 15, name: 'VMAXスペシャルセット' },
    { id: 16, name: '仰天のボルテッカー' },
    { id: 17, name: '伝説の鼓動' },
    { id: 18, name: 'Vスタートデッキ' },
    { id: 19, name: 'ムゲンゾーン' },
    { id: 20, name: '爆炎ウォーカー' },
    { id: 21, name: 'スタートセットVMAX' },
    { id: 22, name: 'ザシアン・ザマゼンタBOX' },
    { id: 23, name: '反逆クラッシュ' },
    { id: 24, name: 'VMAXライジング' },
    { id: 25, name: 'シールド' },
    { id: 26, name: 'ソード' },
    { id: 27, name: 'スターターセットV' },
    { id: 28, name: 'プロモ' },
    { id: 29, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end