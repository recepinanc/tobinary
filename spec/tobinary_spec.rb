require "spec_helper"

  describe Tobinary do
    context 'Numbers lower than 4' do
      it 'should return: 01' do
        expect(1.to_binary).to eq '01'
      end 
      it 'should return: 11' do
        expect(3.to_binary).to eq '11'
      end 
    end

    context 'Numbers lower than 256' do
      it 'should return: 00000100' do
        expect(4.to_binary).to eq '00000100'
      end
      it 'should return: 00001000' do
        expect(8.to_binary).to eq '00001000'
      end
      it 'should return: 00010000' do
        expect(16.to_binary).to eq '00010000'
      end
      it 'should return: 01111011' do
        expect(123.to_binary).to eq '01111011'
      end 
      it 'should return: 11111111' do
        expect(255.to_binary).to eq '11111111'
      end 
    end

    context 'Numbers lower than 65536' do
      it 'should return: 0111111111111111' do
        expect(32767.to_binary).to eq '0111111111111111'
      end 
      it 'should return: 1000000000000000' do
        expect(32768.to_binary).to eq '1000000000000000'
      end 
      it 'should return: 1111111111111111' do
        expect(65535.to_binary).to eq '1111111111111111'
      end 
    end

    #others will be added
  end