class HelloWorldController < ApplicationController
  layout "hello_world"

  def index
    @name = "Davy Brine"
  end
end