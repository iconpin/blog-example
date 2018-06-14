class Author < ApplicationRecord
  validates :email, uniqueness: true, presence: true

  has_many :authorings, dependent: :destroy
  has_many :pages, through: :authorings, dependent: :destroy
end
