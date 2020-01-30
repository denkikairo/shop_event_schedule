# frozen_string_literal: true

def login_as(shop)
  visit new_shop_session_path
  fill_in 'shop_email', with: shop.email
  fill_in 'shop_password', with: 'password'
  click_button 'ログイン'
end
