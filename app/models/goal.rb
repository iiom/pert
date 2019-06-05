class Goal < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: {maximum: 15, message: 'не больше 15 символов'}

  #float не робит или devise валидирует на integer only хоть и стоит формат float
  validates :opt_assessment, :nom_rating, :pes_assessment,
            numericality: { only_float: true, :greater_than_or_equal_to => 0 }

  validates :act_duration, presence: true, numericality: { only_float: true, :greater_than_or_equal_to => 0 }

  before_save :account

  #расчёт ожидаемой продолжительности и возможного отклонения
  def account
    exp_duration = (self.opt_assessment + (4 * self.nom_rating) + self.pes_assessment) / 6
    pos_deviation = (self.pes_assessment - self.opt_assessment) / 6
    self.exp_duration = exp_duration.round(3)
    self.pos_deviation = pos_deviation.round(3)
  end

  # def sd
  #   self.act_duration.try_update
  # end
end
