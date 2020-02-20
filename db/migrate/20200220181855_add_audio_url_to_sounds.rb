class AddAudioUrlToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :audio_url, :string
  end
end
