def login_as(shop)
  visit new_shop_session_path
  fill_in 'Email', with: shop.email
  fill_in 'Password', with: 'password'
  click_button 'Log in'
end
