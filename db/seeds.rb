# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed with cars
more_cars = [
             {:make => 'Honda', :model => 'Civic', :year => '1997',
               :type => 'Sedan', :average_price => '$1800', :comments => 'Good condition'}]

Car.send(:attr_accessible, :make, :model, :year, :type, :average_price, :comments)
more_cars.each do |car|
  Car.create!(car)
end
