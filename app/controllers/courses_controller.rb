# -*- coding: utf-8 -*-
class CoursesController < ApplicationController
  before_filter :check_regular_user

  def save_data
    @course = Course.find(params[:id])
    @course.groups_save(params[:ids])
    render :layout=> nothing
  end
  
  def generate
    @course = Course.includes(:school_groups).find(params[:id])
    @school_group = SchoolGroup.find_by_year(session[:choice_year].to_i)
    @school_group -= @course.school_groups 
  end

  def index
    @disciplines = Discipline.includes(:courses).where('courses.year = ?', session[:choice_year].to_i).all
  end

  def show
    @course = Course.includes(:discipline).find(params[:id])
    @dis = @course.discipline
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, :notice => 'Курс дисциплины добавлен.'
    else
      render :action => "new"
    end
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to @course, :notice => 'Курс сохранен.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_url, :notice => 'Курс удален.'
  end
end
