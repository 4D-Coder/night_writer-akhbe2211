require './spec/spec_helper'

RSpec.describe EnglishWriter do

  describe 'Iteration 3' do
    context '#initialize' do
      let(:english_writer) { EnglishWriter.new('incoming text') }

      it 'exists' do
        expect(english_writer).to be_a(EnglishWriter)  
      end

      it 'can receive user input as an attribute' do
        expect(english_writer.incoming_text).to eq('incoming text')  
      end
    end
  end
end