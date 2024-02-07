class Faculty < ApplicationRecord
    # Relationships
    belongs_to :department
    has_many :assignments
    has_many :courses, through: :assignments
  
    # # Scopes 
    scope :alphabetical, -> { order(first_name: :asc) }
    scope :active, -> { where(active: true) }  

    # # Validations 
    # 1. must have first, last names
    validates :first_name, presence: true
    validates :last_name, presence: true

    # # 2. rank must be either `Assistant Professor`, `Associate Professor`, or `Professor`
    validates :rank, inclusion: { in: ['Assistant Professor', 'Associate Professor', 'Professor'] }
  
end
