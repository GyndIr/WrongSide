class CommentsController < ApplicationController
    def create
        @chydak = Chydak.find(params[:chydak_id])
        @comment = @chydak.comments.create(comment_params)
        redicred_to chydak_path(@chydak)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
