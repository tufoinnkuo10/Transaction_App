class Group < ApplicationRecord
  belongs_to :user
  has_many :group_operations

  validates :name, presence: true
  validates :user, presence: true
end
