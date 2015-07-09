class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end 

  def new
    @question = Question.new
  end

  def create
    @user = Question.new(question_params)
    if @question.save
      redirect_to '/questions', :notice => "Signed up!"
    else
      render :new
    end
  end
    
  def show
    @question = Question.find(params[:id])
  end
  
  def edit
    TODO
    @question = Question.find(params[:id])
    #need to fix this one to match to user
  end
  
  def update
    @question = Question.find(params[:id])

    @question.update_attributes(question_params)
     if (@question.update_attributes(question_params))
       redirect_to '/questions', notice: "The item has now been updated."
     else
        render '/edit', notice: "Please try again."
    end
    #edit form updates db
  end

  private
  def question_params
    TODO
    #need to fix this section as well
    params.require(:question).permit(:name, :email, :password,
           :password_confirmation, :crypted_password, :salt )
  end
end


