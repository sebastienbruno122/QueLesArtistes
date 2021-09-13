class AddVimeoLinkToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :vimeo_link, :string
    add_column :artistes, :facebook_link, :string
  end
end
