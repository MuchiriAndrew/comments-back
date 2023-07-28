
class RepliesController < ApplicationController
    # GET /replies
    def index
      @replies = Reply.all
      render json: @replies
    end
  
    # GET /replies/:id
    def show
      @reply = Reply.find(params[:id])
      render json: @reply
    end
  
    # POST /replies
    def create
      @reply = Reply.new(reply_params)
      if @reply.save
        render json: @reply, status: :created
      else
        render json: @reply.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /replies/:id
    def update
      @reply = Reply.find(params[:id])
      if @reply.update(reply_params)
        render json: @reply
      else
        render json: @reply.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /replies/:id
    def destroy
      @reply = Reply.find(params[:id])
      @reply.destroy
      render json: { message: 'Reply was successfully destroyed.' }
    end
  
    private
  
    def reply_params
      params.require(:reply).permit(:user_id, :content, :score, :parent_comment_id, :timestamp)
    end
  end
  
