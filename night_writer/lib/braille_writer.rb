require './spec/spec_helper'

class BrailleWriter

  attr_reader :incoming_text, 
              :library,
              :converted_text

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
      'j' => ['.0', '00', '..'],
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
    BrailleWriter.new(incoming_text)
  end

  def convert_to_braille
    word_wrapper = braille_layers_arr.each_slice(40).map do |segment|
      segment.transpose.map do |layer_arr|
        layer_arr.join
      end.join("\n")
    end.join("\n\n")
  end

  def braille_layers_arr
    english_letters = @incoming_text.split('')
    braille_layers_arr = english_letters.map do |letter|
      @library[letter]
    end
  end
end


