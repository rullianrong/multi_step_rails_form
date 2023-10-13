class ConfirmationsController < ApplicationController
  def index
    @information = current_user.information
    @job = current_user.job
  end

  def confirm
    current_user.update!(confirmed_at: Time.now)
  end
end
