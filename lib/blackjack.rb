def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  new_card=rand(11) + 1
  
  return new_card
end

def display_card_total
  # code #display_card_total here
  puts "Your card adds up to ${card_total}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum=0 
  2.times do 
    card=deal_card
    sum+= card
  end
  display_card_total(sum)
  return sum
end

def hit?
  # code hit? here
  prompt_user
  user_input=get_user_input
  if user input ="s"
    current_card_total
  else if user_input="h"
    current_card_total+=deal_card
  else invalid_command
    prompt_user
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
  card_total=initial_round
  until card_total > 21
  card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
  
end
    
