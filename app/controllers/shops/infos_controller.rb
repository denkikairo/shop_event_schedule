# frozen_string_literal: true

class Shops::InfosController < Shops::BaseController
  before_action :set_shop, only: %i[show edit update]

  def show
    @hash = Gmaps4rails.build_markers(@shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow render_to_string(partial: "shops/infowindow", locals: { shop: shop })
    end
  end


  def edit; end

  def update
    if @shop.update(shop_params)
      redirect_to shops_info_path, success: 'Shop info was updated.'
    else
      flash.now[:danger] = 'Update was failed.'
      render :edit
    end
  end

  private

  def shop_params
    params.require(:shop).permit(
      :email,
      :name,
      :latitude,
      :longitude,
      :address
    )
  end

  def set_shop
    @shop = Shop.find(current_shop.id)
  end
end
