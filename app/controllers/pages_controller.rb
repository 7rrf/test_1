class PagesController < ApplicationController
  def home
    @setting = Setting.all
  	
  end

  def news
  	@posts = Post.all

  end

  def about
    @setting = Setting.all
  end

  def contact
    @setting = Setting.all
  end
end
