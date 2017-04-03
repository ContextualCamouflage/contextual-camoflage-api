class SubmissionsController < ActionController::API
  # def index
  #   @submissions = Submission.visible_to(user) #???
  # end

  def create
    @submission = Submission.new(submission_params)
  end

  #cookie, illness, relationship, city, zip_code
  private
  def submission_params
    params.require(:submission).permit(:cookie, :illness, :relationship, :city, :zip_code)
  end
end
