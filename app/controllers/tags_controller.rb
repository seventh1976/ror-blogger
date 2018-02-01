class TagsController < ApplicationController

  def index
    @tags = Tag.all

  end

  def new
    @tag = Tag.new

  end

  def create
    @tag = Tag.new(params)
    @tag.save

  end

  def show
    @tag = Tag.find(params[:id])

  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "Tag '#{@tag.name}' has been deleted!"

    redirect_to tags_path(@tags)

  end

  private
  def tag_params
    params.require(:tag).permit(:name)

  end
end
