class Person < ApplicationRecord
    enum perfil: [:admin, :student]
end
