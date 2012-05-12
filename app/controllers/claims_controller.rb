class ClaimsController < ApplicationController
  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(params[:claim])
    if @claim.save
      flash[:success] = "Kérelem benyújtva"
      redirect_to @claim
    else
      render 'new'
    end
  end

  def show
    @claim = Claim.find(params[:id])
  end
end
