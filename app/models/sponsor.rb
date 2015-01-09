class Sponsor < ActiveRecord::Base
    attr_accessible :sponsor_id, :name, :location

    has_many :messages through: :children
    has_many :children
end
