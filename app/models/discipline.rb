class Discipline < ActiveRecord::Base
  default_scope order(:full_name)

  has_many :courses, :dependent => :destroy
  has_and_belongs_to_many :contracts

  validates :full_name, :presence => true, 
                        :uniqueness => true, 
                        :length => {:in=>3...50}
  
  validates :short_name, :presence => true,
                         :uniqueness => true, 
                         :length => {:in=>2...30}
end
