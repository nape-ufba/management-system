class User < ApplicationRecord
    belongs_to :role
    belongs_to :user_type
    belongs_to :special_need
end

