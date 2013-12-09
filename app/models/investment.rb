class Investment < ActiveRecord::Base
attr_accessor :fiveYearInterest, :tenYearInterest, :twentyYearInterest,  :amountSaved,
@amountSaved = 0
	def initialize
		@fiveYearInterest = 1.4859473
		@tenYearInterest = 2.2080396
		@twentyYearInterest = 4.8754391
		@amountSaved = 0
	end
		
	def fiveYear
	@amountSaved = Investment.purchaseAmount * @fiveYearInterest
	end

	def tenYear
	
	@amountSaved = Investment.purchaseAmount * @tenYearInterest
	end

	def twentyYear
	@amountSaved = Investment.purchaseAmount * @twentyYearInterest
	end
end
