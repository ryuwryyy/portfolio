class AsksController < ApplicationController

  def create

    @ask = Ask.create(create_params)
    redirect_to :root and return
  end
    def create_params
    params.require(:ask).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])

    end
end
