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

  test '#created_on' do
    me = User.create(email: 'me@example.com', password: 'password')
    my_report = Report.create(user_id: me.id, title: '日報タイトル', content: '日報内容')

    assert_not_equal Date, my_report.created_at.class
    assert_equal Date, my_report.created_on.class
  end
end
