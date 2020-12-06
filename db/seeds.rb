#------------------------------------------------------------------------------------------------------------------------------>

# PLAYERS
core = Player.create(name: "Core Philosophies", health: 100)
ambush = Player.create(name: "Ambush", health: 100)
candle = Player.create(name: "Babylon Candle", health: 100)
belladonna = Player.create(name: "Belladonna", health: 100)
jane = Player.create(name: "Calamity Jane", health: 100)
chromium = Player.create(name: "Chromium", health: 100)
#------------------------------------------------------------------------------------------------------------------------------>

# ENEMIES
chris = Enemy.create(name: "Chris P. Bacon", health: 100)
dr_fart = Enemy.create(name: "Dr. Faartz", health: 100)
kash = Enemy.create(name: "Kash Register", health: 100)
jack_daniels = Enemy.create(name: "Jack Daniels", health: 100)
kim = Enemy.create(name: "Kim Kashkashian", health: 100)
brock_lee = Enemy.create(name: "Brock Lee", health: 100)

#------------------------------------------------------------------------------------------------------------------------------>
#Types = Physical, Emotional, Spiritual, Financial, Verba

# LOCATIONS
bank = Location.create(name: "Bank", location_type: "Financial")
walmart = Location.create(name: "Walmart", location_type: "Financial")
alley = Location.create(name: "Alley", location_type: "Physical")
bar = Location.create(name: "Bar", location_type: "Physical")
school = Location.create(name: "School", location_type: "Verbal")
bus = Location.create(name: "Bus", location_type: "Verbal")
church = Location.create(name: "Church", location_type: "Spiritual")
bedroom = Location.create(name: "Bedroom", location_type: "Spiritual")
wedding = Location.create(name: "Wedding", location_type: "Emotional")
honey_moon = Location.create(name: "Honey Moon", location_type: "Emotional")

#------------------------------------------------------------------------------------------------------------------------------>
#Types = Physical, Emotional, Spiritual, Financial, Verbal
#Target = Self, Opponent

# ATTACKS
slap = Attack.create(name: "Slap", attack_type: "Physical", damage: 10, target: "Opponent")
kick = Attack.create(name: "Kick", attack_type: "Physical", damage: 20, target: "Opponent")
punch = Attack.create(name: "Punch", attack_type: "Physical", damage: 20, target: "Opponent")
toe_stepper = Attack.create(name: "Toe Stepper", attack_type: "Physical", damage: 5, target: "Opponent")
confusion = Attack.create(name: "Confusion", attack_type: "Emotional", damage: 30, target: "Opponent")
insult = Attack.create(name: "Insult", attack_type: "Verbal", damage: 15, target: "Opponent")
reality = Attack.create(name: "Reality Check", attack_type: "Emotional", damage: 40, target: "Opponent")
account_hack = Attack.create(name: "Bank Account Hack", attack_type: "Financial", damage: 40, target: "Opponent")
student_loan_transfer = Attack.create(name: "Student Loan Transferred", attack_type: "Financial", damage: 40, target: "Opponent")
yo_mama = Attack.create(name: "Yo Mama", attack_type: "Verbal", damage: 10, target: "Opponent")
manager = Attack.create(name: "Let Me Talk To The Manager", attack_type: "Verbal", damage: 25, target: "Opponent")
haunted = Attack.create(name: "Haunted House", attack_type: "Spiritual", damage: 35, target: "Opponent")
god = Attack.create(name: "God Doesn’t Like You", attack_type: "Spiritual", damage: 35, target: "Opponent")
ghost_tickles_your_toes = Attack.create(name: "Ghost Tickles Your Toes", attack_type: "Spiritual", damage: 35, target: "Opponent")
self_destruct = Attack.create(name: "Self Destruct", attack_type: "Physical", damage: 100, target: "Self")
snitch = Attack.create(name: "Tells Your Signicant Other That You're Cheating", attack_type: "Emotional", damage: 100, target: "Opponent")
lawsuit = Attack.create(name: "Lawsuit", attack_type: "Financial", damage: 80, target: "Opponent")

got_your_nose = Attack.create(name: "I got your nose", damage: 15, attack_type: "Emotional", target: "Opponent")
failed_proposal = Attack.create(name: "Failed Proposal", damage: 45, attack_type: "Emotional", target: "Opponent")
soggy_socks = Attack.create(name: "Soggy Socks", damage: 5, attack_type: "Physical", target: "Opponent")
wet_willy = Attack.create(name: "Wet Willy", damage: 10, attack_type: "Physical", target: "Opponent")
borrow_money = Attack.create(name: "Can I borrow a couple bucks?", damage: 15, attack_type: "Financial", target: "Opponent")
take_a_break = Attack.create(name: "Take a Break", damage: -20, attack_type: "Emotional", target: "Self")
pizza_party = Attack.create(name: "Pizza Party!", damage: -30, attack_type: "Physical", target: "Self")
sneeze = Attack.create(name: "Sneeze in Face", damage: 40, attack_type: "Physical", target: "Opponent")
sweaty_hug = Attack.create(name: "Sweaty Hug", damage: 20, attack_type: "Emotional", target: "Opponent")
jive_turkey = Attack.create(name: "Call them a Jive Turkey", damage: 15, attack_type: "Verbal", target: "Opponent")
pep_talk = Attack.create(name: "Give yourself a pep talk", damage: -15, attack_type: "Verbal", target: "Self")

# ------------------------------------------------------------------------------------------------------------------------------>
# PRIZES


