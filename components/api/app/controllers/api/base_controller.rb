# frozen_string_literal: true

module Api
  class BaseController < ActionController::API
    before_action :authenticate_user!

    include Errors::ErrorHandler
  end
end
