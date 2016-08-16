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



=begin
# test code:
tbot = Therapy_bot.new("Tbot", 5, 100)
tbot.do_therapy
tbot.do_meditation
tbot.charge_money(10)
p "name: #{tbot.bot_name} depression score: #{tbot.depression_score} balance: #{tbot.cash_balance}"
=end


# allowing user to create therapy bots

tbot_ary = []

p "Welcome to therapy bot creator. To begin, enter the name of your bot. Type 'done' to quit."
name = gets.chomp

until name == "done"

	p "Now enter your depression score (1-10, 10=most depressed)."
	depression_score = gets.chomp.to_i

	p "Now enter your cash balance."
	cash_balance = gets.chomp.to_f

	tbot = Therapy_bot.new(name, depression_score, cash_balance)
	tbot_ary << tbot

	p "Now enter the name of your next therapy bot. Type 'done' to quit."
	name = gets.chomp

end

# iterating through array to print attributes of each bot
tbot_ary.each { |tbot_instance| 
	p ' '
	p 'Name of bot: #{tbot_instance.bot_name}'
	p 'Depression score: #{tbot_instance.depression_score}'
	p 'Cash balance: #{tbot_instance.cash_balance}'
}



