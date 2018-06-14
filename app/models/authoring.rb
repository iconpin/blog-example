class Authoring < ApplicationRecord
  belongs_to :page
  belongs_to :author

  validates :page, presence: true
  validates :author, presence: true
end
