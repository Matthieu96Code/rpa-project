class Group < ApplicationRecord
  belongs_to :icon, class_name: 'User', foreign_key: 'icon_id'
  has_many :pockets
end
