class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all.includes(:specials)
    # require "pry"; binding.pry
    # @specials = Special.all
    erb :'comedians'
  end

end
