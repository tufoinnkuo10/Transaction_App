class GroupOperation < ApplicationRecord
  has_many :operation
  has_many :group
end
