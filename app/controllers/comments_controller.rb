class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", 
  password: "secret", only: :destroy

  def create
    @chydak = Chydak.find(params[:chydak_id])
    @comment = @chydak.comments.create(comment_params)
        redicred_to chydak_path(@chydak)
  end

  def destroy
    @chydak = Chydak.find(params[:chydak_id])
    @comment = @chydak.comments.find(params[:id])
    @comment.destroy
    redirect_to chydak_path(@chydak), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
