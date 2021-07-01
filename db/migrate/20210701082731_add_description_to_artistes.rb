class AddDescriptionToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :description, :text
  end
end
