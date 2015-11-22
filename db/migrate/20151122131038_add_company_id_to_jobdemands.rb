class AddCompanyIdToJobdemands < ActiveRecord::Migration
  def change
    add_column :jobdemands, :company_id, :integer
  end
end
