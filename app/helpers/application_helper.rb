module ApplicationHelper
  def days_since_opening(opening_date)
    return unless opening_date
    # 現在の日付を取得
    current_date = Date.today
    # 開封日と現在の日付の差を計算
    days_difference = (current_date - opening_date).to_i
    # 経過日数を返す
    days_difference
  end
end
