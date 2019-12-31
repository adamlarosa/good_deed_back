class User < ApplicationRecord
	has_secure_password
	has_many :user_cases
	has_many :cases, through: :user_cases, dependent: :destroy
	has_many :comments, through: :cases, dependent: :destroy
	validates :username, :password, presence: true
	validates :username, uniqueness: true
end
