class AddEmailToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :email, :string
  end
end
