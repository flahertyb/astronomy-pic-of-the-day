module Astronomy
  class Picture < ActiveRecord::Base

    def self.latest
      order("created_at").last
    end
  end
end

