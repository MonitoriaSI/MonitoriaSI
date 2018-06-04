class Team < ApplicationRecord
  belongs_to :discipline
  belongs_to :semester
  belongs_to :monitor , class_name:"Person", foreign_key: "monitor_id", optional: true
  has_many :events
end
