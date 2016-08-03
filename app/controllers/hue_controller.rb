class HueController < ApplicationController
  def index
    if !hue_username
      whitelist_hue_app
    end
  end

  def update
    update_light(params)

    render json: {"message": "yay"}
  end
end
