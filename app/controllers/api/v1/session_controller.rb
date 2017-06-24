class Api::V1::SessionController < ApplicationController
  include JSONAPI::Utils

  def index
    jsonapi_render json: current_user
  end
end
