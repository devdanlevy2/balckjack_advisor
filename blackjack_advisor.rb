puts "Want to learn how to play blackjack? "
puts "I'm going to tell you whether you should hit, stay, split(splt),  double
down if you can, if not hit(dbl), or double down if you can, if not stay(dblsty) "
puts "also, for J,Q,K enter 10 and for A enter 11 "
puts "what is your first card?"
first_card = gets.chomp
puts "what is your second card?"
second_card = gets.chomp
puts "what is the dealers card?"
dealer_card = gets.chomp
player_total = first_card.to_i + second_card.to_i
player_total = player_total.to_s



hard_deck =
  {"5" => {"2" => "hit", "3" => "hit", "4" => "hit", "5" => "hit", "6" => "hit", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "6" => {"2" => "hit", "3" => "hit", "4" => "hit", "5" => "hit", "6" => "hit", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "7" => {"2" => "hit", "3" => "hit", "4" => "hit", "5" => "hit", "6" => "hit", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "8" => {"2" => "hit", "3" => "hit", "4" => "hit", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "9" => {"2" => "dbl", "3" => "dbl", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "10" => {"2" => "dbl", "3" => "dbl", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "dbl", "8" => "dbl", "9" => "dbl", "10" => "hit", "11" => "hit"},
   "11" => {"2" => "dbl", "3" => "dbl", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "dbl", "8" => "dbl", "9" => "dbl", "10" => "dbl", "11" => "dbl"},
   "12" => {"2" => "hit", "3" => "hit", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "13" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "14" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "15" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "16" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "17" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
   "18" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
   "19" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
   "20" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
   "21" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
 }

soft_deck =
 {"13" => {"2" => "hit", "3" => "hit", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
  "14" => {"2" => "hit", "3" => "hit", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
  "15" => {"2" => "hit", "3" => "hit", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
  "16" => {"2" => "hit", "3" => "hit", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
  "17" => {"2" => "dbl", "3" => "dbl", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
  "18" => {"2" => "sta", "3" => "dblsty", "4" => "dblsty", "5" => "dblsty", "6" => "dblsty", "7" => "sta", "8" => "sta", "9" => "hit", "10" => "hit", "11" => "sta"},
  "19" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "dblsty", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
  "20" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
  "21" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
}

pair_deck =
  {"4" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "6" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "8" => {"2" => "hit", "3" => "hit", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "hit", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "10" => {"2" => "dbl", "3" => "dbl", "4" => "dbl", "5" => "dbl", "6" => "dbl", "7" => "dbl", "8" => "dbl", "9" => "dbl", "10" => "hit", "11" => "hit"},
   "12" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "hit", "9" => "hit", "10" => "hit", "11" => "hit"},
   "14" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "splt", "9" => "hit", "10" => "hit", "11" => "hit"},
   "16" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "splt", "9" => "splt", "10" => "splt", "11" => "splt"},
   "18" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "sta", "8" => "splt", "9" => "splt", "10" => "sta", "11" => "sta"},
   "20" => {"2" => "sta", "3" => "sta", "4" => "sta", "5" => "sta", "6" => "sta", "7" => "sta", "8" => "sta", "9" => "sta", "10" => "sta", "11" => "sta"},
   "22" => {"2" => "splt", "3" => "splt", "4" => "splt", "5" => "splt", "6" => "splt", "7" => "splt", "8" => "splt", "9" => "splt", "10" => "splt", "11" => "splt"},
}


#player_comparison [player_total][dealer_card]


if first_card == second_card
   deck_to_use = pair_deck
   puts deck_to_use[player_total][dealer_card]

elsif first_card == "11" || second_card == "11"
   deck_to_use = soft_deck
   puts deck_to_use[player_total][dealer_card]

else
   deck_to_use = hard_deck
   puts deck_to_use[player_total][dealer_card]

end
