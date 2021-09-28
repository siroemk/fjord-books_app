# frozen_string_literal: true

class Reports::CommentsController < CommentsController
  before_action :set_commentable
  before_action :set_rendar

  private

  def set_commentable
    @commentable = Report.find(params[:report_id])
    @report = @commentable
  end

  def set_rendar
    @template = 'reports/show'
  end
end
