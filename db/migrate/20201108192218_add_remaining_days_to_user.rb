class AddRemainingDaysToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :remaining_days, :integer, default: 30
  end
end
