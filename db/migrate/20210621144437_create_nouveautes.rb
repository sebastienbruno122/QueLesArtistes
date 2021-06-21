class CreateNouveautes < ActiveRecord::Migration[6.0]
  def change
    create_table :nouveautes do |t|
      t.string :citation
      t.string :name
      t.references :artiste, null: false, foreign_key: true

      t.timestamps
    end
  end
end
