class CreditCard
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end
  
  def limit
    @limit
  end

  def is_valid?
    doubled_nums = @card_number.chars.reverse.map.with_index do |num, index|
      if index%2 == 1
        num = num.to_i * 2
        if num > 9
          num - 9
        else
          num
        end
      else
        num.to_i
      end
    # need to sum the digits
    end.sum
    # check if sum is divisible by 10
    return doubled_nums % 10 == 0
  end
end