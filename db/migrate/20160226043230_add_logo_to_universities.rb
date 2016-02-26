class AddLogoToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :logo, :binary
  end
end
