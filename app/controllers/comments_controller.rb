# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_comment, only: %i[edit update destroy]
  before_action :correct_user, only: %i[edit update destroy]

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @commentable, notice: t('comments.create.notice')
    else
      flash.now[:alert] = @comment.errors.full_messages.first
      render @template
    end
  end

  def destroy
    @comment.destroy
    redirect_to @commentable
  end

  def edit; end

  def update
    if @comment.update(comment_params)
      redirect_to @commentable, notice: t('controllers.common.notice_update', name: Comment.model_name.human)
    else
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def correct_user
    comment = Comment.find(params[:id])
    redirect_to(root_url) unless comment.user_id == current_user.id
  end
end
