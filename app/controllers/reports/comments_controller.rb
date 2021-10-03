# frozen_string_literal: true

class Reports::CommentsController < CommentsController
  before_action :set_commentable
  before_action :set_template

  private

  def set_commentable
    @commentable = Report.find(params[:report_id])
    @report = @commentable
  end

  def set_template
    @template = 'reports/show'
  end
end
