
class Program

  def initialize (array, user, password)
    @index = 0
    @array = array
    @user = user
    @password = password
  end

  def enter_details

    @array.each do |item|
      return true if @user == item[:username] && @password == item[:password]
      # @index += 1
    end
  end
    # while (@index < @array.length || @array[@index][:username]== @user)
    #   @index += 1
    # end

    # if user == @array[@index][:username] && @array[@index][:password]== password
    #
    #   puts "Introduce a text"
    #   text = gets.chomp
    #   puts text.size
    #
    # end
end

class AI
  def self.powerful_algorithm
    puts "Ask me anything you want. ANYTHING!"
    input_string = gets.chomp
    puts "Ok, the answer is:"
    puts input_string.size
  end
end




puts "Username:"
user = gets.chomp
puts "Password:"
password = gets.chomp


users_hash = [
           {
                    :username => "lorenzo",
                    :password => "abc"
                  }
]
Program.new(users_hash, user, password).enter_details == true ? AI.powerful_algorithm : puts("Incorrect!")
