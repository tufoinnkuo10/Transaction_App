class Operation < ApplicationRecord
  belongs_to :user
  belongs_to :group_operation
  has_many :group_operation

  validates :name, presence: true
  validates :ammount, numericality: { greater_than: 0 }
end
