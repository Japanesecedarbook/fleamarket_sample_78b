class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :first_name, format: {
    with: /\A[ぁ-んァ-ン一-龥]/,
    message: "は全角ひらがな、カタカナ、漢字で入力して下さい"
  }, allow_blank: true
  validates :first_name, presence: true

  validates :last_name, format: {
    with: /\A[ぁ-んァ-ン一-龥]/,
    message: "は全角ひらがな、カタカナ、漢字で入力して下さい"
  }, allow_blank: true
  validates :last_name, presence: true

  validates :first_name_kana, format: {
    with: /\A[ァ-ヶー－]+\z/,
    message: "は全角カタカナで入力して下さい"
  }, allow_blank: true
  validates :first_name_kana, presence: true

  validates :last_name_kana, format: {
    with: /\A[ァ-ヶー－]+\z/,
    message: "は全角カタカナで入力して下さい"
  }, allow_blank: true
  validates :last_name_kana, presence: true

  enum prefecture:{
    "   ":"   ",
    北海道:"北海道",青森県:"青森県",岩手県:"岩手県",宮城県:"宮城県",秋田県:"秋田県",山形県:"山形県",福島県:"福島県",
    茨城県:"茨城県",栃木県:"栃木県",群馬県:"群馬県",埼玉県:"埼玉県",千葉県:"千葉県",東京都:"東京都",神奈川県:"神奈川県",
    新潟県:"新潟県",富山県:"富山県",石川県:"石川県",福井県:"福井県",山梨県:"山梨県",長野県:"長野県",
    岐阜県:"岐阜県",静岡県:"静岡県",愛知県:"愛知県",三重県:"三重県",
    滋賀県:"滋賀県",京都府:"京都府",大阪府:"大阪府",兵庫県:"兵庫県",奈良県:"奈良県",和歌山県:"和歌山県",
    鳥取県:"鳥取県",島根県:"鳥取県",岡山県:"岡山県",広島県:"広島県",山口県:"山口県",
    徳島県:"徳島県",香川県:"香川県",愛媛県:"愛媛県",高知県:"高知県",
    福岡県:"福岡県",佐賀県:"佐賀県",長崎県:"長崎県",熊本県:"熊本県",大分県:"大分県",宮崎県:"宮崎県",鹿児島県:"鹿児島県",沖縄県:"沖縄県"
  }
  
  validates :post_code, format: {
    with: /\A\d{7}\z/,
    message: "はハイフンなし7桁で入力して下さい"
  }, allow_blank: true
  validates :post_code, presence: true

  validates :prefecture, presence: true
  validates :city, presence: true
  validates :house_number, presence: true

end
