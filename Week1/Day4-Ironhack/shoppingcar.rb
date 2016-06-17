require 'pry'

class ShoppingCart

   def initialize (hash)
     @food_hash = hash
    @cart = []
    @final_cart = {}
    @apples = 0
    @oranges = 0
    @grapes = 0

  end

  def start_cart
    @food_hash.each do |key, value|
      @final_cart[key] = 0
    end
  #   @final_cart.each do |key, value|
  #   puts " #{key}: #{value}"
  # end
  end

  def add_item_to_cart (value)
    @cart.push (value)
  end

  def print_cart
    @cart.each do |item|
        if @final_cart.include? item
          @final_cart[item.to_sym] += 1
      #puts "#{item}: #{@food_hash[item]}"

        end
      end
    @clean_cart = @final_cart.delete_if do |key, value|
                  value == 0
    end


  end

  def cost
    sum=0
    @discount_cart.each do |key, value|
    sum += (@food_hash[key.to_sym]*@discount_cart[key.to_sym])
      end
      puts sum
end

  def deal
    @discount_cart = @clean_cart.dup

    if @clean_cart.include? :apple
      if @clean_cart[:apple]>= 2
       @apples = @clean_cart[:apple] / 2
      
       @discount_cart[:apple]-= @apples

     end
    end

    if @clean_cart.include? :orange
      if @clean_cart[:orange]>= 3
       @oranges = @clean_cart[:orange] / 3
       @discount_cart[:orange]-= @oranges
     end
    end

    if @clean_cart.include? :grape
      if @clean_cart[:grape]>= 4
       @grapes = @clean_cart[:grape] / 4
       @clean_cart[:banana]+= @grapes
     end
    end
    @clean_cart.each do |key, value|
    puts " #{key}: #{@clean_cart[key.to_sym]}  = #{@discount_cart[key.to_sym]*@food_hash[key.to_sym]}"
    end
  end





end

food_hash = {
        :apple => 10,
        :orange => 5,
        :grape => 15,
        :banana => 20,
        :watermelon => 50
      }

cart = ShoppingCart.new(food_hash )

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :apple
cart.add_item_to_cart :apple
cart.add_item_to_cart :apple
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape


cart.start_cart
cart.print_cart
cart.deal
cart.cost


# cart.show
# 1 apple: 10$
# 2 bananas: 40$
#
# cart.cost = 50
