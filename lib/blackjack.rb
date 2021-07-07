def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  n = rand(11) + 1
  #puts n 
  return n
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  2.times do 
    card = deal_card
    sum += card
    #puts sum
  end
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  
  input = get_user_input
  
  total = card_total
  if input == 'h'
    total += deal_card
  elsif input == 's'
    total = card_total
  else
    return invalid_command
    prompt_user
  end
  #display_card_total(total)
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  while(hand <= 21)
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
