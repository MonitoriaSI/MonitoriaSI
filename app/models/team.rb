class Team < ApplicationRecord
  belongs_to :discipline
  belongs_to :semester
  belongs_to :monitor , class_name:"Person", optional: true
end
