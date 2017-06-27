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

  def extract_tweets
    p number_of_tweets = @doc.search(".ProfileNav-item ProfileNav-item--tweets is-active > .ProfileNav-value")
    num_tweets = number_of_tweets.first.inner_text
    #following = @doc.search("")
    #num_following = following.first.inner_text
    #number_of_followers = @doc.search("")
    #num_followers = number_of_followers.first.inner_text
    "----------------------------------------------------------------------------------------"
    "Status: Tweets: #{num_tweets}"
    "----------------------------------------------------------------------------------------"
  end

  def extract_stats
    status = @doc.search("")
  end

end

 prueba = TwitterScrapper.new

 p prueba.extract_username
 #=>"Donald J. Trump"
 p prueba.extract_tweets
 #=>"35,2 K\n            "