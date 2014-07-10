class SearchController < ApplicationController

	def index
		@search = Church.near(params[:location])
	end

end