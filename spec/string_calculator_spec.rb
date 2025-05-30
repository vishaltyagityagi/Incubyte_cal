require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator, type: :lib do
  let(:calculator) { StringCalculator.new }

  describe '.add' do
    context 'when input is empty' do
      it 'returns 0' do
        expect(calculator.add("")).to eq(0)
      end
    end
  end

end