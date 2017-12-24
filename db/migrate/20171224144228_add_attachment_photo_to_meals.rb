class AddAttachmentPhotoToMeals < ActiveRecord::Migration[5.1]
  def self.up
    change_table :meals do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :meals, :photo
  end
end
