class Enemy < ApplicationRecord
    has_many :battles
    has_many :attacks
    has_many :locations, through: :battles
    has_many :players, through: :battles
    has_many :players, through: :battles

    validates :name, presence: true, uniqueness: true

# 19 names
# 68 adjectives
    def self.generate_name
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
    def self.create_enemy
        enemy = Enemy.new
        enemy.name = generate_name
        enemy.health = 100
        enemy.attacks << Attack.all.sample(3)
        # enemy.save

        puts enemy.name
        puts enemy.health
        puts enemy.attacks
    end


    

end
