class AddDelayToSessionPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :session_players, :delay, :float
  end
end
