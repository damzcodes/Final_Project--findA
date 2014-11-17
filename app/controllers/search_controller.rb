class SearchController < ApplicationController

	def index
		@search_ch = Church.near(params[:location])
		@search_ev = Event.near(params[:location])
	end

end