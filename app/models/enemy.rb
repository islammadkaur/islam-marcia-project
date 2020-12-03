class Enemy < ApplicationRecord
    has_many :battles
    has_many :attacks
    has_many :locations, through: :battles
    has_many :players, through: :battles

    attr_accessor :name, :health
    
    def initialize(health = 100)
      @health = health
      @name = generate_name
    end

# 23 names
# 68 adjectives
    def generate_name
        name_array = ['Alexa', 'Arhamm', 'Bart', 'Brodrick', 'Cole', 'Dena', 
                      'Derick', 'Dom', 'Ev', 'Islam', 'Jake', 'Kyle', 'Marcia',
                      'Max', 'Muhidin', 'Nicole', 'Oscar', 'Rakshan', 'Raza', 
                      'Ronalyssa', 'Rupa', 'Sam', 'Tyler']

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
    

end
