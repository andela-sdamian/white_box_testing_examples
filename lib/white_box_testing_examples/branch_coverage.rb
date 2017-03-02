#branch coverage
module WhiteBoxTestingExamples
  module BranchCoverage
    class OverheadCost
      class FloatNotGiven < StandardError; end

      def initialize(direct_labor_cost)
        raise FloatNotGiven unless direct_labor_cost.is_a? Float

        @direct_labor_cost = direct_labor_cost
      end
    end
  end
end

