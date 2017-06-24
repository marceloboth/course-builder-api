class Api::V1::UsersController < ApplicationController
  before_action :doorkeeper_authorize!, except: :create
end
