class HomeController < ApplicationController
	def index
		@events = Event.includes(:group)
	end
end
