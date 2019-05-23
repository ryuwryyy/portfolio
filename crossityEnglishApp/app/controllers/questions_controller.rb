class QuestionsController < ApplicationController


  def create
    Question.create(create_params)
    redirect_to :root and return
  end

   def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @users = Participant.where(question_id: @question.id)
    @asks = Ask.where(params[:id])
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @question_id = params[:question_id]
    @ask = Ask.new

  end

  def update
    @question = Question.create(text: params[:text], user_id: params[current_user.id])
    redirect_to :root and return
  end


  def join
    @user = User.find(params[:id])

  end

  private
    def create_params
      params.require(:question).permit(:when,:where,:what,:how_much).merge(user_id: current_user.id, group_id: current_user.group_id)
    end
end
