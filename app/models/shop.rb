class Shop < ApplicationRecord
  has_many :menus, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
