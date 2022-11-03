require "pry"

class CashRegister 
 
attr_accessor :discount, :total, :items, :last_transaction

    def initialize discount=0
        self.discount=discount
        self.total = 0
        self.items = []
    end

   

    def add_item title, price, quantity=1
self.last_transaction = price * quantity
        self.total += self.last_transaction
quantity.times {self.items << title} 
       
    end

    def apply_discount 
        if self.discount == 0  
            "There is no discount to apply."
        else
        self.total = self.total - self.total * self.discount / 100
        "After the discount, the total comes to $#{self.total.to_i}."   
    end
end

def void_last_transaction
    self.total -= self.last_transaction
end
end 

binding.pry