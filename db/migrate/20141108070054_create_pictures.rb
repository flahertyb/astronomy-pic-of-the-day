class CreatePictures < ActiveRecord::Migration
  def change
    create_table :astronomy_pictures do |t|
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
