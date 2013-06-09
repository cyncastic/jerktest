class ApplicationController < ActionController::Base
	before_filter :setcats

	private

	def setcats
		@categories = Categories.all
	end
end
