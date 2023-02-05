class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: CATEGORY

  has_many :reviews, dependent: :destroy
end
