class Person < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :events
    has_one :turma, class_name: "Team", inverse_of: "monitor", foreign_key: "monitor_id"
    validates :nome, presence: true,  length: { minimum: 3 }
    validates :matricula, presence: true, uniqueness: true
    validates :user , presence: true
    enum perfil: [:coordenador, :aluno]
end
