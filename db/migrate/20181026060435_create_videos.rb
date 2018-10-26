class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :instrument
      t.string :url
      t.datetime :date
      t.string :score

      t.timestamps
    end
  end
end
