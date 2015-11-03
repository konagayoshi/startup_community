class AddAttrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attr, :integer
  end
end
