class ResearchController < ActionController::API
  def create
    @research = Research.new(research_params)
  end

  private
  def submission_params
    params.require(:research).permit(:age, :gender, :occupation, :race, :cookie)
  end
end
