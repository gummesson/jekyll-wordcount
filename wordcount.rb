#
# A simple word/reading time count plugin for Jekyll.
#
#  input         = The given content (ie. a Liquid tag).
#  count_words   = Returns the word count.
#  count_seconds = Returns the seconds by dividing the word count by 5,
#                  which is how many words the average person reads per second
#                  according to the almighty Google.
#  calculate     = Removes the given content's HTML tags and returns
#                  the number of counted words.
#
#  Usage:
#  {{ content | count_words }}
#  {{ content | count_seconds }}
#
module Jekyll
  module WordCount
    def count_words(input)
      return calculate(input)
    end

    def count_seconds(input)
      return calculate(input) / 5
    end

    def calculate(input)
      content = input.gsub(/<\/?[^>]*>/, "")
      return content.split.size
    end
  end
end

Liquid::Template.register_filter(Jekyll::WordCount)
