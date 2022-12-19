class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations
    
    # HOW TO ENTER TODAYS DATE??

    def visit(earthling_instance)
        Visitation.create(date: 13, alien_id: self.id, earthling_id: earthling_instance.id)
    end

    def total_light_years_traveled
        self.visitations.length * self.light_years_to_home_planet * 2
    end

    def self.most_frequent_visitor
        self.all.max_by{ |alien| alien.visitations.size}
    end

    def self.average_light_years_to_home_planet
        self.all.average(:light_years_to_home_planet)
    end

end
