class Office < ApplicationRecord
    belongs_to :building

    validates :building, presence :true
    validates :company, presence :true
    validates :floor, presence :true, numericality {integer_only :true}
end
