require "spec_helper"

describe WhiteBoxTestingExamples::PathCoverage::OverheadCost do
  describe "#initialize" do
    context "when a float is not supplied" do
      it "raises a FloatNotGiven exception" do
        expect { described_class.new(nil) }.to raise_error(
          WhiteBoxTestingExamples::PathCoverage::OverheadCost::FloatNotGiven
        )
      end
    end

    context "when a float is supplied" do
      it "does not raise an exception" do
        expect { described_class.new(10.0) }.to_not raise_error(
          WhiteBoxTestingExamples::PathCoverage::OverheadCost::FloatNotGiven
        )
      end
    end

    context "when a value less than 1 is given" do
      it "raises a ValueCannotBeLessThanOne exception" do
        expect { described_class.new(-1.0) }.to raise_error(
          WhiteBoxTestingExamples::PathCoverage::OverheadCost::ValueCannotBeLessThanOne
        )
      end
    end
  end
end
