module Api
  module V1
    class ApiController < ApplicationController
      before_action :authenticated?

      private
      def authenticated?
        authenticate_or_request_with_http_basic {|email, password| User.where( email:email, password_digest: password)}
      end
    end
  end
end
