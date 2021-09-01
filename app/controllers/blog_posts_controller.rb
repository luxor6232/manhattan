class BlogPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :show] #hay que borrarla después de terminar vistas

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post =  BlogPost.new(blog_params)
    @blog_post.user = current_user
    if @blog_post.save
      redirect_to blog_post_path(@blog_post)
    else
      render :new
    end
  end

  def show
    @blog_post =  BlogPost.find(params[:id])
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    redirect_to blog_posts_path
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    @blog_post.update(blog_params)
    if @blog_post.save
      redirect_to blog_post_path(@blog_post)
    else
      render :new
    end
  end

  private

  def blog_params
    params.require(:blog_post).permit(:name, :content)
  end
end
