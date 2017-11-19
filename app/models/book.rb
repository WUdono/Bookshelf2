class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255}
  validates :author, length: { maximum: 255 }
end
