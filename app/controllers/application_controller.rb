# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger

  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(Shop)
      if resource_or_scope.latitude.present? and resource_or_scope.longitude.present?
        shops_info_path
      else
        edit_shops_info_path
      end
    else
      root_path
    end
  end
end
