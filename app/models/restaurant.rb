class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :name, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: %w(indian chinese italian japanese french belgian), allow_nil: false }
end
