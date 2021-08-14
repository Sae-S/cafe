class Menu < ApplicationRecord
  belongs_to :shop

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
