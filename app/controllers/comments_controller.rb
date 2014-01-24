class CommentsController < ApplicationController
	skip_before_filter :require_login
        def create
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create!(params[:comment])
                redirect_to @post
        end
end

