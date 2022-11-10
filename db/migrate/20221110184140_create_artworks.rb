class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      #1
      t.string :title, presence: true
      t.string :image_url, presence: true, unique: true
      t.references :artist, presence: true, foreign_key: {to_table: :users}
      #2
      #3

      t.timestamps
    end
  end
end
