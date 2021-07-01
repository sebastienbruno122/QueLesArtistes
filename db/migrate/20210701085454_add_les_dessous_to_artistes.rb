class AddLesDessousToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :les_dessous, :text
  end
end
