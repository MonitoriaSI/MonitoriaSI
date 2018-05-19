class Team < ApplicationRecord
  belongs_to :discipline
  belongs_to :semester
end
