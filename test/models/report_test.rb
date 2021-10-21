# frozen_string_literal: true

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  test '#editable?' do
    me = User.create(email: 'me@example.com', password: 'password')
    she = User.create(email: 'she@example.com', password: 'password')
    report = Report.create(user_id: me.id, title: '日報タイトル', content: '日報内容')

    assert report.editable?(me)
    assert_not report.editable?(she)
  end
end
