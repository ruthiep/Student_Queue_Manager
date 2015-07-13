class CommentsController < ApplicationController


  def index
    @comments = Comment.where(question_id: params[:question_id])
  end 

  def new
    @comment = Comment.new
    @user = current_user
    @question_id = params[:question_id]
    #take out here and from form, and add to create
    #@question.user_id = current_user
  end

  def create
    @comment = Comment.new(comment_params)
    # this doesn't work
    # @comment.user_id = current_user.id
    if @comment.save
      redirect_to '/questions',
         :notice => "Your comment has been posted to this question!"
    else
      render :new
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
    @name = User.find(@comment.user_id)
    @question =  Question.find(@comment.question_id)
  end

  def edit
    @comment = Comment.find(params[:id])
  
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.update_attributes(comment_params)
     if (@comment.update_attributes(comment_params))
       redirect_to '/comments', notice: "The comment has now been updated."
     else
        render '/edit', notice: "Please try again."
    end
    #edit form updates db
  end

  private
  def comment_params

    #need to fix this section as well
    params.require(:comment).permit(:answer, :question_id, :user_id, )
  end
end




