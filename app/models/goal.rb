class Goal < ApplicationRecord
  belongs_to :user

  before_save :account


  def account
    exp_duration = (self.opt_assessment + (4 * self.nom_rating) + self.pes_assessment) / 6
    pos_deviation = (self.pes_assessment - self.opt_assessment) / 6
    self.exp_duration = exp_duration.round(3)
    self.pos_deviation = pos_deviation.round(3)
  end
end
