class SearchResults
  def service
    HarryPotterService.new.object_conversion
  end

  def house_members(house)
    service.map do |member|
      member.house == house
    end
  end
end
