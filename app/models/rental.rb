class Rental < ApplicationRecord
  belongs_to :Book
  belongs_to :User
  belongs_to :Log
end
