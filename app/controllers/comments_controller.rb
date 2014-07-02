class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(comment_params)
		redirect_to @post, :notice => "Create comment!"
	end

	private

	def comment_params
		 params.require(:comment).permit(:author, :body)
	end
end
