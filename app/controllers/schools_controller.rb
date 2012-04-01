# -*- coding: utf-8 -*-
class SchoolsController < ApplicationController
  before_filter :check_regular_user

  def index
    respond_to do |format|
      format.html{ @schools = School.page(params[:page]).order(:number)}
      format.json do
        @schools = School.where("lower(number) LIKE lower(?)", "%#{params[:q]}%").all
        render :json => @schools.map(&:attributes)
      end
    end
  end

  def show
    @school = School.includes(:school_groups).where('schools.id = ? AND school_groups.year = ?', params[:id], session[:choice_year].to_i).first
  end

  def new
    @school = School.new
  end

  def edit
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      redirect_to @school, :notice => 'Школа добавлена.'
    else
      render :action => "new"
    end
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      redirect_to @school, :notice => 'Школа сохранена.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_url, :notice => 'Школа удалена.'
  end
end
