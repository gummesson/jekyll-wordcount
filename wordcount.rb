#
# A simple word/time count plugin for Jekyll.
#
#  input   = The given content (a Liquid tag).
#  content = Removes the input's HTML tags.
#  count   = Scans the content for words. Returns the number of counted words.
#
#  word_count = Returns the same value as count.
#  time_count = Return the value of count divided by 5, which is the average
#               number of words people read during a second.
#
#  Usage:
#  {{ content | count_words }}
#  {{ content | count_seconds }}
#
module Jekyll
  module WordCount
    def count_words(input)
      word_count = calculate(input)
      return "#{word_count}"
    end

    def count_seconds(input)
      time_count = calculate(input) / 5
      return "#{time_count}"
    end

    def calculate(input)
      content = input.gsub(/<\/?[^>]*>/, "")
      count   = content.split.size
      return count
    end
  end
end

Liquid::Template.register_filter(Jekyll::WordCount)
