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
    
  end
  
  def update
    @question = Question.find(params[:id])

    @question.update_attributes(question_params)
     if (@question.update_attributes(question_params))
       redirect_to '/questions', notice: "The question has now been updated."
     else
        render '/edit', notice: "Please try again."
    end
    #edit form updates db
  end

  private
  def question_params

    #need to fix this section as well
    params.require(:question).permit(:steps_taken, :expected_results, :actual_results,
           :code_link, :urgency_id, :user_id, )
  end
end


