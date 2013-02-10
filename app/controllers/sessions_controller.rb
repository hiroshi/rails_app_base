class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    query = Credential.where(:provider => auth_hash[:provider], :identifier => auth_hash[:uid])
    if credential = query.first
      user = credential.user
    else
      user = User.create! do |u|
        u.name = auth_hash[:info][:nickname]
        u.credentials << query.new
      end
    end
    session[:user_id] = user.id
    redirect_to request.env['omniauth.origin'] || :root
  end
end
