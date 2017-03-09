require "spec_helper"

describe "String formatting" do

  let(:string) { "The rain in Spain - 2nd Edition with    multiple spaces.pdf" }

  describe Cantab::StringFormatter do

    it "has a such a class" do
      expect(described_class).to_not be_nil
    end

    describe "methods" do

      it "has a parameterize method" do
        expect(described_class).to respond_to(:parameterize)
      end
    end

    describe "string conversions" do

      describe "convert string to dashed format" do

        it "method converts string" do
          expect(described_class.parameterize(string)).to eq("The-rain-in-Spain-2nd-Edition-with-multiple-spaces.pdf")
        end
      end
    end
  end
end
