module Jekyll
  class WordCountTag < Liquid::Tag
    def render(context)
      content = context['page']['content']
      word_count = content.split.size
      word_count.to_s
    end
  end
end

Liquid::Template.register_tag('wordcount', Jekyll::WordCountTag)