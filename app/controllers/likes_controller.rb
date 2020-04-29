class LikesController < ApplicationController
  def create
    # like가 있는지 검사하는 코드
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    
    if like.present?
      like.destroy
    else
      Like.create(post_id: params[:post_id], user_id: current_user.id)
    end
    
    redirect_back(fallback_location: root_path)
  end
end
