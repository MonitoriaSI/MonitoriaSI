class Semester < ApplicationRecord
    def to_s
        "#{self.ano}/#{self.periodo}"
    end
end
