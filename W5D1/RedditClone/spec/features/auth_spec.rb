require 'rails_helper'
require 'spec_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "Sign Up"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'username', :with => "testing_username"
      fill_in 'password', :with => "biscuits"
      click_on "Create Account"
    end

    scenario "redirects to subs index page after signup" do
      expect(page).to have_content "Subreddits"
    end

    scenario "shows username on the homepage after signup" do
      expect(page).to have_content "testing_username"
    end
  end

  feature "with an invalid user" do
    before(:each) do
      visit new_user_url
      fill_in 'username', :with => "testing_username"
      click_on "Create Account"
    end

    scenario "re-renders the signup page if an invalid user is given" do
      expect(page).to have_content "Sign Up"
    end
  end

end
