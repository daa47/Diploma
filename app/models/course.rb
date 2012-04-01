class Course < ActiveRecord::Base
  before_save :change_year
  default_scope order(:start_date)

  belongs_to :discipline
  has_and_belongs_to_many :school_groups
  
  validates :start_date,    :presence => true
  validates :finish_date,   :presence => true
  validates :discipline_id, :presence => true

  def groups_save(ids)
    self.school_group_ids = ids
  end

  def duration
    start_date.strftime("%d.%m.%Y") + " - " + finish_date.strftime("%m.%d.%Y")
  end
  
  private
  
  def change_year
    self.year = self.start_date.year
  end
end
