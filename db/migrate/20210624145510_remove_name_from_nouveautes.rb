class RemoveNameFromNouveautes < ActiveRecord::Migration[6.0]
  def change
    remove_column :nouveautes, :name, :string
  end
end
