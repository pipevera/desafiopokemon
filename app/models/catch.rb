class Catch < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  after_create :level_start

  def level_start
    if self.level.nil?
      self.level = 1
      self.save
    end
  end
end
