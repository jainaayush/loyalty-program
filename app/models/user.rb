class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates_confirmation_of :password
  validates :dob, presence: true
end
