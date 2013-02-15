#
# A simple word/time count plugin for Jekyll.
#
#  input         = The given content (a Liquid tag).
#  count_words   = Returns the word count.
#  count_seconds = Returns the seconds by dividing the word count by 5,
#                  which is how many words the average person reads per second.
#  calculate     = Strips the given input content's HTML tags and returns
#                  the number of counted words.
#
#  Usage:
#  {{ content | count_words }}
#  {{ content | count_seconds }}
#
module Jekyll
  module WordCount
    def count_words(input)
      calculate(input)
    end

    def count_seconds(input)
      calculate(input) / 5
    end

    def calculate(input)
      input.gsub(/<\/?[^>]*>/, "").split.size
    end
  end
end

Liquid::Template.register_filter(Jekyll::WordCount)
