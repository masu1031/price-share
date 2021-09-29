class Expansion < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'フュージョンアーツ' },
    { id: 3, name: 'V-UNION' },
    { id: 4, name: '蒼空ストリーム' },
    { id: 5, name: '摩天パーフェクト' },
    { id: 6, name: 'ファミリーポケカ' },
    { id: 7, name: 'VMAXSPセット' },
    { id: 8, name: 'イーブイヒーローズ' },
    { id: 9, name: 'ハイクラスデッキ(イ)' },
    { id: 10, name: 'ハイクラスデッキ(ゲ)' },
    { id: 11, name: 'ジャンボパック' },
    { id: 12, name: '漆黒のガイスト' },
    { id: 13, name: '白銀のランス' },
    { id: 14, name: '双璧のファイター' },
    { id: 15, name: 'PTBox（一撃＆連撃）' },
    { id: 16, name: '連撃マスター' },
    { id: 17, name: '一撃マスター' },
    { id: 18, name: 'スターターセットVMAX' },
    { id: 19, name: 'シャイニースターV' },
    { id: 20, name: 'VMAXスペシャルセット' },
    { id: 21, name: '仰天のボルテッカー' },
    { id: 22, name: '伝説の鼓動' },
    { id: 23, name: 'Vスタートデッキ' },
    { id: 24, name: 'ムゲンゾーン' },
    { id: 25, name: '爆炎ウォーカー' },
    { id: 26, name: 'スタートセットVMAX' },
    { id: 27, name: 'ザシアン・ザマゼンタBOX' },
    { id: 28, name: '反逆クラッシュ' },
    { id: 29, name: 'VMAXライジング' },
    { id: 30, name: 'シールド' },
    { id: 31, name: 'ソード' },
    { id: 32, name: 'スターターセットV' },
    { id: 33, name: 'プロモ' },
    { id: 34, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end