module Api
  module V1
    class IllnessesController < ApiController
    def show
      illness = Illness.find_by_id(params[:id])
      render json: illness.to_json, status: 200
    end

    private
      def anecdote_params
        params.require(:illness).permit(:id)
      end
    end
  end
end
