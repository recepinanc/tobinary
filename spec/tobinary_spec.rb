require "spec_helper"

  describe Tobinary do
    context 'Numbers lower than 4' do
      it 'should return: 01' do
        expect(3.to_binary).to eq '11'
      end 
    end

    context 'Numbers lower than 256' do
      it 'should return: 11111111' do
        expect(255.to_binary).to eq '11111111'
      end 
    end

    context 'Numbers lower than 65536' do
      it 'should return: 1111111111111111' do
        expect(65535.to_binary).to eq '1111111111111111'
      end 
    end

    #others will be added
  end