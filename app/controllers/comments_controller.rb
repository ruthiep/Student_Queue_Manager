class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end 

  def new
    @comment = Comment.new
    @user = current_user
    #take out here and from form, and add to create
    #@question.user_id = current_user
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to '/comments',
         :notice => "Your comment has been posted to the question!"
    else
      render :new
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
    @name = User.find(@comment.user_id)
    @urgency = Urgency.find(@comment.urgency_id)
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
    params.require(:comment).permit(:steps_taken, :expected_results, :actual_results,
           :code_link, :urgency_id, :user_id, )
  end
end




