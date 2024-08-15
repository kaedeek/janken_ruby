def janken
	puts "最初はグー、じゃんけん..."
	puts "[0]:✊\n[1]:✌\n[2]:✋"
	
	player_hand = gets.to_i

	program_hand = rand(3)

	if player_hand > 2
		puts "無効だよ。"
		return true
end
janken_hand_list =["✊","✌","✋"]

puts "Your hand:#{janken_hand_list[player_hand]}, computer hand:#{janken_hand_list[program_hand]}"

if player_hand == program_hand
	puts "あいこだよ！"
	return true
elsif (player_hand == 0 && program_hand == 1) ||(player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
	puts "あなたの勝ちです"
	return false
else
	puts "負け"
	return false
end
end

next_game = true

while  next_game
	next_game = janken
		
end