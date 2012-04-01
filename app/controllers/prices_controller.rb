# -*- coding: utf-8 -*-
class PricesController < ApplicationController

  def index
    @prices = Price.page(params[:page])
  end

  def show
    @price = Price.find(params[:id])
  end


  def new
    @price = Price.new
  end

  def edit
    @price = Price.find(params[:id])
  end

  def create
    @price = Price.new(params[:price])
    if @price.save
      redirect_to @price, :notice => "Стоимость добавлена."
    else
      render :action => "new"
    end
  end

  def update
    @price = Price.find(params[:id])
    if @price.update_attributes(params[:price])
      redirect_to @price, :notice => "Стоимость сохранена."
    else
      render :action => "edit"
    end
  end

  def destroy
    @price = Price.find(params[:id])
    @price.destroy
    redirect_to prices_url, :notice => "Стоимость удалена."
  end
end
