class CreateArtistes < ActiveRecord::Migration[6.0]
  def change
    create_table :artistes do |t|
      t.string :name
      t.string :genre
      t.text :biography

      t.timestamps
    end
  end
end
