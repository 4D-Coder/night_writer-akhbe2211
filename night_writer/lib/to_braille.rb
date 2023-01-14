class ToBraille
  attr_reader :incoming_text

  def initialize(incoming_text)
    @incoming_text = incoming_text
  end

  def self.from_txt(incoming_text)
    ToBraille.new(incoming_text)
  end
end


