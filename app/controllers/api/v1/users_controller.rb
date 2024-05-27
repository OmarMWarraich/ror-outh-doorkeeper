module Api::V1
  class UsersController < ApiController
    before_action :doorkeeper_authorize!, unless: :user_signed_in?

    respond_to :json

    def me
      respond_with current_resource_owner
    end
  end
end
