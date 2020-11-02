require 'action_view'
require 'date'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    
    COLORS = %w(black white brown grey) #Cat::COLORS/ Cat.COLORS/ 

    validates :bithdate, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: {in: %w(M F)} # w-> array w=string i =symble

    def age(birthday)
        age = Date.today.year - birthday.year    
        age -= 1 if Date.today < birthday + age.years
    end
     
end