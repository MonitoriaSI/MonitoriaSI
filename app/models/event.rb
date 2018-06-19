class Event < ApplicationRecord
  has_and_belongs_to_many :people
  belongs_to :team

  has_many :evaluations
end
