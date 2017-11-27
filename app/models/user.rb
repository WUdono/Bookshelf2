class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: {admin: 'admin', member: 'member'}
  has_many :reviews
  has_many :books, through: :reviews
  has_many :rentals
  validates :name, presence: true
end
