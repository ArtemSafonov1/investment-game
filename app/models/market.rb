# frozen_string_literal: true

class Market < ApplicationRecord
  belongs_to :user

  def calculate_next_date
    new_date = current_date + 1.day

    new_price = VolatilityService.simulate

    update(current_date: new_date, price: new_price)
    price_history << { date: new_date.strftime('%d %b'), price: new_price.to_f }
    save
  end
end
