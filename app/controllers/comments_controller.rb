class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comments: (params[:comments]))
        render json: comment
    end

    private
    def comment_params
        params.require(:comment).permit(:comments, :movie_id, :user_id)
    end
end
