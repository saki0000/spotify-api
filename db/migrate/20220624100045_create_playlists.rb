class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.text :playlistId

      t.timestamps
    end
  end
end
