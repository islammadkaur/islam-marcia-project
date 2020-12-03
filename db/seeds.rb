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



got_your_nose = Attack.create(name: "I got your nose", damage: 15, attack_type: "emotional", target: "player/enemy")
failed_proposal = Attack.create(name: "Failed Proposal", damage: 45, attack_type: "emotional", target: "player/enemy")
soggy_socks = Attack.create(name: "Soggy Socks", damage: 5, attack_type: "", target: "player/enemy")
wet_willy = Attack.create(name: "Wet Willy", damage: 10, attack_type: "physical", target: "player/enemy")
borrow_money = Attack.create(name: "Can I borrow a couple bucks?", damage: 15, attack_type: "financial", target: "player/enemy")
take_a_break = Attack.create(name: "Take a Break", damage: -20, attack_type: "emotional", target: "self")
pizza_party = Attack.create(name: "Pizza Party!", damage: -30, attack_type: "physical", target: "self")
sneeze = Attack.create(name: "Sneeze in Face", damage: 20, attack_type: "physical", target: "player/enemy")
sweaty_hug = Attack.create(name: "Sweaty Hug", damage: 40, attack_type: "emotional", target: "player/enemy")
jive_turkey = Attack.create(name: "Call them a Jive Turkey", damage: 15, attack_type: "verbal", target: "player/enemy")