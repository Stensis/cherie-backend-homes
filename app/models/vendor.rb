class Vendor < ActiveRecord::Base
    has_many :houses 
    has_many :users, through: :houses
end
