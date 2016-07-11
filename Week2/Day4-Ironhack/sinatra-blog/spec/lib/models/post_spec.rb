
require 'rspec'
require 'pry'
require 'date'
require './lib/models/post'

  describe Post do
    subject = Post.new("First Post", Date.new(2016, 03, 12), " posting for the first time")

    it 'initializes new post' do
      expect(subject.title).to eq("First Post")
    end
    it 'initializes new post' do
      expect(subject.date).to eq(Date.new(2016, 03, 12))
    end
    it 'initializes new post' do
      expect(subject.text).to eq(" posting for the first time")
    end
end
