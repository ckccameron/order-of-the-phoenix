class HarryPotterService
  def house_members
    json("/characters")
  end

  def object_conversion
    characters.map do |character|
      Wizard.new(character)
    end
  end

  private

  def conn
    Faraday.new("https://www.potterapi.com/v1") do |f|
      f.params["key"] = ENV["HP_API_KEY"]
  end

  def json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
