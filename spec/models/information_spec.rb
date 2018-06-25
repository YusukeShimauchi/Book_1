require 'rails_helper'

RSpec.describe Information, type: :model do
  #有効なファクトリを持つこと
  it "has a valid factory" do
    expect(FactoryGirl.build(:information)).to be_valid
  end

  #パラメーターがなくても登録できること
  it "is valid with a nothing" do
    information = Information.new
    expect(information).to be_valid
  end

end
