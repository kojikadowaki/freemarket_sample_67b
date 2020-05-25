class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    if comment.save
      redirect_to "/products/#{comment.product.id}" 
    else
      flash[:unsuccess] = "入力してください"
      redirect_back(fallback_location: root_path )
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
