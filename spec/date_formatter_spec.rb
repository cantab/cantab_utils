require "spec_helper"

describe "Date formatting" do

  let(:date) { Date.new(2000, 1, 1) }

  describe CantabUtils::DateFormatter do

    it "has a such a class" do
      expect(described_class).to_not be_nil
    end

    describe "methods" do

      it "has a to_long method" do
        expect(described_class).to respond_to(:to_long)
      end

      it "has a to_slash method" do
        expect(described_class).to respond_to(:to_slash)
      end

      it "has a to_long_dash method" do
        expect(described_class).to respond_to(:to_long_dash)
      end

      it "has a date_months_after method" do
        expect(described_class).to respond_to(:date_months_after)
      end
    end

    describe "date conversions" do

      describe "convert dates to long format" do

        it "method converts date" do
          expect(described_class.to_long(date)).to eq("1 January 2000")
        end
      end

      describe "format dates with slashes" do

        it "method converts date" do
          expect(described_class.to_slash(date)).to eq("1/1/2000")
        end
      end

      describe "format long dates with dashes" do

        it "method converts date" do
          expect(described_class.to_long_dash(date)).to eq("1-January-2000")
        end
      end

      describe "give date months after" do

        it "method converts date" do
          expect(described_class.date_months_after(date, 31)).to eq(Date.new(2002, 8, 1))
        end
      end
    end
  end
end
