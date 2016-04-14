class AddDescriptionAndAttachmentToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :description, :text
    add_column :photos, :attachment, :string
  end
end
