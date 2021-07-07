def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  firstHand = deal_card + deal_card
  display_card_total(firstHand)
  return firstHand
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total+= deal_card
  elsif input == 's'
  card_total
  else 
  invalid_command
  hit?
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  handTotal = initial_round
  until handTotal > 21
     handTotal = hit?(handTotal)
    display_card_total(handTotal)
 end
    end_game(handTotal)
end

    
