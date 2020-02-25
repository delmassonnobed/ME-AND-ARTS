class AddCloudinaryImageToSounds < ActiveRecord::Migration[5.2]
  def change
     add_column :sounds, :cloudinary_img, :string
  end
end
