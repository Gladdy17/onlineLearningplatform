require 'rails_helper'

RSpec.describe "User Sign-up", type: :feature do
  it "has a sign-up form" do
    visit new_user_registration_path
    expect(page).to have_content("Sign up")
  end
  it "has a Email Field" do
    visit new_user_registration_path
    expect(page).to have_content("Email")
  end
  it 'has an Password Field' do
    visit new_user_registration_path
    expect(page).to have_content('Password')
  end
  it 'has an Password Confirmation Field' do
    visit new_user_registration_path
    expect(page).to have_content('Password confirmation')
  end
end