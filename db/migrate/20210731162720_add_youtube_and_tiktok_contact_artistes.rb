class AddYoutubeAndTiktokContactArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :youtube_link_for_contacts, :string
    add_column :artistes, :tiktok_link, :string
  end
end
