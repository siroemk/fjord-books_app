# frozen_string_literal: true

class Books::CommentsController < CommentsController
  before_action :set_commentable
  before_action :set_rendar

  private

  def set_commentable
    @commentable = Book.find(params[:book_id])
    @book = @commentable
  end

  def set_rendar
    @template = 'books/show'
  end
end
