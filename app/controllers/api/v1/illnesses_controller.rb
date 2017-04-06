module Api
  module V1
    class IllnessesController < ApiController

      def index
        @illnesses = Illness.all
        render json: @illnesses.to_json, status 200
      end

      def show
        illness = Illness.find_by_id(params[:id])
        render json: illness.to_json, status: 200
      end

    end
  end
end
