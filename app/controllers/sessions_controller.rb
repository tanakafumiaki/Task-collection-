class SessionsController < ApplicationController
  def new
    flash[:notice] = t(:login2)
  end
end
