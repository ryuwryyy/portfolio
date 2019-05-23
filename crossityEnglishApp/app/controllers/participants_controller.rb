class ParticipantsController < ApplicationController
  def create
    @participant = Participant.new
    @question = Question.find(params[:question_id])

    Participant.create(user_id: params[:user_id], question_id:params[:question_id], number: params[:number], nickname: params[:nickname])
    @users = Participant.where(question_id: @question.id)
    redirect_to :root and return
  end

  def update
    @participant =Participant.create
  end

  def destroy
  @question = Question.find(params[:id])
  @question.participants.find_by(user_id:current_user.id).destroy
  redirect_to :root and return
  end

  def show
    @users = User.where()
    @question = Question.find(params[:id])

  end
end


