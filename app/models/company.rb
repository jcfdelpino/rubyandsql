class Company < ApplicationRecord
    has_many:contacts #creates relationship. Called an Active Record Association. We say that every company has many contacts.
end
