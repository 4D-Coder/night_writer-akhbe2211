require './lib/to_braille'

RSpec.describe ToBraille do
  let(:to_braille) { ToBraille.from_txt('incoming_text') }

  describe "Iteration 1" do
    context "#initialize" do
      it 'exists' do
        expect(to_braille).to be_a(ToBraille)
      end

      it 'has attributes' do
        expect(to_braille.incoming_text).to eq('incoming_text')
      end
    end
  end
end
