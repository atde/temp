require 'Nokogiri'
require 'open-uri'

class TwitterScrapper

  def initialize
    #@url = url
    @url = Nokogiri::HTML(open('https://twitter.com/realdonaldtrump')) 
    #variable de instancia que vamos a usar en todos los metodos. 
    #esta habre el documento html en donde vamos a buscar la siguiente info.
  end

  def extract_username
    profile_name = @url.search(".ProfileHeaderCard-name > a")
    profile_name.first.inner_text
  end

  def extract_stats
    empty = "Stats: "
    tweets = @url.search(".ProfileNav-value")[0].inner_text.split.join
    siguiendo = @url.search(".ProfileNav-value")[1].inner_text
    seguidores = @url.search(".ProfileNav-value")[2].inner_text
    me_gusta = @url.search(".ProfileNav-value")[2].inner_text
    momentos = @url.search(".ProfileNav-value")[2].inner_text
    empty << "Tweets : #{tweets}, Siguiendo : #{siguiendo}, Seguidores : #{seguidores}, Me gusta : #{me_gusta}, Momentos : #{momentos} "
  end

  def extract_tweets
    (0..9).each do |i|
    time = @url.search(".tweet-timestamp")[i].inner_text
    tweets = @url.search(".js-tweet-text-container")[i].inner_text
    tweets.delete! "\n"
    retweets = @url.search(".ProfileTweet-action--retweet > span")[i].inner_text
    rt_s = retweets.delete "retweets"
    rt_s = rt_s.delete "      \n","\n "
    favorites = @url.search(".ProfileTweet-action--favorite > span")[i].inner_text
    fv = favorites.delete! "Megusta"
    fv = favorites.delete "      \n","\n "
    puts
    p "  #{time}.: #{tweets}"
    p "  Retweets: #{rt_s}K, Favorites: #{fv}K"
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
