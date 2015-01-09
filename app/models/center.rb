class Center < ActiveRecord::Base
    attr_accessible :center_id, :location

    has_many :children
    has_many :messages
    has_many :sponsors through: :children
end
