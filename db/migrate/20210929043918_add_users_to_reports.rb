# frozen_string_literal: true

class AddUsersToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :user_id, :integer, null: false, default: 0
  end
end
