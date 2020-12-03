# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#attack_attributes [name, damage, attack_type, target]
#attack_types = [physical, emotional, spiritual, financial, verbal] 
#Attack.create(name: "", damage: 0, attack_type: "", target: "player/enemy")



got_your_nose = Attack.create(name: "I got your nose", damage: 15, attack_type: "emotional")
failed_proposal = Attack.create(name: "Failed Proposal", damage: 45, attack_type: "emotional")
soggy_socks = Attack.create(name: "Soggy Socks", damage: 5, attack_type: "")
wet_willy = Attack.create(name: "Wet Willy", damage: 10, attack_type: "physical")
borrow_money = Attack.create(name: "Can I borrow a couple bucks?", damage: 15, attack_type: "financial")
take_a_break = Attack.create(name: "Take a Break", damage: -20, attack_type: "emotional")
pizza_party = Attack.create(name: "Pizza Party!", damage: -30, attack_type: "physical")
sneeze = Attack.create(name: "Sneeze in Face", damage: 20, attack_type: "physical")
sweaty_hug = Attack.create(name: "Sweaty Hug", damage: 40, attack_type: "emotional")
jive_turkey = Attack.create(name: "Call them a Jive Turkey", damage: 15, attack_type: "verbal")