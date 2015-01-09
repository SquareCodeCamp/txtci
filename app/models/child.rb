class Child < ActiveRecord::Base
    # attr_accessible :child_id, :name, :sponsor_id, :center_id

    belongs_to :sponsor
    has_many :messages
end
