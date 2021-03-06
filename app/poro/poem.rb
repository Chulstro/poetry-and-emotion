class Poem
  attr_reader :title, :author, :content

  def initialize(poem_data)
    @title = poem_data[:title]
    @author = poem_data[:author]
    @content = poem_data[:lines].join
    # @tone = tone(@content)
  end

  def self.poems_by_author(author)
    poem_info = PoemDbService.new.author_search(author)
    poem_info.map do |poem|
      Poem.new(poem)
    end
  end

  # private
  # 
  # def tone(content)
  #   binding.pry
  #   Tone.find_tone(content)
  # end
end
