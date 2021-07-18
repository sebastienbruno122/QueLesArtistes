class AddInstagramLinkToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :instagram_link, :string
    add_column :artistes, :spotify_link, :string
  end
end
