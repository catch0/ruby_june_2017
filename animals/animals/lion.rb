require_relative 'mammal'
class Lion < Mammal
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        #puts "the name is #{@name} and i am attacking this g-d town rawwwr!!"
        self
    end
    def eat_humans
        @health += 20
        #puts "aww yeah I love eating people!!"
        self
    end
    def show_health
        puts "I am LION !!!!"
        self.display_health
    end
end
Leon = Lion.new('leon', 32)
Leon.attack_town.attack_town.attack_town.eat_humans.eat_humans.show_health