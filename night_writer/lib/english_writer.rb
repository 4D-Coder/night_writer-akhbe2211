class EnglishWriter
  attr_reader :incoming_text

  def initialize(incoming_text)
    @incoming_text = incoming_text
  end

  def self.from_txt(incoming_text)
    EnglishWriter.new(incoming_text)
  end
end