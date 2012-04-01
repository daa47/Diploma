# -*- coding: utf-8 -*-
class SchoolGroup < ActiveRecord::Base
  default_scope order(:number)
  paginates_per 30

  before_create :change_number
  has_many :schoolkids, :dependent => :destroy
  has_and_belongs_to_many :courses
  belongs_to :school
  
  validates :number, :presence => true,  
                     :length=>{:in => 3..20}

  validates :year,      :numericality => {:only_integer=>true, :greater_than=>1990}
  validates :school_id, :presence => true

  attr_reader :school_tokens, :name

  def name
    self.number + " " + self.year.to_s
  end

  def attributes 
    {
      'id' => id,
      'name' => name
    }
  end

  def self.find_by_year(year)
    where('year = ?', year)
  end
  
  def school_group_type?
    !stype ? "ПШ": "ФДО"
  end
 
  def school_tokens=(ids)
    self.school_id = ids
  end

  private
  
  def change_number
    school = School.find(self.school_id)
    self.number += "-#{school.school_type?}(#{school.number})"
  end
end
