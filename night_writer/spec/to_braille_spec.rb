require './spec/spec_helper'

RSpec.describe ToBraille do
  let(:to_braille) { ToBraille.from_txt('incoming_text') }

  describe "Iteration 1" do
    context "#initialize" do
      it 'exists' do
        expect(to_braille).to be_a(ToBraille)
      end

      it 'can receive text' do
        expect(to_braille.incoming_text).to eq('incoming_text')
      end
    end
  end

  describe "Iteration 2" do
    context "#library" do
      it 'has a library as an attribute' do
        expected = {
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
          'z' => ['0.', '.0', '00'],  
        }

        expect(to_braille.library).to eq(expected)
      end
    end
  end
end
