class Person < ApplicationRecord
    belongs_to :user
    enum perfil: [:admin, :student]
end
