class AddPictureToAdmissions < ActiveRecord::Migration
  def change
    add_column :admissions, :picture, :string
  end
end
