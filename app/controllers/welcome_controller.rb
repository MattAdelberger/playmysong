class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def landing
  end

  def event_lookup
    if session[:audience_member_id].blank?
      unless audience_member = AudienceMember.find_by(:email => params[:email])
        audience_member = AudienceMember.new
        audience_member.email = params[:email]
        audience_member.save
      end
      session[:audience_member_id] = audience_member.id
    end

    if event = Event.find_by(code: params[:event_code])
      redirect_to live_event_url(event.code)
    else
      flash.now[:notice] = 'No event matches that code'
      redirect_to root_url
    end
  end
end
