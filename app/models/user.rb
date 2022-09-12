class User < ActiveRecord::Base
    has_many :houses
    has_many :vendors, through: :houses
end
