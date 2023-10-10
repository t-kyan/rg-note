require 'rails_helper'

RSpec.describe CustomerBottle, type: :model do
  describe '顧客新規登録' do
    before do
      user = FactoryBot.create(:user)
      @customer_bottle = FactoryBot.build(:customer_bottle, user_id: user.id)
      sleep(1)
    end

    context '内容に問題ない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@customer_bottle).to be_valid
      end
      it 'birth_dateが空でも保存できる' do
        @customer_bottle.birth_date = ''
        expect(@customer_bottle).to be_valid
      end
      it 'companyが空でも保存できる' do
        @customer_bottle.company = ''
        expect(@customer_bottle).to be_valid
      end
      it 'phoneが空でも保存できる' do
        @customer_bottle.phone = ''
        expect(@customer_bottle).to be_valid
      end
      it 'addressが空でも保存できる' do
        @customer_bottle.address = ''
        expect(@customer_bottle).to be_valid
      end
      it 'friendが空でも保存できる' do
        @customer_bottle.friend = ''
        expect(@customer_bottle).to be_valid
      end
      it 'serverが空でも保存できる' do
        @customer_bottle.server  = ''
        expect(@customer_bottle).to be_valid
      end
      it 'memoが空でも保存できる' do
        @customer_bottle.memo = ''
        expect(@customer_bottle).to be_valid
      end
      it 'bottle_nameが空でも保存できる' do
        @customer_bottle.bottle_name = ''
        expect(@customer_bottle).to be_valid
      end
      it 'control_numberが空でも保存できる' do
        @customer_bottle.control_number = ''
        expect(@customer_bottle).to be_valid
      end
      it 'amount_in_bottleが空でも保存できる' do
        @customer_bottle.amount_in_bottle = ''
        expect(@customer_bottle).to be_valid
      end
      it 'opening_dateが空でも保存できる' do
        @customer_bottle.opening_date = ''
        expect(@customer_bottle).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'nameが空だと保存できないこと' do
        @customer_bottle.name = ''
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Name can't be blank")
      end
      it 'name_kanaが空だと保存できないこと' do
        @customer_bottle.name_kana = ''
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Name kana can't be blank")
      end
      it 'name_kanaが全角カタカナでないと保存できないこと' do
        @customer_bottle.name_kana = 'やまだ'
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Name kana is invalid")
      end
      it 'coming_dateが空だと保存できないこと' do
        @customer_bottle.coming_date = ''
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Coming date can't be blank")
      end
      it 'phone_numberが9桁以下だと保存ができない' do
        @customer_bottle.phone = '090123456'
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Phone is invalid")
      end
      it 'phone_numberが12桁以上だと保存ができない' do
        @customer_bottle.phone = '090123456789'
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Phone is invalid")
      end
      it 'phone_numberが半角数字のみでないと保存ができない' do
        @customer_bottle.phone = '０９０５６７８１２３４'
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("Phone is invalid")
      end
      it 'userが紐付いていなければ購入できない' do
        @customer_bottle.user_id = nil
        @customer_bottle.valid?
        expect(@customer_bottle.errors.full_messages).to include("User can't be blank")
      end
    end
  end
end
