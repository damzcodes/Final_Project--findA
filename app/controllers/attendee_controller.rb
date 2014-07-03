class AttendeeController < ApplicationController

	def index
		render :index
	end

		
	def authorise_fb
		redirect_to fb_oauth_client.auth_code.authorize_url(
			:redirect_uri => fb_oauth_callback_url,
			:scope => %w(email user_about_me user_friends).join(",")
		)
		# binding.pry
	end

	def fb_oauth_callback
		access_token = fb_oauth_client.auth_code.get_token(
			params[:action],
			:redirect_uri => fb_oauth_callback_url,
			:parse => :query
		)
		# binding.pry


		 attendee_info = JSON(access_token.get('http://graph.facebook.com/endpoint?key=value&access_token=app_id|app_secret').body).symbolize_keys

		@attendee = Attendee.find_or_create_by!(
			:fb_id => attendee_info[:id],
			:name => attendee_info[:name], 
		)

		@attendee.access_token = access_token.token
		@attendee.save!

		redirect_to attendees_path
	end

	private
	def fb_oauth_client
	  @fb_oauth_client ||= OAuth2::Client.new(
	     FindA::Application.config.fb_id,
	     FindA::Application.config.fb_secret,
	     :site => "https://graph.facebook.com",
	     :token_url => '/oauth/access_token'
	  )
	end	


end
