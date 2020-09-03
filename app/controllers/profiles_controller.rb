class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to user_path(@profile.user_id), notice: 'プロフィール投稿に成功しました'
    else
      redirect_to user_path(@profile.user_id), notice: 'プロフィール投稿に失敗しました'
    end
  end
end
def profile_params
  params.require(:profile).permit(:image, :image_cache, :nickname, :content, :user_id)
end
