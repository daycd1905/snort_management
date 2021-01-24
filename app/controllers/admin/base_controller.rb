module Admin
  class BaseController < ApplicationController
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    respond_to :html
    layout 'application'
  end
end