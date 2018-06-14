class Author < ApplicationRecord
  validates :email, uniqueness: true, presence: true

  has_many :pages
end
