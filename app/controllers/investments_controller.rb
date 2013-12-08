class InvestmentsController < ApplicationController

def new
    @investment = Investment.new
  end
  
def create
    @investment = Investment.new(investment_params)
	
	if @investment.save
      redirect_to @investment
    else
      render 'new'
    end
  end
  
  def show
    @investment = Investment.find(params[:id])
  end
  
  def edit
    @investment = Investment.find(params[:id])
  end
  
  def update
    @investment = Investment.find(params[:id])
	
	if @investment.update(investment_params)
      redirect_to @investment
    else
      render 'edit'
    end
  end
  
  def index
    @investments = Investment.order("created_at desc").limit(10)
  end
  
  def destroy
    @investment = Investment.find(params[:id])
    @investment.destroy
    redirect_to questions_path
  end
  
  private
    def investment_params
      params.require(:investment).permit(:subject, :amount)
    end
  
end

