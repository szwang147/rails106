class WelcomeController < ApplicationController
  def index
    flash[:notice] = "morining"
    flash[:warning] = "warning"
    flash[:alert] = "alert"
  end
end


class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end
  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :edit
    end
end

def update
  @group = Group.find(params[:id])
  if @group.save(group_params)
    redirect_to groups_path, notice:'update success'
  else
    render :edit
end
end

def destroy
  @group = Group.find(params[:id])
  @group.destroy
  redirect_to groups_path, alert: "deleted success"
end

  private

  def group_params
    params.require(:group).permit(:title, :description)
  end

end


class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
  end
end

  def update
    @group = Group.find(params[:id])
    if @group.update
      redirect_to groups_path notice: "update"
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
      redirect_to groups_path, alert: "deleted"
  end
  private
  def group_params
    params.require(:group).permit(:title, :description)
  end
end 6min50seconds


class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
  end

  def update
    @group = Group.find(parmas[:id])
    if @group.save
      redirect_to groups_path, notice:"updated"
    else
      render: edit
    end
  end

  def destroy
    @group = Group.find(parmas[:id])
    @group.destroy
      redirect_to groups_path, warning:"deteled"
    end

  private
  def group_params
    params.require(:group).permit(:title, :description)
  end
end 7min17seconds
