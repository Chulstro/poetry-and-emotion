class Tone
  def self.find_tone(content)
    ToneAnalyzerService.new.find_tone(content)
  end
end
