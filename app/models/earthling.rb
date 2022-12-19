class Earthling < ActiveRecord::Base
    has_many :visitations
    has_many :aliens, through: :visitations

    # WHY DON'T THESE WORK??
    # def visitations
    #     self.visitations
    # end

    # def aliens
    #     self.aliens
    # end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def self.filter_by_job(job)
        Earthling.where("job = ?", job)
    end 
end
