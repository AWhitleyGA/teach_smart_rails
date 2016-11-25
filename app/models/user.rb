class User < ApplicationRecord
  has_many :memberships
  has_many :courses, through: :memberships
end
