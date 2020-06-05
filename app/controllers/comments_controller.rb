class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment_id = comment.product.id
    if comment.save
      redirect_to product_path(comment_id)
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
