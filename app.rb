require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      params[:pirate].each{|p| Pirate.new(p[:name], p[:weight].to_i, p[:height].to_i)}

      params[:pirate][:ships].each{|s| Ship.new(s[:name], s[:type], s[:booty])}

      erb :"pirates/show"
    end

  end
end
