require 'rails_helper'

RSpec.feature "Sells", type: :feature do
  #ユーザーは本を出品する
  scenario "user sells book" do
    user = FactoryGirl.create(:user)
    information = FactoryGirl.create(:information)

    visit user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
    click_link "出品する"

    fill_in "Title", with: information.title
    fill_in "Image", with: information.image
    fill_in "Writer", with: information.writer
    fill_in "Text", with: information.text
    fill_in "Review", with: information.review
    fill_in "Rate", with: information.rate
    fill_in "State", with: information.state
    fill_in "Price", with: information.price
    click_button "出品する"

    click_link "TOPへ"

    click_link "購入する"
    expect(page).to have_current_path "/informations/product"

  end

end
