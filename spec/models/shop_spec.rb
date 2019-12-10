# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shop, type: :model do
  let(:shop_no_title) { build(:shop, email: '') }
  let(:shop_no_pass) { build(:shop, password: '', password_confirmation: '') }
  let(:shop_diff_pass) { build(:shop, password: 'password', password_confirmation: 'password_diff') }
  let(:shop_short_pass) { build(:shop, password: 'pass', password_confirmation: 'pass') }
  let(:shop_create) { create(:shop) }
  let(:shop_build) { build(:shop) }

  describe 'validates_email' do
    context 'no email' do
      it 'is invalid' do
        shop_no_title
        expect(shop_no_title).not_to be_valid
      end
    end
    context 'duplicate email' do
      it 'is invalid' do
        shop_create
        shop_build
        expect(shop_build).not_to be_valid
      end
    end
  end
  describe 'validates_password' do
    context 'no password' do
      it 'is invalid' do
        shop_no_pass
        expect(shop_no_pass).not_to be_valid
      end
    end
    context 'different password' do
      it 'is invalid' do
        shop_diff_pass
        expect(shop_diff_pass).not_to be_valid
      end
    end
    context 'password less than 6 letters' do
      it 'is invalid' do
        shop_short_pass
        expect(shop_short_pass).not_to be_valid
      end
    end
  end
end
