class Menu < ApplicationRecord
  belongs_to :shop
  has_one_attached :photo

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
