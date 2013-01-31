# Jekyll Wordcount

*Wordcount* is a small plugin for adding a word count to your [Jekyll](http://jekyllrb.com/ "Jekyll") blog posts. It's essentially a simple [Liquid](http://liquidmarkup.org/ "Liquid") filter that just strips the content from all HTML tags and then counts the words. It can also calculate how long it takes to read the post based on the counted words.

## Usage

Place the `wordcount.rb` in your `_plugins` folder and add one or both of the below snippets in one of your layouts:

	{{ content | count_words }}
	{{ content | count_seconds }}

### Example

	<p>This post is {{ content | count_words }} words long. It'll take you {{ content | count_seconds }} seconds to read it.</p>

## License

**The MIT License (MIT)**

*Copyright (c) 2013 Ellen Gummesson*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
