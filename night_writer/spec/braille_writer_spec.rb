require './spec/spec_helper'

RSpec.describe BrailleWriter do
  
  describe "Iteration 1" do
    let(:braille_writer) { BrailleWriter.from_txt('incoming_text') }
    
    context "#initialize" do
      it 'exists' do
        expect(braille_writer).to be_a(BrailleWriter)
      end
      
      it 'can receive text' do
        expect(braille_writer.incoming_text).to eq('incoming_text')
      end
    end
  end
  
  describe "Iteration 2" do
    let(:braille_writer_a) { BrailleWriter.from_txt('a') }
    let(:braille_writer_the) { BrailleWriter.from_txt('the ') }
    
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
        
        expect(braille_writer_a.library).to eq(expected)
      end
    end
    
    context "#convert_braille_writer" do
      it 'can convert one character' do
        expect(braille_writer_a.convert_braille_writer).to eq("0.\n..\n..")
      end
      
      it 'can convert multiple characters' do
        expect(braille_writer_the.convert_braille_writer).to eq(".00.0...\n0000.0..\n0.......")
      end
    end
  end
end
