require 'rails_helper'

RSpec.feature "Buys", type: :feature do
  #ユーザーは本を購入する
  scenario "user buys book" do
    user = FactoryGirl.create(:user)
    information = FactoryGirl.create(:information)

    visit user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    click_link "購入する"

    click_link "購入する"
    click_link "TOPへ"

    expect(page).to have_current_path "/"
  end
end
