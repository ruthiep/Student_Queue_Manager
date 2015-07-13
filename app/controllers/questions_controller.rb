class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end 

  def new
    @question = Question.new
    @user = current_user
    #take out here and from form, and add to create
    #@question.user_id = current_user
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to '/questions',
         :notice => "Your question has been added to the queue!"
    else
      render :new
    end
  end
    
  def show
    @question = Question.find(params[:id])
    @name = User.find(@question.user_id)
    @urgency = Urgency.find(@question.urgency_id)
  end
  
  def edit    
    @question = Question.find(params[:id])  
    if (current_user.id != @question.user_id)
      redirect_to '/questions', :notice => "Sorry, you can't edit that question!"
    else
      render :edit
    end
  end
  
  def update
    @question = Question.find(params[:id])

    @question.update_attributes(question_params)
     if (@question.update_attributes(question_params))
       redirect_to '/questions', notice: "The question has now been updated."
     else
        render '/edit', notice: "Please try again."
    end
  end

  private
  def question_params

    params.require(:question).permit(:steps_taken, :expected_results, :actual_results,
           :code_link, :urgency_id, :user_id, :resolved)
  end
end


