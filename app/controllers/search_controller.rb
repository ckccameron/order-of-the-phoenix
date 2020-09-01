class SearchController < ApplicationController
  def index
    @members = SearchResults.new.house_members(params[:house])
  end
end
