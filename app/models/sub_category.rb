class SubCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  validates :user_id, presence: true
  validates :title, presence: true
end
