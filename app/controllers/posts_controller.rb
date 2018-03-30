class PostsController < ApplicationController
  before_action :set_post, except: [:index, :create]

  def import
    # If CSV file has bigger data size then we should import file in backgroung for ex:
    #Post.delay.import(params[:file])
    Post.import(params[:file])
    render json: { success: "csv imported successfully." }, status: :ok
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post, status: :ok
    else
      render json: { errors: post.errors.full_messages }, status: 400
    end
  end

  def delete
    if @post && @post.destroy
      render json: { success: "Post-id #{@post.id} deleted successfully." } , status: :ok
    else
      error_message = @post ? @post.errors.full_messages : "Post not found."
      render json: { errors: error_message }, status: 400
    end 
  end

  def update
    if @post && @post.update_attributes(post_params)
      render json: @post , status: :ok
    else
      error_message = @post ? @post.errors.full_messages : "Post not found."
      render json: { errors: error_message }, status: 400
    end 
  end

  def show
    if @post
      render json: @post, status: :ok
    else
      render json: { errors: "Post not found." }, status: 400
    end
  end

  private

  def post_params
    params.permit(:brand_name, :product_name, :product_desc, :photo_url, :email, :username)
  end

  def set_post
    @post = Post.where(id: params[:id]).first
  end
end
