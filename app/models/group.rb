# -*- coding: utf-8 -*-
class Group < ActiveRecord::Base
  default_scope order(:number)
  paginates_per 20
  
  belongs_to :course
  has_and_belongs_to_many :schoolkids

  validates :number, :presence => true, 
                     :uniqueness => true, 
                     :length => {:in=>3...30}
  
  validates :course_id, :presence => true
  validates :year,      :numericality => {:only_integer=>true, :greater_than=>1990},  
                        :presence => true

  def discipline_id
    if course_id.blank?
      discipline_id = nil
    else
      Course.find( course_id ).discipline_id
    end
  end

  def discipline_id=(val)
  end 
  
  def self.find_by_year(year)
    where('year = ?', year)
  end
    
  def group_type?
    !gtype ? "ПШ": "ФДО"
  end
  
  def groups_save(ids)
    self.schoolkid_ids = ids
  end 
end
