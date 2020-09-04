class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to feeds_path, notice: 'プロフィール投稿に成功しました'
  end
end
def profile_params
  params.require(:profile).permit(:image, :image_cache, :nickname, :content)
end
