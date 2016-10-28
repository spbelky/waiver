class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :claims

  validates :first_name, :team_name, presence: true
  validates :email,
    length: {minimum: 3, maximum: 254},
    uniqueness: true,
    allow_blank: false

end
