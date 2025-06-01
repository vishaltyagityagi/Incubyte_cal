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

      it "returns the sum of two numbers" do
        expect(calculator.add("1,5")).to eq(6)
      end

      it "handles multiple numbers" do
        expect(calculator.add("1,2,3")).to eq(6)
      end

      it "handles new lines as delimiters" do
        expect(calculator.add("1\n2,3")).to eq(6)
      end

      it "handles custom delimiters" do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end

      it "returns the sum of numbers separated by a pipe" do
        expect(calculator.add("//|\n1|2|3")).to eq(6)
      end

      context "when the input contains negative numbers" do
        it "raises an error with a list of negative numbers" do
          expect { calculator.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
        end

        it "raises an error when multiple negative numbers are present" do
          expect { calculator.add("//;\n1;-2;3;-4") }.to raise_error("Negative numbers not allowed: -2,-4")
        end
      end

    end
  end

end