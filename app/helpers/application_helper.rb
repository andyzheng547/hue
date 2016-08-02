module ApplicationHelper
  def hue_ip
    url = 'https://www.meethue.com/api/nupnp'
    resp = Faraday.get(url)
    parsed_resp = JSON.parse(resp.body)

    parsed_resp[0]['internalipaddress']
  end
end
