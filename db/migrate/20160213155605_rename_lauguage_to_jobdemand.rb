class RenameLauguageToJobdemand < ActiveRecord::Migration
  def change
    rename_column :jobdemands, :lauguage, :launguage
  end
end
