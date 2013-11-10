# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Fill in the /db/seeds.rb to build some acts, special talents, and amoebas.

Act.create(:title => "The Lion Tamer", :date => "2013-11-10 15:00:00 -0500")
Act.create(:title => "RNA Replication", :date => "2013-11-11 15:00:00 -0500")
Act.create(:title => "The Protoplasmic Contortionist", :date => "2013-11-12 15:00:00 -0500")

Talent.create([
  {:name => "Acrobat"},
  {:name => "Contortionist"},
  {:name => "Clown"},
  {:name => "Juggler"},
  {:name => "Freak"}
])

Amoeba.create([
  {:name => "Jerry", :talent_id => rand(1..5), :generation => 1},
  {:name => "Tom", :talent_id => rand(1..5), :generation => 1},
  {:name => "Manu", :talent_id => rand(1..5), :generation => 1},
  {:name => "Logan", :talent_id => rand(1..5), :generation => 1},
  {:name => "Fred", :talent_id => rand(1..5), :generation => 1}
])