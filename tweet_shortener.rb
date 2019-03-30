def dictionary
  dict = {
    "hello" => 'hi',
    "to" => '2', 
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)
  
  dict = dictionary 
  words = tweet.split(" ")
  
  words.map do |word| 
   dict.map do |key,value|
    if word.downcase == key
     word.replace(value)
    end
   end
  end
 
   words.join(" ")
end
  
  
def bulk_tweet_shortener(tweets_array)
  
   tweets_array.map do |tweet| 
    puts word_substituter(tweet)
   end

end
  
  
def selective_tweet_shortener(tweet)
  
  if tweet.split(" ").length > [0..140]
    puts word_substituter(tweet)
      else
       puts tweet 
  end
  
end 
  