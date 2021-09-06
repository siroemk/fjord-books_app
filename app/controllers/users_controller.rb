# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.with_attached_avatar.order(:id).page(params[:page])
  end

  def show
    @user = User.find(params[:id])
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
