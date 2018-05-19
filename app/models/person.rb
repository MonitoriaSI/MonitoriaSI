class Person < ApplicationRecord
    belongs_to :user
    has_one :monitor, class_name: "Team", foreign_key: "monitor_id"
    enum perfil: [:coordenador, :aluno]
end
