class AddDetailsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :industry, :string
    add_column :companies, :corporate_principle, :text
    add_column :companies, :number_of_employees, :integer
    add_column :companies, :location, :text
    add_column :companies, :date_of_establishment, :date
  end
end
