class Key < ApplicationRecord
  
  has_many :histories
  
  def recent_user
    histories = History.where(key: self, ended_at: nil).order(created_at: :desc)
    if histories.present?
      return histories.first.user
    else
      return nil
    end
  end
  
  def status_now
    if self.status == 10
      return :exist
    elsif self.status == 20
      return :lent
    elsif self.status == 90
      return :lost
    end
  end
  
  def lent    
    self.status = 20
  end
  
  def replace
    self.status = 10
  end
  
  def lost
    self.status = 90
  end
  
end