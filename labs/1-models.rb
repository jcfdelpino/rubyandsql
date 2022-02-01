# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)
dell = Company.where({ name: "Dell Technologies"}) [0]
puts dell.id

values = {  first_name: "Michael",
            last_name: "Dell",
            email: "michael@dell.com",
            phone_number: "888-888-8888",
            company_id: dell.id }
contact = Contact.new(values)
contact.save

amazon = Company.where({ name: "Amazon"}) [0]
puts amazon.id

contact = Contact.new
contact.first_name = "Andy"
contact.last_name = "Jassy"
contact.email = "andy@amazon.com"
contact.phone_number = "777-777-7777"
contact.company_id = amazon.id
contact.save


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

puts "There are #{Contact.all.count} contacts"
all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
