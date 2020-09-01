require 'rails_helper'

RSpec.describe "Hogwarts house members search" do
  it "displays Order of the Phoenix members" do
    visit "/"

    select "Gryffindor", from: :house
    click_on "Search For Members"
    expect(current_path).to eq("/search")

    expect(page).to have_content("21 Order of the Phoenix Members")
    expect(page).to have_content("Name: Harry Potter")
    expect(page).to have_content("Role: Student")
    expect(page).to have_content("House: Gryffindor")
    expect(page).to have_content("Patronus: ")
  end
end
