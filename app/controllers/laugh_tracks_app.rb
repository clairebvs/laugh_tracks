class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age].where(age: params[:age]).includes(:specials)
      @comedians = Comedian
    else
      @comedians = Comedian.all.includes(:specials)
    end
      @average_age = Comedian.average_age
      erb :'comedians/index'
  end
end
