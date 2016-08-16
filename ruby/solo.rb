=begin

class therapybot
	attributes: botname, depressionscore, cashbalance

	methods: do therapy, charge money (money), do meditation

=end



class Therapy_bot
	attr_accessor :bot_name, :depression_score
	attr_reader :cash_balance

	def initialize(name, score, cash)
		p "initializing bot..."
		@bot_name = name
		@depression_score = score
		@cash_balance = cash
	end

	def do_therapy
		p "Doing therapy now."
	end

	def do_meditation
		p "Doing meditation now."
	end

	def charge_money(money)
		@cash_balance = @cash_balance-money
		p "You have been charged #{money}. Your current balance is #{@cash_balance}."
	end

end

tbot = Therapy_bot.new("Tbot", 5, 100)

tbot.do_therapy
tbot.do_meditation
tbot.charge_money(10)
p "name: #{tbot.bot_name} depression score: #{tbot.depression_score} balance: #{tbot.cash_balance}"






