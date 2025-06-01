require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator, type: :lib do
  let(:calculator) { StringCalculator.new }

  describe '.add' do
    context 'when input is empty' do
      it 'returns 0' do
        expect(calculator.add("")).to eq(0)
      end

      it "returns the number itself for a single number" do
        expect(calculator.add("1")).to eq(1)
      end

    end
  end

end