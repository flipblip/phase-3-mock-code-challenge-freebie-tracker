class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def receive_one?(item_name)
        self.freebies.find do |freebie|
            freebie.name == item_name
        end
    end

    def give_away(dev, freebie)
        id = Dev.find_by(name: self.name).id
        freebie.dev.id == id && (dev.freebies << freebie)
    end
end
