class Person < ApplicationRecord
    belongs_to :user
    has_one :turma, class_name: "Team", inverse_of: "monitor", foreign_key: "monitor_id"
    enum perfil: [:coordenador, :aluno]
end
