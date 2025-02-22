class User < ApplicationRecord
  has_many :likeds, dependent: :destroy
  has_many :characters, through: :likeds

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
