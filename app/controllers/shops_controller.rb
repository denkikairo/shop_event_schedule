# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show events]

  def index
    @shops = Shop.all
  end

  def show
    @events = @shop.events
    @hash = Gmaps4rails.build_markers(@shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow render_to_string(partial: "shops/infowindow", locals: { shop: shop })
    end
  end

  def events
    @events = @shop.events
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
