class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title #タイトル
      t.string :writer #作者
      t.text :image #画像URL
      t.text :text #本の内容
      t.integer :price #値段
      t.integer :rate #本の評価
      t.text :review #本の感想
      t.string :state #本の状態
      t.timestamps
    end
  end
end
