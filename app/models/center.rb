class Center < ActiveRecord::Base
    # attr_accessible :center_id, :location

    has_many :children
    has_many :messages
    
end
