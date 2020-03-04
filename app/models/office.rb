class Office < ApplicationRecord
    belongs_to :company
    belongs_to :building

    validates :building, presence: true
    validates :company, presence: true
    validates :floor, presence: true, numericality: {only_integer: true}
end
