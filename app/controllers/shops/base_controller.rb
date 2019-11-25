class Shops::BaseController < ApplicationController
  before_action :authenticate_shop!
end
