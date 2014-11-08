class AddApodIdToAstronomyPictures < ActiveRecord::Migration
  def change
    add_column :astronomy_pictures, :apod_id, :string, :null => false
  end
end
