class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def landing
  end

  def event_lookup
    if event = Event.find_by(code: params[:event_code])
      redirect_to live_event_url(event.code)
    else
      flash.now[:notice] = 'No event matches that code'
      render 'landing'
    end
  end
end
