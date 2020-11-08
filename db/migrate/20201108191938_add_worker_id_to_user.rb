class AddWorkerIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :worker_id, :string, null: false
  end
end
