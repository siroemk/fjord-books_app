# frozen_string_literal: true

class ChangeDataPostalCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :postal_code, :string
  end
end
