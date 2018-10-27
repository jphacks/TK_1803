class CreateSessionPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :session_players do |t|
      t.references :user, foreign_key: true
      t.references :web_session, foreign_key: true
      t.string :session_video
      t.string :instrument

      t.timestamps
    end
  end
end
