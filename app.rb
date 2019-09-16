require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @p = Puppy.new(params[:name], params[:breed], params[:age])
        @name = @p.name
        @breed = @p.breed
        @age = @p.months_old
        erb :display_puppy
    end
end
