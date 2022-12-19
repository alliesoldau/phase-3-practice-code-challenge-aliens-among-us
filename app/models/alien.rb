class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations
    
    # WHY WONT THIS WORK
    # def visitations
    #     self.visitations
    # end

    # def earthlings
    #     self.earthlings
    # end

    # HOW TO ENTER TODAYS DATE??

    # def visit(earthling_instance)
    #     Visitation.create(date: 13, alien_id: self.id, earthling_id: earthling_instance.id)
    # end

    def total_light_years_traveled
        self.visitations.length * self.light_years_to_home_planet * 2
    end





end
