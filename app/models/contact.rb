class Contact < ApplicationRecord # connects Contact class to the contacts table in the DB. One to one relationship.
belongs_to:company #each contact is associated with a company (i.e. belongs to)
end
