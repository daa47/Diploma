# -*- coding: utf-8 -*-
class SchoolkidsController < ApplicationController
  before_filter :check_regular_user

  def search
    @search = Schoolkid.search(params[:first_name], params[:second_name], params[:last_name])
  end
  
  def index
    respond_to do |format|
      format.html {
        @groups = Group.includes(:schoolkids).where('year = ?', session[:choice_year]).all
      }
      format.json do
        @schoolkids = Schoolkid.includes(:school_group).where("lower(second_name) LIKE lower(?) OR lower(first_name) LIKE lower(?) OR lower(school_groups.number) LIKE lower(?)", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%").all
        render :json => @schoolkids.map(&:attributes)
      end
    end
  end

  def show
    @schoolkid = Schoolkid.includes(:school_group, :contracts).find(params[:id])
  end

  def new
    @schoolkid = Schoolkid.new
  end

  def edit
    @schoolkid = Schoolkid.includes(:school_group).find(params[:id])
  end

  def create
    @schoolkid = Schoolkid.new(params[:schoolkid])
    if @schoolkid.save
      redirect_to @schoolkid, :notice => 'Школьник добавлен.'
    else
      render :action => "new"
    end
  end

  def update
    @schoolkid = Schoolkid.includes(:school_group).find(params[:id])
    if @schoolkid.update_attributes(params[:schoolkid])
      redirect_to @schoolkid, :notice => 'Школьник сохранен.'
    else
      render :action => "edit" 
    end
  end

  def destroy
    @schoolkid = Schoolkid.find(params[:id])
    @schoolkid.destroy
    redirect_to schoolkids_url, :notice=>"Школьник удален."
  end

  def change_session_year
    session[:choice_year] = params[:chosen_year].to_i
    @current_year = params[:chosen_year].to_i
    render :layout=>false
  end
  
  def create_contract
    @schoolkid = Schoolkid.find(params[:id])
    @contract = @schoolkid.contracts.build
  end 
end
