# frozen_string_literal: true

class ChangeColumnToNotNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :comments, :user_id, true
  end

  def down
    change_column_null :comments, :user_id, false
  end
end
