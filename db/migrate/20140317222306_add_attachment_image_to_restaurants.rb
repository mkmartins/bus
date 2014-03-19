class AddAttachmentImageToRestaurants < ActiveRecord::Migration
  def self.up
    change_table :restaurants do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :restaurants, :image
  end
end
