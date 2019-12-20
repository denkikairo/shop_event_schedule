# frozen_string_literal: true

require 'rails_helper'

# ShopはDeviceで作成した認証用のモデル
RSpec.describe 'Events', type: :system do
  let(:shop) { create(:shop) }
  describe 'イベント登録' do
    context '入力値が正常な状態' do
      it 'イベント登録が成功すること', js: true do
        login_as(shop)
        visit shops_events_path
        find('.fc-day-top[data-date="2019-12-06"]').click
        fill_in 'event_title', with: 'Event Title'
        expect {
          click_button '登録する'
          sleep 0.5 # 秒数は適当に調整
        }.to change { Event.count }.by(1)
      end
    end
  end
end
