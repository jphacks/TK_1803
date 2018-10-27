class AddVideoToSessionVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :session_video, :string
  end
end
