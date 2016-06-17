

class Room

  def initialize(name, welcome)
    @name = name
    @welcome = welcome
  end

  def name
    @name
  end
  def enter_room
    puts @welcome

  end

end

class Game_array
  def initialize(x,y)
    @x = x
    @y = y

  end

  def position (game_array)
    puts "Game is ON, try to get to the treasure as fast as possible"
      while game_array [@x][@y].name != "Dead" #|| @x < 4 || @y < 5)
        puts game_array [@x][@y].name
        game_array [@x][@y].enter_room
        puts "Chose between W, S, E, N"
        option = gets.chomp

        if option == "W"
          @y-=1
        elsif option == "S"
          @x +=1
        elsif option == "E"
          @y +=1
        elsif option == "N"
          @x -=1
        end
      end
      if game_array [@x][@y].name == "Dead"
        puts " You are dead !!!!"
      end
    end
end

boring = Room.new("Boring Room", "welcome to the boring room, hurry up if you don't to get bored")
sleeping_room = Room.new("Sleeping Room", "Welcome to the sleepy Room, if you keep that way you are going to sleep forever")
tropical = Room.new("Tropical Room", "Welcome to tropicos, it feels good for the moment but don't get relaxed")
forest = Room.new("Forest", "This is the forest!! Run for your life!!")
bridge = Room.new("Bridge", "Watch your step, you are getting closer")
happy = Room.new("Happy", "Happy times for happy people, hope it stays the same")
pirates = Room.new("Pirates", "Get ready to fight the Pirates!!")
dead = Room.new("Dead", "GAME OVER you have reached the death room")
christmas = Room.new("Christmas", "Christmas is around the corner")
savana = Room.new("Savana", "Savana room, watch out for lions")
heaven = Room.new("Heaven", "You are in heaven, WELCOME")
treasure = Room.new("Treasure", "YOU MADE IT, you reached the last room!! Congrats")

game_array = [
  [boring, sleeping_room, dead, dead],
  [tropical, forest, bridge, treasure],
  [dead, happy, dead, heaven],
  [dead, pirates, christmas, savana]
]




first_game = Game_array.new(0,0)

 first_game.position (game_array)
