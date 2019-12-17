# frozen_string_literal: true

require 'rails_helper'

# ShopはDeviceで作成した認証用のモデル
RSpec.describe 'Events', type: :system do
  let(:event) { create(:event) }
  describe 'イベント登録' do
    context '入力値が正常な状態' do
      it 'イベント登録が成功すること' do
        visit shops_events_path
        fill_in 'Email', with: 'example@example.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
        click_button 'Sign up'
        expect(page).to have_content 'Welcome! You have signed up successfully.'
        expect(current_path).to eq edit_events_info_path
      end
    end
  end
  describe 'ログイン画面' do
    context '入力値が正常な状態' do
      it 'ログインが成功すること' do
        login_as(event)
        expect(page).to have_content 'Signed in successfully.'
        expect(current_path).to eq events_info_path
      end
    end
  end
  describe 'ShopInfo登録（編集画面）' do
    context '入力値が正常な状態' do
      it 'ShopInfoの更新が成功すること' do
        login_as(event)
        click_link 'Edit'
        fill_in 'Email', with: event.email
        fill_in 'Name', with: event.name
        fill_in 'Latitude', with: event.latitude
        fill_in 'Longitude', with: event.longitude
        fill_in 'Address', with: event.address
        click_button 'Update Shop'
        expect(page).to have_content 'Shop info was updated.'
        expect(current_path).to eq events_info_path
      end
    end
  end
end
