class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:texto]
    @word_count = @text.split(" ").length
    @frequency = {}

    @text.split(" ").each do |word|
      if @frequency.key?(word.to_sym)
        @frequency[word.to_sym] += 1
      else
        @frequency[word.to_sym] = 1
      end

    end
    @sorted_frequency = @frequency.values.sort.reverse

    if @sorted_frequency.length >= 10
        @print_frequency= @sorted_frequency.first 10
      else
        @print_frequency= @sorted_frequency
    end


    render "results"
end
end
