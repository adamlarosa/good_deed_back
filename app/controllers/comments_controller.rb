class CommentsController < ApplicationController
    def index
        if params['caseId']
            thisCase = Case.find(params['caseId'])
            render json: { comments: thisCase.comments, author: 'derp' }
        else
            render json: { message: 'YOU DID IT!  THIS IS COMMENTS!'}
        end
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            render json: { 
                comment: CommentSerializer.new(@comment),
                # yeah great it returns the author.  how about saving it to the database?
                author: @user.username    
            }, status: :created
        else
            render json: { message: 'COMMENT CREATION FAILURE' }, status: :not_created
        end
    end

    private
    def comment_params
      params.require(:comment).permit(:case_id, :content, :author)
    end
end
