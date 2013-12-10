class Investment < ActiveRecord::Base
attr_accessor :fiveYearInterest, :tenYearInterest, :twentyYearInterest
after_initialize :constant_rates

	def constant_rates
	
		@fiveYearInterest = 1.4859473
		@tenYearInterest = 2.2080396
		@twentyYearInterest = 4.8754391
		
	end
		
	def fiveYear
	purchaseAmount * @fiveYearInterest
	end

	def tenYear
	purchaseAmount * @tenYearInterest
	end

	def twentyYear
	purchaseAmount * twentyYearInterest
	end
end
