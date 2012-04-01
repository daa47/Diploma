class Price < ActiveRecord::Base
  default_scope order(:value)
  paginates_per 20

  has_many :contracts

  validates :value, :numericality => {:only_integer=>true, :greater_than=>0},
                    :uniqueness => true,
                    :presence => true

  validates :russian_text, :presence => true, 
                           :uniqueness => true,
                           :length => {:in=>3...30}
end
