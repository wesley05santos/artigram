class FriendsArticlesController < ApplicationController
  def index
    @friends_articles = Article.all.where.not(user_id: current_user.id)
  end
end
