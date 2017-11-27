class Book < ApplicationRecord
  include SearchBook
  validates :title, :author, presence: true, length: { maximum: 255}
  validates :publisherName, :salesDate, :isbn, presence: true
  has_and_belongs_to_many :categories
  has_one :Rental
end
