require 'Nokogiri'


class TwitterScrapper

  def initialize
    #@url = url
    @doc = Nokogiri::HTML(File.open('twitter_account.html')) 
    #variable de instancia que vamos a usar en todos los metodos. 
    #esta habre el documento html en donde vamos a buscar la siguiente info.
  end

  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    profile_name.first.inner_text
  end

  def extract_stats
    empty = "Stats: "
    tweets = @doc.search(".ProfileNav-value")[0].inner_text.split.join
    siguiendo = @doc.search(".ProfileNav-value")[1].inner_text
    seguidores = @doc.search(".ProfileNav-value")[2].inner_text
    me_gusta = @doc.search(".ProfileNav-value")[2].inner_text
    momentos = @doc.search(".ProfileNav-value")[2].inner_text
    empty << "Tweets : #{tweets}, Siguiendo : #{siguiendo}, Seguidores : #{seguidores}, Me gusta : #{me_gusta}, Momentos : #{momentos} "
  end

  def extract_tweets
    (0..9).each do |i|
    time = @doc.search(".tweet-timestamp")[i].inner_text
    tweets = @doc.search(".js-tweet-text-container")[i].inner_text
    tweets.delete! "\n"
    retweets = @doc.search(".ProfileTweet-action--retweet > span")[i].inner_text
    rt_s = retweets.delete "retweets"
    rt_s = rt_s.delete "      \n","\n "
    
    favorites = @doc.search(".ProfileTweet-action--favorite")[i].inner_text
    fv = favorites.delete "      \n","\n "
    puts
    p "  #{time}.: #{tweets}"
    p "  Retweets: #{rt_s}, Favorites: #{fv}"
    end
  end
end

prueba = TwitterScrapper.new

puts prueba.extract_username
#=>Donald J. Trump
puts "--------------------------------------------------------------------------------------------------"
puts prueba.extract_stats
puts "--------------------------------------------------------------------------------------------------"
puts "Tweets: "
prueba.extract_tweets
