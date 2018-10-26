class CreateSessionPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :session_players do |t|
      t.references :user, foreign_key: true
      t.references :session, foreign_key: true
      t.string :instrument

      t.timestamps
    end
  end
end
