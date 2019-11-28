# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger

  private

  def after_sign_in_path_for(resource_or_scope)
    return root_path if !resource_or_scope.is_a?(Shop)
		if resource_or_scope.latitude.present? && resource_or_scope.longitude.present?
			shops_info_path
		else
			edit_shops_info_path
		end
	end
end
