# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Shops', type: :system do
  let(:shop) { create(:shop) }
  describe 'サインアップ画面' do
    context '入力値が正常な状態' do
      it 'サインアップが成功すること' do
        visit new_shop_registration_path
        fill_in 'Email', with: 'example@example.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
        click_button 'Sign up'
        expect(page).to have_content 'Welcome! You have signed up successfully.'
        expect(current_path).to eq edit_shops_info_path
      end
    end
  end
  describe 'ログイン画面' do
    context '入力値が正常な状態' do
      it 'ログインが成功すること' do
        login_as(shop)
        expect(page).to have_content 'Signed in successfully.'
        expect(current_path).to eq shops_info_path
      end
    end
  end
  describe 'ShopInfo編集画面' do
    context '入力値が正常な状態' do
      it 'ShopInfo編集が成功すること' do
        login_as(shop)
        click_link 'Edit'
        fill_in 'Email', with: shop.email
        fill_in 'Name', with: shop.name
        fill_in 'Latitude', with: shop.latitude
        fill_in 'Longitude', with: shop.longitude
        fill_in 'Address', with: shop.address
        click_button 'Update Shop'
        expect(page).to have_content 'Shop info was updated.'
        expect(current_path).to eq shops_info_path
      end
    end
  end
end
