class Grade < ApplicationRecord
  belongs_to :assignment
  belongs_to :membership
end
