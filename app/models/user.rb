class User < ApplicationRecord
    has_one :profile
    has_many :tweets, through: :profile
end
