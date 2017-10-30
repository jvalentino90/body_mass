require 'rails_helper'

describe "GET /body_mass" do
  it "returns bmi",js: true do
    user = FactoryGirl.create(:user)
    capybara_sign_in(user)
    visit root_path
    fill_in "height", :with => "180"
    fill_in "weight", :with => "80"
    click_button "Calculate BMI"
    expect(page).to have_content("Result")
  end
end