class AddUserIdToUniversities < ActiveRecord::Migration
  def change
    add_reference :universities, :user, index: true, foreign_key: true
  end
end
