class AddYoutubeNouveaute1ToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_column :artistes, :youtube_nouveaute1, :string
    add_column :artistes, :youtube_nouveaute2, :string
    add_column :artistes, :youtube_nouveaute3, :string
    add_column :artistes, :youtube_nouveaute4, :string
  end
end
