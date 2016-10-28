class Claim < ActiveRecord::Base
  belongs_to :user

  validates :week, :player_add, :bid_amount, presence: true

end
