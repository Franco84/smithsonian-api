class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.text :description
      t.float :duration
      t.date :original_air_date
      t.integer :rating
      t.text :keywords

      t.timestamps
    end
  end
end
