class AddStatusToInformation < ActiveRecord::Migration
  def change
    add_column :information, :status, :integer
  end
end
