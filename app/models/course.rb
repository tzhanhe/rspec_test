class Course < ActiveRecord::Base

  @@score = 0
  validates :name, length:  5..255
  validates_uniqueness_of :name


  def test
    @@score
  end

  def self.set_score(num)
    @@score +=num
  end

end
