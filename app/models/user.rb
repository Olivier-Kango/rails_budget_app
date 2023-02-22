# frozen_string_literal: true

# ApplicationRecord
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories
  has_many :expenses
  validates :name, presence: true, length: { maximum: 50 }
end
