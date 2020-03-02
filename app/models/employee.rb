class Employee < ApplicationRecord
    belongs_to :company
    belongs_to :building

    validates :name, presence :true
    validates :title, presence :true
    validates :company, presence :true
end
