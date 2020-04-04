# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Veteran.where(:id => 1).first_or_create(:name => "Test", :lastname => "Testlast", :surname => "Testsur")
Veteran.where(:id => 2).first_or_create(:name => "Test2", :lastname => "Testlast2", :surname => "Testsur2")
Veteran.where(:id => 3).first_or_create(:name => "Test2", :lastname => "Testlast2", :surname => "Testsur2")
