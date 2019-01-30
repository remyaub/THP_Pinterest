class User < ApplicationRecord
    has_many :commentaries
    has_many :pins
end
