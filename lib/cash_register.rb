require 'pry'

class CashRegister

    attr_accessor :discount, :total, :last_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total = total + price * quantity
        i = 1
        while i <= quantity
            @items << title
            i += 1
        end
        @last_price = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total = total - total * discount/100
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = total - @last_price
    end

end

# binding.pry
# 0