class AddPapelToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :papel, :integer, :default => 0
  end
end
