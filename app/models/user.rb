class User < ApplicationRecord
    has_many :groups, dependent: :destroy
    has_many :pockets, dependent: :destroy
end
