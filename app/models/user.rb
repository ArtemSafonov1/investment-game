class User < ApplicationRecord
  has_one :market, dependent: :destroy

  def buy_tokens(amount_of_dollars, market)
    tokens_to_buy = amount_of_dollars / market.price
    if capital >= amount_of_dollars
      update(capital: capital - amount_of_dollars, amount_of_tokens: amount_of_tokens + tokens_to_buy)
    else
      false
    end
  end
  
  def sell_tokens(amount_of_dollars, market)
    dollars_to_receive = amount_of_dollars * market.price
    if amount_of_tokens >= amount_of_dollars
      update(capital: capital + dollars_to_receive, amount_of_tokens: amount_of_tokens - amount_of_dollars)
    else
      false
    end
  end  

  private

  def create_market
    Market.create(user: self, current_date: 5.years.ago, price: 10)
  end
end
