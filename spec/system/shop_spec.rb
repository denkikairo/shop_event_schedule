# frozen_string_literal: true

require 'rails_helper'

# ShopはDeviceで作成した認証用のモデル
RSpec.describe 'Shops', type: :system do
  let(:shop) { create(:shop) }
  describe 'サインアップ画面' do
    context '入力値が正常な状態' do
      it 'サインアップが成功すること' do
        visit new_shop_registration_path
        fill_in 'shop_email', with: 'example@example.com'
        fill_in 'shop_password', with: 'password'
        fill_in 'shop_password_confirmation', with: 'password'
        click_button 'Sign up'
        expect(page).to have_content 'アカウント登録が完了しました。'
        expect(current_path).to eq edit_shops_info_path
      end
    end
  end
  describe 'ログイン画面' do
    context '入力値が正常な状態' do
      it 'ログインが成功すること' do
        login_as(shop)
        expect(page).to have_content 'ログインしました。'
        expect(current_path).to eq shops_info_path
      end
    end
  end
  describe 'ShopInfo登録（編集画面）' do
    context '入力値が正常な状態' do
      it 'ShopInfoの更新が成功すること' do
        login_as(shop)
        click_link 'Edit'
        fill_in 'shop_email', with: shop.email
        fill_in 'shop_name', with: shop.name
        fill_in 'shop_latitude', with: shop.latitude
        fill_in 'shop_longitude', with: shop.longitude
        fill_in 'shop_address', with: shop.address
        click_button '更新する'
        expect(page).to have_content 'ショップ情報が更新されました'
        expect(current_path).to eq shops_info_path
      end
    end
  end
end
