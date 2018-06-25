require 'rails_helper'

RSpec.feature "Logins", type: :feature do

  #ユーザーは会員登録できる
  scenario "user Sign up" do
    user = FactoryGirl.build(:user)

    visit user_session_path
    click_link "Sign up"

    fill_in "Name", with: user.name
    fill_in "Email", with: user.email
    fill_in "Favorite", with: user.author
    choose "user_gender_male"
    fill_in "Password", with: user.password
    fill_in "Confirmation", with: user.password_confirmation
    click_button "Sign up"

    expect(page).to have_current_path "/"
  end

  #アカウントを持っているユーザーがログインする
  scenario "user who has an account can log in" do
    user = FactoryGirl.create(:user)

    visit user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    expect(page).to have_current_path "/"
  end

  #登録していないユーザーはログインできない
  scenario "user who doesn'r have an account can't log in" do
    user = User.new(email: "a@a", password: "aaaaaa")

    visit user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    expect(page).not_to have_current_path "/"
  end
end
