class FacebookController < ActionController::Base
  layout 'application'

  def create
    user = User.create_facebook_user_from_omniauth(env["omniauth.auth"])
    session[:facebook_user_id] = user.id

    redirect_to facebook_url
  end

  def index

    if session[:facebook_user_id].nil?
      redirect_to 'http://localhost:3000/auth/facebook'
      return
    end

    user = User.find(session[:facebook_user_id])
    api = Koala::Facebook::API.new(user.oauth_token)
    
    # get profile
    @profile = api.fql_query("select uid, username, first_name, middle_name, last_name, birthday_date, sex, activities, interests, music, movies, books, about_me from user where uid = #{user.uid}").to_json
   
  end

end