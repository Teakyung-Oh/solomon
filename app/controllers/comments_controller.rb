class CommentsController < ApplicationController
  def create
    # 특정 글의 댓글을 저장한다
    # Comment.create(user_name: params[:user_name], body: params[:body], post_id: params[:post_id])
    
    # 1.특정 글을 가져온다.
    post = Post.find(params[:post_id])
    # 2. 특정 글의 댓글을 저장한다.
    post.comments.create(body: params[:body], user_id: current_user.id)
    
    
    # 요청했던 전 페이지로 이동한다.
    redirect_back(fallback_location: root_path)
  end
end
