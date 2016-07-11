
require 'rspec'
require 'pry'
require 'date'
require './lib/models/blog'
require './lib/models/post'

  describe Blog do
    subject = Blog.new
    post1 = Post.new("First Post", Date.new(2016, 03, 12), " posting for the first time")
    post2 = Post.new("second Post", Date.new(2016, 08, 12), " posting for the second time")

describe 'add_post' do
    let(:input) { post1 }
    let(:expected_output) { subject.all_posts }
    let(:result) { subject.add_post(input) }

    it 'checks if the new post is added' do
      expect(result).to eq(expected_output)
    end

describe 'sort posts' do
  subject.add_post(post1)
  subject.add_post(post2)
  subject.latest_posts
  let(:first) {all_posts[0].date}
  let(:second) { all_posts[1].date}

it 'checks if the sort method works' do
  expect (first) > 
end

end

end
end
