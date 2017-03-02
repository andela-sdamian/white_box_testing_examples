require "spec_helper"

describe WhiteBoxTestingExamples::StatementCoverage::OverheadCost do
  describe "#initialize" do
    context "given an number" do
      it "sets the number to an instance variable called 'direct_labor_cost'" do
        overhead_cost = described_class.new(10.0)

        expect(
          overhead_cost.instance_variable_get(:@direct_labor_cost)
        ).to eq 10.0
      end
    end
  end
end

