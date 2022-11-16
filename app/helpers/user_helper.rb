def current_user
  # User.find(session[:user_id]) if session[:user_id]
  User.find(session[:user_id]) if session[:user_id]
end