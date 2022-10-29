class CommentController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
    
        if @comment.save
          redirect_to @comment
        end
      end
    
      private
    
      def comment_params
        params.require(:comment).permit(:description)
      end
end
