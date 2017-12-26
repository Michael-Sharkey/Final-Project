class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    get_journal
    @comment = @journal.comments.new
  end

  def create
    get_journal
    @comment = @journal.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to current_user, notice: 'Success!'
    else
      render 'new', notice: 'Something Went Wrong'
    end
  end

  private

    def get_journal
      @journal = Journal.find(params[:journal_id])
    end

    def comment_params
      params.require(:comment).permit(:id, :journal_id, :user_id, :title, :body)
    end

  end
