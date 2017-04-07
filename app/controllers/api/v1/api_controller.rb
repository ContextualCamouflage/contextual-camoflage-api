module Api
  module V1
    class ApiController < ApplicationController
      before_action :authenticated?

      private
      def authenticated?
        authenticate_or_request_with_http_basic do |email, password|
          user = User.find_by_email(email)
          user && user.authenticate(password)
        end
      end
    end
  end
end
