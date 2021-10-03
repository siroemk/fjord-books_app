# frozen_string_literal: true

class Books::CommentsController < CommentsController
  before_action :set_commentable
  before_action :set_template

  private

  def set_commentable
    @commentable = Book.find(params[:book_id])
    @book = @commentable
  end

  def set_template
    @template = 'books/show'
  end
end
