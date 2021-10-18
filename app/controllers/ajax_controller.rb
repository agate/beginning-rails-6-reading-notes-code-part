class AjaxController < ApplicationController
  def index
  end

  def comments 
    @comments = session[:comments] ||= []
  end

  def new_comment
  end

  def create_comment
    @comment = params[:comment]
    comments = session[:comments] ||= []
    comments.push(@comment)
  end

  def delete_comment
  end
end
