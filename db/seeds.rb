# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  company = Company.create(name: Faker::Company.name)
  5.times do
    10.times do
      company.employees.create(name: Faker::Name.name)
    end

    location = company.locations.create(name: Faker::Address.state)
    3.times do
      location.courses.create(name: Faker::Company.catch_phrase)
    end
  end
end
