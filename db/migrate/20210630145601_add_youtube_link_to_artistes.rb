class AddYoutubeLinkToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :youtube_link, :string
  end
end
