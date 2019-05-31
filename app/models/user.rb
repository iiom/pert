class User < ApplicationRecord

  has_many :goals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #без смысла, валидация от devise
  # validates :email, presence: true, uniqness: true,
  #           format: {with: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, message: 'email format only'}
end
