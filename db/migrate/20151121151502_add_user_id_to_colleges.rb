class AddUserIdToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :user_id, :integer
  end
end
