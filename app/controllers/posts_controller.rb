class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc') # postsテーブルのすべてのレコードを持ってきて新しい順にソート
    end
    
    def show
        @post = Post.find(params[:id])
    end

end