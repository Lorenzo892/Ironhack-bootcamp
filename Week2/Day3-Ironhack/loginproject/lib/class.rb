
require 'pry'

class Validator

  def initialize (username, password)
@username= username
@password = password
@LIST = {:lorenzo => '123',
          :pepe => '321'
        }.freeze
  @valid = false
  end

  def validate

    if @LIST[@username.to_sym] == @password
      @valid = true
    else
      @valid = false
    end
  end
end
