class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :status
      t.string :resolved_by
      t.date :vacation_start_date
      t.date :vacation_end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
