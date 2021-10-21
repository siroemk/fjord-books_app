# frozen_string_literal: true

require 'application_system_test_case'

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:report)

    visit root_path
    fill_in 'Eメール', with: 'alice@example.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
  end

  test 'visiting the index' do
    visit reports_url
    assert_selector 'h1', text: '日報'
  end

  test 'creating a Report' do
    visit reports_url
    click_on '新規作成'

    fill_in 'タイトル', with: '学習2日目'
    fill_in '内容', with: '面白かったです！'
    click_on '登録する'

    assert_text '日報が作成されました。'
    assert_text 'alice'
    assert_text '学習2日目'
    assert_text '面白かったです！'
  end

  test 'updating a Report' do
    visit reports_url
    click_on '編集'

    fill_in 'タイトル', with: '学習2日目(追記）'
    fill_in '内容', with: '追記します'
    click_on '更新する'

    assert_text '日報が更新されました。'
    assert_text '学習2日目(追記）'
    assert_text '追記します'
  end
end
