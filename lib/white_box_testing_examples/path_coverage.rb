#path coverage
module WhiteBoxTestingExamples
  module PathCoverage
    class OverheadCost
      class FloatNotGiven < StandardError; end
      class ValueCannotBeLessThanOne < StandardError; end

      def initialize(direct_labor_cost)
        raise FloatNotGiven unless direct_labor_cost.is_a? Float
        raise ValueCannotBeLessThanOne if direct_labor_cost < 1

        @direct_labor_cost = direct_labor_cost
      end
    end
  end
end
