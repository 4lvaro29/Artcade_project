class Design < ApplicationRecord

	#Relations
	has_many :arcades

	def name_price
		"#{name} - #{helper.number_to_currency(price, unit: "$", separator: ",", delimiter: ".", precision: 0)}"
	end

	private

	  def helper
	    @helper ||= Class.new do
	      include ActionView::Helpers::NumberHelper
	    end.new
	  end
end
