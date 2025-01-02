require 'rails_helper'

RSpec.describe "User Sign-up", type: :feature do
  it "has a sign-up form" do
    visit new_user_registration_path
    expect(page).to have_content("Sign up")

  end
end