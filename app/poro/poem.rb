class Poem
  def initialize(poem_data)
    @title = poem_data[:title]
    @author = poem_data[:author]
    @content = poem_data[:lines]
  end

  def self.poems_by_author(author)
    poems = PoemDbService.new.author_search(author).first(10)
    poems.each do |poem|
      binding.pry
      Poem.new(poem)
    end
  end
end
