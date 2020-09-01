class HarryPotterService
  def conn
    Faraday.new("https://www.potterapi.com/v1/characters") do |f|
      f.params["key"] = ENV["HP_API_KEY"]
  end

  def json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
