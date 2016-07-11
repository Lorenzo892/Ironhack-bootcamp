require '/server.rb'
require 'rspec'
require 'rack/test'
require 'pry'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns 200 OK' do
      get '/'

      #expect(last_response.status).to eq(200)
      expect(last_response).to be_ok
    end
end

describe 'GET /hi' do
    it 'should redirect to the home_page' do
      # expect(Calculator).to receive(:add).with(1, 2).and_return(3) # esto sirve para no tener que llamar a la funcion una segunda vez cunado se testea.
      get '/hi'

      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/')
    end
  end



end
