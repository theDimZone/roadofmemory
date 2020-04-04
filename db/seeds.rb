# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TroopVeteran.destroy_all
UserVeteran.destroy_all

Veteran.destroy_all
User.destroy_all
Troop.destroy_all

User.create(id: 1, socialtype: "vk", socialid: "1", name: "Pavel Durov")
User.create(:id => 2, :socialtype => "vk", :socialid => "2", :name => "XZ kto", :parent => User.first)

p "Users"
p User.all

Troop.create(:id => 1, :name => "Восточный фронт", :trooptype => "фронт")
#Troop.first.troops.create(:id => 2, :name => "Армия 42", :trooptype => "армия")
Troop.create(:id => 2, :name => "Армия 42", :trooptype => "армия", :parent => Troop.first)
#Troop.first.troops.create(:id => 3, :name => "Армия 123", :trooptype => "армия")
Troop.create(:id => 3, :name => "Армия 123", :trooptype => "армия", :parent => Troop.first)
#Troop.where(:name => "Армия 123").first.troops.create(:id => 4, :name => "Корпус 2", :trooptype => "корпус")
Troop.create(:id => 4, :name => "Корпус 2", :trooptype => "корпус", :parent => Troop.where(:name => "Армия 123").first)

p "Troops"
p Troop.all

Troop.where(:id => 2).first.veterans.create(:id => 1, :name => "Test", :lastname => "Testlast", :surname => "Testsur")
Troop.where(:name => "Армия 123").first.veterans.create(:id => 2, :name => "Test2", :lastname => "Testlast2", :surname => "Testsur2", :moderated => true)
Troop.where(:name => "Армия 123").first.veterans.create(:id => 3, :name => "Test3", :lastname => "Testlast3", :surname => "Testsur3", :moderated => true)
Troop.where(:name => "Армия 123").first.veterans.create(:id => 4, :name => "Test4", :lastname => "Testlast4", :surname => "Testsur4", :moderated => true)

#Veteran.create(:id => 1, :name => "Test", :lastname => "Testlast", :surname => "Testsur", :parent => Troop.where(:id => 2).first)
#Veteran.create(:id => 2, :name => "Test2", :lastname => "Testlast2", :surname => "Testsur2", :parent => Troop.where(:name => "Армия 123").first)
#Veteran.create(:id => 3, :name => "Test3", :lastname => "Testlast3", :surname => "Testsur3", :parent => Troop.where(:name => "Армия 123").first)
#Veteran.create(:id => 4, :name => "Test4", :lastname => "Testlast4", :surname => "Testsur4", :parent => Troop.where(:name => "Армия 123").first)

Troop.where(:name => "Армия 123").first.children.where(:name => "Корпус 2").first.veterans.create(:id => 5, :name => "Test5", :lastname => "Testlast5", :surname => "Testsur5", :moderated => true)
Troop.where(:name => "Армия 123").first.children.where(:name => "Корпус 2").first.veterans.create(:id => 6, :name => "Test6", :lastname => "Testlast6", :surname => "Testsur6", :moderated => true)

p "Veterans"
p Veteran.all
