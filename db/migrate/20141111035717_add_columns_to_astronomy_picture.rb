class AddColumnsToAstronomyPicture < ActiveRecord::Migration
  def change
    add_column :astronomy_pictures, :explanation, :text, :null => false
    add_column :astronomy_pictures, :title, :string
  end
end
