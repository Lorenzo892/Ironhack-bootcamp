class Bet < ApplicationRecord
  belongs_to :product

  validate :bet_has_to_be_higher_than_minimum_bet, on: :create

  def bet_has_to_be_higher_than_minimum_bet
    if self.product.minimum_bet == nil || amount < self.product.minimum_bet || self.product.user_id == user_id #|| self.amount.last < amount
      errors.add(:amount, "can't be lower than minimum bet")
    end
  end

end
