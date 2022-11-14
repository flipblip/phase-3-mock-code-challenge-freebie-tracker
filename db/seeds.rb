puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

# create_table :freebies do |t|
#     t.string :item_name
#     t.integer :value
#     t.integer :company_id
#     t.integer :dev_id

f1 = Freebie.create(item_name: "Mug", value: 20, company_id: 1, dev_id: 1)
f3 = Freebie.create(item_name: "T-shirt", value: 10, company_id: 1, dev_id: 1)
f3 = Freebie.create(item_name: "dongle", value: 5, company_id: 1, dev_id: 1)


puts "Seeding done!"
