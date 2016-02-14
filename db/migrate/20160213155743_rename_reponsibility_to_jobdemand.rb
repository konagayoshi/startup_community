class RenameReponsibilityToJobdemand < ActiveRecord::Migration
  def change
    rename_column :jobdemands, :reponsibility, :responsibility
  end
end
