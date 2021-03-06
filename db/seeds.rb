# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

houses = [{:title => '11 Catherine Street', :rating => 'Vestal', :release_date => '25-Mar-2016'},
    	  {:title => '44 Schiller', :rating => 'Binghamton', :release_date => '26-Mar-2016'},
    	  {:title => '207', :rating => 'Downtown', :release_date => '21-Mar-2016'},
      	  {:title => '209', :rating => 'Endicott', :release_date => '10-Apr-2016'},
      	  {:title => 'murray', :rating => 'Vestal', :release_date => '5-Apr-2016'},
  	 ]


houses.each do |house|
  House.create!(house)
end

User.create(name: 'Ankush', password: 'arora')

