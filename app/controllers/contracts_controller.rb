# -*- coding: utf-8 -*-
class ContractsController < ApplicationController
  before_filter :check_regular_user
  
  def index
    @contracts = Contract.page(params[:page])
  end

  def show
    @contract = Contract.includes(:schoolkid, :disciplines, :price1, :price2).find(params[:id])
    @schoolkid = @contract.schoolkid
    respond_to do |format|    
      format.pdf { 
        if @contract.ctype == 1
          render 'main.pdf.erb'
        else
          @main_contract = Contract.where('schoolkid_id = ? AND ctype = 1', @schoolkid.id).first
          render 'addition.pdf.erb'
        end
      }
      format.html
    end
  end
  
  def new
    @contract = Contract.new
  end
  
  def edit
    @contract = Contract.includes(:disciplines).find(params[:id])
  end
  
  def create
    @contract = Contract.new(params[:contract])
    if @contract.save
      redirect_to @contract, :notice => 'Контракт добавлен.'
    else
      render :action => "new"
    end
  end
  
  def update
    @contract = Contract.find(params[:id])
    if @contract.update_attributes(params[:contract])
      redirect_to @contract, :notice => 'Контракт сохранен.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to contracts_url, :notice => 'Контракт удален.'
  end
end
