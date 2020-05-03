class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

  def logout
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end
  
end
