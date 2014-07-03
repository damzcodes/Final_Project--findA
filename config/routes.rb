Rails.application.routes.draw do
  root to: 'attendee#index'
  resources :attendee, :only => [:index, :create, :show, :delete]do
    collection do
      get :authorise_fb    
    end
  end

  get 'fb_oauth_callback', {
    :to => 'attendee#fb_oauth_callback',
    :as => :fb_oauth_callback
  }

  resources :church, :only => [:index, :create, :show]
end
