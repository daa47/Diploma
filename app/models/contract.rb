# -*- coding: utf-8 -*-
class Contract < ActiveRecord::Base
  default_scope order(:number)
  paginates_per 30

  belongs_to :schoolkid
  belongs_to :price1, :class_name => "Price", :foreign_key => "first_sum"
  belongs_to :price2, :class_name => "Price", :foreign_key => "second_sum"
  has_and_belongs_to_many :disciplines  

  before_save :change_dates  
  
  PERIOD = ["1 год.", "2 года.", "Ускоренник"]
  EDUCATION_TYPE = ["Инженерное", "Экономическое", "Юридическое"]
  TYPES = ["Дополнительное соглашение", "Основной"]
  
  validates :number,   :presence => true,
                       :uniqueness => true,
                       :length => {:in => 3...30}
  
  validates :first_sum,  :presence => true
  validates :second_sum, :presence => true
  
  validates :schoolkid_id,   :presence => true
  validates :education_type, :presence => true, :inclusion => {:in=>0...EDUCATION_TYPE.size}
  validates :ctype,          :presence => true, :inclusion => {:in=>0...TYPES.size}
  validates :period,         :presence => true, :inclusion => {:in=>0...PERIOD.size}
  validates :first_name,     :presence => true, :length => {:in => 2...40}
  validates :second_name,    :presence => true, :length => {:in => 2...40}
  validates :last_name,      :presence => true, :length => {:in => 2...40}

  validates :passport_date,   :presence => true
  validates :passport_number, :presence => true
  validates :passport_series, :presence => true
  validates :passport_place,  :presence => true, :length => {:in => 2...300}
  validates :city,            :presence => true, :length => {:in => 2...200}
  validates :address,         :presence => true, :length => {:in => 2...300}
  validates :telephone,       :presence => true, :format => /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/

  attr_reader :contract_discipline_ids, :schoolkid_tokens

  def russian_month(m)
    case m
    when 1 then m = " января "
    when 2 then m = " февраля "
    when 3 then m = " марта "
    when 4 then m = " апреля "
    when 5 then m = " мая "
    when 6 then m = " июня "
    when 7 then m = " июля "
    when 8 then m = " августа "
    when 9 then m = " сентября "
    when 10 then m = " октября "
    when 11 then m = " ноября "
    when 12 then m = " декабря "
    end 
    return m
  end

  def get_russian_date(date)
    "#{russian_month(date.month)} #{date.year}г."
  end
 
  def get_type?
    PERIOD[ctype]
  end

  def get_contract_type?
    TYPES[ctype]
  end

  def get_education_type?
    EDUCATION_TYPE[education_type]
  end

  def schoolkid_tokens=(id)
    self.schoolkid_id = id
  end

  def fio
    second_name + " " + first_name + " " + last_name
  end
  
  def contract_discipline_ids=(ids)
    self.discipline_ids = ids.split(',')
  end

  private
  
  def change_dates
    cur_date = Time.now
    self.signing_date = cur_date
    self.start_date = Time.mktime(cur_date.year, 9, 1)
    self.finish_date = Time.mktime(cur_date.year+1, 6, 31)
  end
end
