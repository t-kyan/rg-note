FactoryBot.define do
  factory :customer_bottle do
    name { '鈴木' }
    name_kana { 'スズキ' }
    coming_date{ '2023/10/10' }
    birth_date{ '01/10' }
    company{ '株式会社jojo' }
    phone{ '09098765432' }
    address{ '東京都1-1東洋ハイツ' }
    friend { '佐藤' }
    server{ '後藤' }
    memo { 'キュウリが苦手' }
    bottle_name { 'ウィスキー' }
    control_number { '1' }
    amount_in_bottle { '1/2' }
    opening_date { '2023/05/05' }
  end
end
