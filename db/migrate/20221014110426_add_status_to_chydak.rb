class AddStatusToChydak < ActiveRecord::Migration[7.0]
  def change
    add_column :chydaks, :status, :string
  end
end
