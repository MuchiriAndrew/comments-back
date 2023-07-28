
class CommentsController < ApplicationController
    # GET /comments
    def index
      @comments = Comment.all
      render json: @comments
    end
  
    # GET /comments/:id
    def show
      @comment = Comment.find(params[:id])
      render json: @comment
    end
  
    # POST /comments
    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment, status: :created
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /comments/:id
    def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        render json: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /comments/:id
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json: { message: 'Comment was successfully destroyed.' }
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:user_id, :content, :score, :timestamp)
    end
  end
  