# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event_no_title) { build(:event, title: '') }
  let(:event_no_start_time) { build(:event, start_time: '') }

  describe 'validates title' do
    context 'no title' do
      it 'is invalid' do
        event_no_title
        expect(event_no_title).not_to be_valid
      end
    end
  end
  describe 'validates start_time' do
    context 'no start_time' do
      it 'is invalid' do
        event_no_start_time
        expect(event_no_start_time).not_to be_valid
      end
    end
  end
end
