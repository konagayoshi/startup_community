class AddAttrToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :address, :string
    add_column :companies, :phone, :string
    add_column :companies, :email, :string
    add_column :companies, :introduction, :text
  end
end
