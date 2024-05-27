module Api::V1
  class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token
    helper_method :current_resource_owner

    private

    def current_resource_owner
      @current_user ||= if doorkeeper_token
        User.find(doorkeeper_token.resource_owner_id)
      else
        warden.authenticate(scope: :user)
      end
    end
  end
end
