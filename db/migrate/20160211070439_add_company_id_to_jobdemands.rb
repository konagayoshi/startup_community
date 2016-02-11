class AddCompanyIdToJobdemands < ActiveRecord::Migration
  def change
    add_reference :jobdemands, :company, index: true, foreign_key: true
  end
end
