class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        self.auditions.map do |person|
            person.actor
        end
    
    end
    def locations
        self.auditions.map do |person|
            person.location
        end
    
    end
    def lead
        self.auditions.find_by(hired:true) ? self.auditions.find_by(hired:true):"no actor has been hired for this role"
    
    end
    def understudy
         hired_actors = self.auditions.where(hired: true)
         binding.pry
         hired_actors[1] ? hired_actors[1]:"no actor has been hired for understudy for this role"
    
    end
  
end