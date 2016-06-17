require "date"

class Post
 attr_reader(:title, :date, :text)
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end
end


class Blog

  def initialize
    @all_posts = []
  end

  def add_post(post)
    @all_posts.push (post)
  end

  def publish_front_page



    @all_posts =  @all_posts.sort do |a, b|
        b.date <=> a.date
    end

      page_number = 0

    question = ""
    pages = (@all_posts.length.to_f/3).ceil
    puts pages

    while question != "exit" || page_number >= 0 || page_number < pages

      for i in (page_number*3)...((page_number*3)+3)
          puts @all_posts[i].title
          puts "****************************"
          puts "#{@all_posts[i].text} \n"
          puts ""
      end

      # @all_posts.each do |post|
      #   puts post.title
      #   puts "****************************"
      #   puts "#{post.text} \n"
      # end


      for i in 1..pages
        print "#{i} "
      end
      question = gets.chomp

      if question == "next"
        page_number +=1
      elsif question == "previous"
        page_number -=1
      else
        question = "exit"
      end
    end
  end
end

class SponsoredPost < Post
    attr_reader(:title, :date, :text)
     def initialize(title, date, text)
       @title = "*********#{title}******"
       @date = date
       @text = text
     end

  end

blog = Blog.new
blog.add_post Post.new("First Post", Date.new(2016, 03, 12), " posting for the first time")
blog.add_post SponsoredPost.new("sECOND pOST", Date.new(2016, 04, 12), " posting for the Second time")
blog.add_post Post.new(" Third Post", Date.new(2016, 05, 12), " posting for the 3 time")
blog.add_post Post.new("4 Post", Date.new(2016, 05, 13), " posting for the 4 time")
blog.add_post SponsoredPost.new("5 pOST", Date.new(2016, 05, 14), " posting for the 5 time")
blog.add_post Post.new(" 6 Post", Date.new(2016, 05, 15), " posting for the 6 time")
blog.add_post Post.new("7 Post", Date.new(2016, 05, 16), " posting for the 7 time")
blog.add_post SponsoredPost.new("8 pOST", Date.new(2016, 10, 12), " posting for the 8 time")
blog.add_post Post.new(" 9 Post", Date.new(2016, 11, 12), " posting for the 9 time")

blog.publish_front_page
