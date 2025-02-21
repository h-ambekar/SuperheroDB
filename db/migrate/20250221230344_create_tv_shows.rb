class CreateTvShows < ActiveRecord::Migration[8.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
