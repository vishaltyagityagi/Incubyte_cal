require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator, type: :lib do
  subject { described_class }
  describe '.add' do
    context 'when input is empty' do
      it 'returns 0' do
        expect(described_class.new.add("")).to eq(0)
      end
    end
  end

end