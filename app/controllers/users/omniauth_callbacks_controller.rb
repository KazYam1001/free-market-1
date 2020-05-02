class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    callback_for(:google)
  end

  def callback_for(provider)
    redirect_to root_path, notice: "認証成功です"
  end

  def failure
    redirect_to root_path, alert: "エラーが発生しました" and return
  end
end