class SubCategory < ApplicationRecord
  has_many :products
  belongs_to :category
  validates :title, presence: true
  validates :active, presence: true
  validates :category_id, presence: true
end
