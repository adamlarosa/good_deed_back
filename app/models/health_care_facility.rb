class HealthCareFacility < ApplicationRecord
	has_many :incidents
	has_many :cases, through: :incidents
end
