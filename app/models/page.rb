class Page < ApplicationRecord
  validates :title, uniqueness: true, presence: true

  has_many :authorings
  has_many :authors, through: :authorings

  def author_names
    authors.map(&:name)
  end
end
