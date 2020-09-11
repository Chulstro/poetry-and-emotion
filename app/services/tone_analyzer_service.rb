class ToneAnalyzerService

  def find_tone(content)
    to_json("/v3/tone?text=#{content}")
  end

  private

  def to_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/ed8de623-9294-4356-bc1d-55ab9d7d4ad6") do |connection|
      connection.basic_auth("apikey", ENV["TONE KEY"])
    end
  end
end
