class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        # create_table :freebies do |t|
        #     t.string :item_name
        #     t.integer :value
        #     t.integer :company_id
        #     t.integer :dev_id

        # f1 = Freebie.create(item_name: "Mug", value: 20, company_id: 1, dev_id: 1)

        # Freebie.create(item_name: self.item_name, value: self.value, dev: dev.id, company_id: self.id )

        self.freebie << Freebie.create(dev, item_name, value)
    end

    def self.oldest_company
        self.minimum(:founding_year)
    end
end
