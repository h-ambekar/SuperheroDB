class CreateLikeds < ActiveRecord::Migration[8.0]
  def change
    create_table :likeds do |t|
      t.references :character, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
