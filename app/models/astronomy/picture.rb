module Astronomy
  class Picture < ActiveRecord::Base

    self.table_name = 'astronomy_pictures'

    def self.latest
      order("created_at").last
    end
  end
end

