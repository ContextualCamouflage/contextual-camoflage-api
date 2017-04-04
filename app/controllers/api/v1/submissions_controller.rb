module Api
  module V1
    class SubmissionsController < ActionController::API
      def index
        # Send the Frontend a JSON payload of each illness, with the corresponding count
      end

      def create
        @submission = Submission.create(submission_params)
      end

      private
      def submission_params
        params.require(:submission).permit(:cookie, :illness, :relationship, :ip_address)
      end
    end
  end
end
