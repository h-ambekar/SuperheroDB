class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_url
      t.string :full_name
      t.string :publisher
      t.string :first_appearance
      t.string :alignment

      t.timestamps
    end
  end
end
