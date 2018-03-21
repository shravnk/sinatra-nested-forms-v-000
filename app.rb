require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      params[:pirate].each{|p| Pirate.new(p[:name], p[:weight], p[:height])}

      params[:pirate][:ships].each{|s| Ship.new(s[:name], s[:type], s[:booty])}

      erb :show
    end

  end
end
