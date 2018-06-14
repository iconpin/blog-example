class Page < ApplicationRecord
  validates :title, uniqueness: true, presence: true

  has_many :authorings
  has_many :authors, through: :authorings
end
