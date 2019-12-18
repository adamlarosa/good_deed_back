class Incident < ApplicationRecord
  belongs_to :case
  belongs_to :health_care_facility
end
