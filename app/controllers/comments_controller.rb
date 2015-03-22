class CommentsController < ApplicationController
	def create
		# debugger
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		# debugger
		redirect_to @post
	end

	private
	def comment_params
		params.require(:comment).permit(:body)
	end
end
