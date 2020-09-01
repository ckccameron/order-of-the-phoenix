require 'rails_helper'

describe "welcome page" do
  it "displays drop down menu that can select houses" do
    visit "/"

    select "Gryffindor", from: :house
    click_on "Search For Members"
    expect(current_path).to eq("/search")
  end
end
