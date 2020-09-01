class HarryPotterService
  def house_members
    json("/characters")
  end

  def house_info
    json("/houses/{house_id}")
  end

  def object_conversion
    house_members.map do |house_member|
      Wizard.new(house_member)
    end
  end

  private

  def conn
    Faraday.new("https://www.potterapi.com/v1") do |f|
      f.params["key"] = ENV["HP_API_KEY"]
    end
  end

  def json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
