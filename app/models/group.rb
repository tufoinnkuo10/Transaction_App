class Group < ApplicationRecord
  belongs_to :user
  belongs_to :group_operation
  has_many :group_operation

  validates :name, presence: true
  validates :user, presence: true

end
