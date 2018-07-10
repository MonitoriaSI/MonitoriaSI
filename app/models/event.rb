class Event < ApplicationRecord
  has_and_belongs_to_many :people
  belongs_to :team

  has_many :evaluations

  def media
    media = 0.0
    evaluations.each {|e| media+=e.nota}
    media/evaluations.size
  end
end
