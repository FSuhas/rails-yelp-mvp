class Restaurant < ApplicationRecord
  CATEGORY = %w[ chinese italian japanese french belgian ]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, acceptance: { accept: CATEGORY }, presence: true
end
