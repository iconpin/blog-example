class Page < ApplicationRecord
  validates :title, uniqueness: true, presence: true

  belongs_to :author
end
