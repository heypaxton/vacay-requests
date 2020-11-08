class AddAuthorToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :author, :string
  end
end
