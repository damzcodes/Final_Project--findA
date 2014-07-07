class ChurchEvents < ActiveRecord::Base
	 belongs_to :churches 
	 belongs_to :events
end
