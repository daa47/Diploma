# -*- coding: utf-8 -*-
class GroupsController < ApplicationController
  before_filter :check_regular_user
  
  def save_data
    @group = Group.find(params[:id])
    @group.groups_save(params[:ids])
    render :nothing=>true
  end
  
  def generate
    @group = Group.includes(:schoolkids).find(params[:id])
    course = Course.includes(:school_groups).find(@group.course_id)
    @schoolkids = Schoolkid.where(:school_group_id => course.school_group_ids).all
    @schoolkids -= @group.schoolkids 
  end

  def index
    @groups = Group.find_by_year(session[:choice_year].to_i).page(params[:page])
  end

  def show
    @group = Group.includes(:course => [:discipline]).find(params[:id])
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
    @school_group = SchoolGroup.where(:year => session[:choice_year].to_i)
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      redirect_to @group, :notice => 'Учебная группа добавлена.'
    else
      render :action => "new"
    end
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      format.html redirect_to @group, :notice => 'Учебная группа сохранена.'
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, :notice => "Учебная группа удаленна"
  end
end
