require 'rails_helper'

RSpec.feature "Logouts", type: :feature do

  #ユーザーはログイン後、ログアウトできる
  scenario "user can logout after login" do
    user = FactoryGirl.create(:user)

    visit user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    click_link "LogOut"
    expect(page).to have_current_path "/users/sign_in"
  end
end
