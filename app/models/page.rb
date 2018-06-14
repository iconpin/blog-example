class Page < ApplicationRecord
  validates :title, uniqueness: true, presence: true
end
