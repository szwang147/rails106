class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
  @group = Group.new(group_params)
  @group.save
  redirect_to groups_path
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:title, :description)
    # 其实上面 就是rails g model group title:string description:text
  end

end
