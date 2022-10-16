class ChydakController < ApplicationController

  http_basic_authenticate_with name: "dhh", 
  password: "secret", except: [:index, :show]

  def Vtapke
    @chydak=Chydak.all
  end
     
  def show
    @chydak = Chydak.find(params[:id])
  end

  def new
    @chydak = Chydak.new
  end

  def create
    @chydak = Chydak.new(chydak_params)

    if @chydak.save
      redirect_to @chydak
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @chydak=Chydak.find(params[:id])
  end

  def update
    @chydak=Chydak.find(params[:id])

    if @chydak.update(chydak_params)
      redirect_to @chydak
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @chydak=Chydak.find(params[:id])
    @chydak.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def chydak_params
    params.require(:chydak).permit(:title, :body, :status)
  end
end
