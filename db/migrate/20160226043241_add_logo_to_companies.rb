class AddLogoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :logo, :binary
  end
end
