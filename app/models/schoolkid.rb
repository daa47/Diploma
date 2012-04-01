class Schoolkid < ActiveRecord::Base
  default_scope order(:second_name, :first_name)
  paginates_per 40

  belongs_to :school_group
  belongs_to :school
  has_and_belongs_to_many :groups
  has_many :contracts, :dependent => :destroy
 
  validates :first_name,      :presence => true, :length => {:in=>2...30}
  validates :second_name,     :presence => true, :length => {:in=>2...30}
  validates :last_name,       :presence => true, :length => {:in=>2...30}
  validates :birthday,        :presence => true
  validates :addres,          :presence => true, :length => {:in=>2...300}
  validates :school_group_id, :presence => true
  validates :telephone,       :presence => true, :format => /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/
  
  attr_reader :school_group_tokens, :name

  def fio
    second_name + " " + first_name + " " + last_name 
  end
  
  def name
    self.fio + " " + self.school_group.number
  end

  def attributes 
    {
      'id' => id,
      'name' => name
    }
  end

  def school_group_tokens=(ids)
    self.school_group_id = ids
  end

  def self.search(fname, sname, lname)
    if (!fname.blank? or !sname.blank? or !lname.blank?) 
      where('lower(first_name) LIKE lower(?) AND lower(second_name) LIKE lower(?) AND lower(last_name) LIKE lower(?)', "%#{fname}%", "%#{sname}%", "%#{lname}%")
    end
  end
end
