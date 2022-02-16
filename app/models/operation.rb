class Operation < ApplicationRecord
  belongs_to :user
  has_many :group_operations
  
  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
