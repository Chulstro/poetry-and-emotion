class PoemDbService
  def author_search(author)
    to_json("/author/#{author}")
  end

  private

  def to_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new('https://poetrydb.org/')
  end
end
