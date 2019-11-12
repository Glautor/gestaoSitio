class Cashier < ApplicationRecord
	after_save :increase_total
	before_destroy :disincrease_total
	def increase_total
		unless CashierFollow.last
			CashierFollow.create(cashier: self, total: self.lancamento)
		else
			if CashierFollow.where(cashier_id: self).last
				CashierFollow.last.update(total: CashierFollow.last.total - CashierFollow.where(cashier_id: self).last.total + self.lancamento)
			else
				CashierFollow.create(cashier: self, total: CashierFollow.last.total + self.lancamento)
			end
		end
	end

	def disincrease_total
		if CashierFollow.last
			Cashier.update(CashierFollow.last.total - self.lancamento)
		end
	end
end
