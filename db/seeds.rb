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

#ActiveRecord::Base.connection.reset_pk_sequence!('veterans')
#ActiveRecord::Base.connection.reset_pk_sequence!('troops')
#ActiveRecord::Base.connection.reset_pk_sequence!('users')
#ActiveRecord::Base.connection.reset_pk_sequence!('user_veterans')
#ActiveRecord::Base.connection.reset_pk_sequence!('troop_veterans')

#User.create(socialtype: "vk", socialid: "1", name: "Pavel Durov", score: 100000)
#User.create(:socialtype => "vk", :socialid => "2", :name => "XZ kto", :score => 450, :parent => User.first)

#p "Users"
#p User.all
Troop.where(:name => "Восточный фронт").first_or_create(:trooptype => "фронт")
#Troop.first.troops.create(:id => 2, :name => "Армия 42", :trooptype => "армия")
Troop.where(:name => "Армия 42").first_or_create(:trooptype => "армия", :parent => Troop.first)
#Troop.first.troops.create(:id => 3, :name => "Армия 123", :trooptype => "армия")
Troop.where(:name => "Армия 123").first_or_create(:trooptype => "армия", :parent => Troop.first)
#Troop.where(:name => "Армия 123").first.troops.create(:id => 4, :name => "Корпус 2", :trooptype => "корпус")
Troop.where(:name => "Корпус 2").first_or_create(:trooptype => "корпус", :parent => Troop.where(:name => "Армия 123").first)
