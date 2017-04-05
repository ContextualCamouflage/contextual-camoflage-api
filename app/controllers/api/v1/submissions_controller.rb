module Api
  module V1
    class SubmissionsController < ApiController
      def index
        # Send the Frontend a JSON payload of each illness, with the corresponding count
        illness_counts = count_by_illness(params[:city])
        render json: illness_counts.to_json, status: 200
      end

      def create
        @submission = Submission.create!(submission_params)
      end

      private
      def submission_params
        params.require(:submission).permit(:cookie, :illness, :relationship, :ip_address, :city)
      end

      def count_by_illness(city)
        Submission.where(city: city).group("illness").count
      end
    end
  end
end
