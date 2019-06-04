def word_substituter(tweet)
  dictionary = {
      "hello" => "hi",
      "to" => "2",
      "two" => "2",
      "too" => "2",
      "for" => "4",
      "four" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&"
      }
  tweet_a = tweet.split(" ")
  result = []
  tweet_a.each do |w|
    word = w.downcase
    if dictionary.has_key?(word)
      result << dictionary[word]
    else
      result << w
    end
  end
  result.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
     puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size < 140
    tweet
  else word_substituter(tweet).size < 140
     "#{word_substituter(tweet)[0..133]} (...)"
  end
end
