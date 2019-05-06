class Event < ApplicationRecord
    validates :start_date, 
    presence: true

    validates :duration => { :greater_than_or_equal_to => 0 }
    presence: true 

    validates :title
    presence: true
    length: { minimum: 5 }
    length: { maximum: 140 }

    validates :description
    presence: true
    length: { minimum:5 }
    length: { maximum: 1000 }

    validates :price
    presence: true
    :inclusion => 1..1000

    validates :location
    presence: true

    has_many :attendances
    has_many :users, through :attendances

end
