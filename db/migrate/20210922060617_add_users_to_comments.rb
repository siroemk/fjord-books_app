# frozen_string_literal: true

class AddUsersToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :user_id, :integer, null: false, default: 0
  end
end
