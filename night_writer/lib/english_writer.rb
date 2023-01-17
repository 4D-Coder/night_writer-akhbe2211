class EnglishWriter
  attr_reader :incoming_text,
              :library

  def initialize(incoming_text)
    @incoming_text = incoming_text
    @library = {
      ' ' => ['..', '..', '..'],
      'a' => ['0.', '..', '..'],
      'b' => ['0.', '0.', '..'],
      'c' => ['00', '..', '..'],
      'd' => ['00', '.0', '..'],
      'e' => ['0.', '.0', '..'],
      'f' => ['00', '0.', '..'],
      'g' => ['00', '00', '..'],
      'h' => ['0.', '00', '..'],
      'i' => ['.0', '0.', '..'],
      'j' => ['.0', '..', '..'],
      'k' => ['0.', '..', '0.'],
      'l' => ['0.', '0.', '0.'],
      'm' => ['00', '..', '0.'],
      'n' => ['00', '.0', '0.'],
      'o' => ['0.', '.0', '0.'],
      'p' => ['00', '0.', '0.'],
      'q' => ['00', '00', '0.'],
      'r' => ['0.', '00', '0.'],
      's' => ['.0', '0.', '0.'],
      't' => ['.0', '00', '0.'],
      'u' => ['0.', '..', '00'],
      'v' => ['0.', '0.', '00'],
      'w' => ['.0', '00', '.0'],
      'x' => ['00', '..', '00'],
      'y' => ['00', '.0', '00'],
      'z' => ['0.', '.0', '00']
    }
  end

  def self.from_txt(incoming_text)
    EnglishWriter.new(incoming_text)
  end

  def match_by_letter
    @library.key(@incoming_text)
  end

  def convert_to_english
    layers_as_elements = @incoming_text.split("\n")
    
    layers_collection = layers_as_elements.each_slice(3).map do |layer|
      layer.map do |braille_layer|
        braille_layer.scan(/../)
      end
    end

    found = layers_collection.flat_map do |collection|
      collection.transpose
    end
    
    matches = found.map do |letter|
      @library.key(letter)
    end.join
  end
end