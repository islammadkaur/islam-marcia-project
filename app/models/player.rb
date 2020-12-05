class Player < ApplicationRecord
    has_many :battles
    has_many :attacks, through: :player_attacks
    has_many :locations, through: :battles
    has_many :enemies, through: :battles
    has_many :attacks, through: :battles

    validates :name, presence: true, uniqueness: true
    
    # 19 names
    # 68 adjectives
    def generate_name
        name_array = ['Alexa', 'Arhamm', 'Bart', 'Brodrick', 'Cole', 'Dena', 
                    'Derick', 'Dom', 'Ev', 'Islam', 'Kyle', 'Marcia',
                    'Max', 'Muhidin', 'Nicole', 'Oscar', 'Rakshan', 
                    'Ronalyssa', 'Sam']

        adj_array = ['adorable', 'adventurous', 'anxious', 'average', 'amused',
                    'bored', 'bewildered', 'brave', 'breakable', 'busy',
                    'cautious', 'charming','cheerful', 'clumsy', 'concerned',
                    'dangerous', 'defiant', 'determined', 'disturbed', 'dull',
                    'elegant', 'encouraging', 'excited', 'expensive', 'evil',
                    'fancy', 'fierce', 'funny', 'friendly', 'fragile',
                    'gifted', 'good', 'grumpy', 'gleaming', 'graceful',
                    'helpful', 'hilarious', 'homely', 'lucky', 'long',
                    'inexpensive', 'itchy', 'lively', 'mysterious', 'odd',
                    'prickly', 'jittery', 'powerful', 'relieved', 'rich',
                    'sparkling', 'sleepy', 'splendid', 'strange', 'super',
                    'tasty', 'thoughtful', 'tired', 'tough', 'uninterested',
                    'unsightly', 'unusual', 'wandering', 'weary', 'wild',
                    'witty', 'zany', 'zealous']

        name = "#{name_array.sample} the #{adj_array.sample}"
    end

    # needs to be changed from a self method once we figure out where we want to generate a new enemy
    def create_player
        self.name = generate_name
        self.health = 100

        # attack_slots = self.attacks
        # attack_slots << Attack.all.sample(3)
        
        # self.save

        # puts self.name
        # puts self.health

        # attack_slots.each do |attack|
        #     puts attack.name

        # end
    end

    def attackname
        player_attacks = []
        find_player = Player.all.find do |player|
            player == self
        end
        get_attacks = Attack.all.map do |attack|
            attack.name
        end
        player_attacks << get_attacks.sample(3)
        player_attacks
    end
    


end
