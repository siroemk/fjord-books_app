# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :find_user, only: %i[show followings followers]
  def index
    @users = User.with_attached_avatar.order(:id).page(params[:page])
  end

  def show
    @user
  end

  def followings
    @followers = @user.follower_users
  end

  def followers
    @followings = @user.following_users
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
