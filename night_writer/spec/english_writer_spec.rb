require './spec/spec_helper'

RSpec.describe EnglishWriter do
  
  describe 'Iteration 3' do
    let(:english_writer_t) { EnglishWriter.from_txt([["0.", "..", ".."]]) }
    let(:english_writer_word) { EnglishWriter.from_txt(".00.0...\n0000.0..\n0.......") }
    let(:english_writer_words) { EnglishWriter.from_txt(".00.0...000..0000...0.0.0..000..000.00...00.0000.0..0.0.0.0....00.0...0.0.0.00..\n0000.0..00..0.......0.00.000.0..0..0....00....0.0....00..000..0000.0..0....0.0..\n0.......0.00....0.....0.0..00.....0.00....000.0.0...0.00..0...0.......0...0000..\n\n000.00\n.0.000\n..0...") }

    context '#initialize' do
      
      it 'exists' do
        expect(english_writer_t).to be_a(EnglishWriter)  
        expect(english_writer_word).to be_a(EnglishWriter)  
        expect(english_writer_words).to be_a(EnglishWriter)  
      end
      
      it 'can receive user input as an attribute' do
        expect(english_writer_t.incoming_text).to eq(".0\n00\n0.")  
      end
    end
    
    context "#library" do

      it 'has a library as an attribute' do
        expected = {
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
        
        expect(english_writer_t.library).to eq(expected)
      end
    end

    context "#extract_and_convert" do
      it 'can take @incoming_text and return values to be matched to library' do
        expect(english_writer_word.extract_and_sort).to eq([[".0", "00", "0."], ["0.", "00", ".."], ["0.", ".0", ".."], ["..", "..", ".."]])
      end
    end

    context "#convert_to_english" do

      it 'can convert multiple characters' do
        expect(english_writer_words.convert_to_english).to eq("the quick brown fox jumps over the lazy dog")
      end
    end
  end
end