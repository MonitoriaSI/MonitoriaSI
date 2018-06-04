class Discipline < ApplicationRecord
    validates :descricao , presence: true
    validates :cargaHoraria , presence: true
end
