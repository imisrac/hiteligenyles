class ClaimsController < ApplicationController
  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(params[:claim])
    if @claim.save
      if @claim.mortgage?
        redirect_to mortgageform_path
      else
        flash[:success] = "Kerelem elkuldve"
        redirect_to @claim
      end
    else
      render 'new'
    end
  end

  def show
    @claim = Claim.find(params[:id])
  end
end
