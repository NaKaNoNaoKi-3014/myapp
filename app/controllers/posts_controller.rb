class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc') # postsテーブルのすべてのレコードを持ってきて新しい順にソート
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def create
        # render plain: "受信パラメーター: #{params}"
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path
        else
            render "new"
        end
    end
    
    def new
        @post = Post.new
    end

private
    
    def post_params
        params.require(:post).permit(:title, :body)
    end

end