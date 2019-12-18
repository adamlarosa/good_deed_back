class Case < ApplicationRecord
	has_many :user_cases
	has_many :users, through: :user_cases
	has_many :comments
	has_many :incidents
	has_many :health_care_facilities, through: :incidents
end
