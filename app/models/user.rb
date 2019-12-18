class User < ApplicationRecord
	has_secure_password
	has_many :user_cases
	has_many :cases, through: :user_cases
	has_many :comments, through: :cases
end
