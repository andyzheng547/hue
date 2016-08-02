class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :hue_ip

  def hue_ip
    url = 'https://www.meethue.com/api/nupnp'
    resp = Faraday.get(url)
    parsed_resp = JSON.parse(resp.body)

    parsed_resp[0]['internalipaddress']
  end
end
