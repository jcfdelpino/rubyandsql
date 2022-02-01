# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies."
# 2. create new companies
    #you can use hashes. One hash can be thought of as a row in the table.
values = {  name: "Dell Technologies", 
            url: "https://dell.com", 
            city: "Austin",
            state: "TX"}
dell = Company.new(values)
dell.save #saving and committing to the DB

values = {  name: "Amazon", 
            url: "https://amazon.com", 
            city: "Seattle",
            state: "WA"}
amazon = Company.new(values)
amazon.save #saving and committing to the DB
puts "There are now #{Company.all.count} companies."

# 3. query companies table

texas_company =  Company.where({state:"TX"})[0]
puts texas_company.inspect

# 4. read column values from row
puts texas_company.read_attribute(:url) # reads the url attribute from the company category we created.
puts texas_company.url

# 5. update attribute value
texas_company.write_attribute(:slogan,"Hire JC")
texas_company.slogan = "Hire JC"
texas_company.save

puts texas_company.inspect

new_company = Company.new # This can be done. Style choice. Preferred by prof.
new_company.name =  "Test"
new_company.url =  "Test.Com"
new_company.city = "Evanston"
new_company.state = "IL"
new_company.save
puts new_company.inspect
