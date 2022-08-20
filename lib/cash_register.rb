
class CashRegister 
    attr_accessor :total, :discount, :title, :price, :quantity, :items, :total_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @total_price = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total_price = price * quantity
        self.total += self.total_price
        quantity.times {self.items << title}
    end

    def apply_discount
        if self.discount > 0
            self.total = self.total - (self.total * self.discount/100)
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end
    def void_last_transaction
        self.total -= self.total_price
    end
end