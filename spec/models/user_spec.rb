require 'rails_helper'

RSpec.describe User, type: :model do

  #有効なファクトリを持つこと
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  #Emailとパスワードがあれば登録できること
  it "is valid with a email, and password" do
    user = User.new(email: "123456@co.jp", password: "123456", password_confirmation: "123456")
    expect(user).to be_valid
  end

  #Emailがないと登録できないこと
  it "is invalid without a email" do
    user = FactoryGirl.build(:user, email: "")
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  #パスワードがないと登録できないこと
  it "is invalid without a password" do
    user = FactoryGirl.build(:user, password: "")
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  #パスワードとパスワード確認が一致しないと登録できないこと
  it "is invalid without a password_confirmation although with a password" do
    user = FactoryGirl.build(:user, password_confirmation: "")
    user.valid?
    expect(user.errors[:password_confirmation]).to include("doesn't match Password")
  end

end
