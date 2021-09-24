# frozen_string_literal: true

class CommentsController < ApplicationController
  # POST /reports/1/comments
  # POST /books/1/comments
  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @commentable, notice: t('comments.create.notice')
    else
      redirect_to @commentable, notice: t('comments.create.errors')
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
