class MakeApodColumnsNotNull < ActiveRecord::Migration
  def up
    change_column :astronomy_pictures, :url, :string, :null => false
    change_column :astronomy_pictures, :text, :text, :null => false
  end

  def down
    change_column :astronomy_pictures, :url, :string, :null => true
    change_column :astronomy_pictures, :text, :text, :null => true
  end
end
