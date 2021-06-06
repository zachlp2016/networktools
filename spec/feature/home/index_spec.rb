require 'rails_helper'
require 'pry'

RSpec.describe "home page", type: :feature do
  it "can see the menu" do
    visit root_path

    click_on("Home")

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Network Tools")
  end
end
