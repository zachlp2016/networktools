require 'pry'

RSpec.describe "new server", type: :feature do
  # Use the following instead if you are on Devise <= 4.2.0
  # include Devise::TestHelpers
  before :each do

    user=create(:user)
    visit user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_link('Login')

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end


  it "Can navigate to a new server form if signed in" do

    visit root_path


    expect(page).to have_content("Home")


    click_on "Servers"
    click_link "here"

    expect(current_path).to eq(new_server_path)
  end

  it "Can Create a new server Once signed in" do
  end
end
