class ChangeAttrToUsers < ActiveRecord::Migration
  def change
    change_column :users, :attr, :string, null: false
  end
end
