def theCray(text)
	texts = text.split(/\W+/).sort
	list = Hash.new 0
	texts.each do |text|
		list[text] += 1
	end
	puts list
	highest = list.values.max
	puts "The most used word is #{list.key(highest).upcase} and it was repeated #{highest} times"

	puts "Would you like to see how many times a specific word been used?"
	input = gets.chomp.upcase
	if input == "YES"
		puts "type the specific key *CASE SENSITIVE*"
		x = gets.chomp
		puts list[x]
	else
		puts "Well!! Too bad then."
	end
end

def choice
	input = gets.chomp.upcase
	if input == "IMAGINE"
		puts "Oh you chose IMAGINE. Here's the breakdown -->"
		theCray("Imagine there's no heaven It's easy if you try No hell below us Above us only sky Imagine all the people Living for today Imagine there's no countries It isn't hard to do Nothing to kill or die for And no religion too Imagine all the people Living life in peace You may say I'm a dreamer But I'm not the only one I hope someday you'll join us And the world will be as one Imagine no possessions I wonder if you can No need for greed or hunger A brotherhood of man Imagine all the people Sharing all the world You may say I'm a dreamer But I'm not the only one I hope someday you'll join us And the world will live as one")
	elsif input == "OTHER"
		puts "Fine!! Type your text, no one cares anyway -->"
		theCray(gets.chomp)
	else
		puts "Try again..you did something horrendously wrong :O"
	end	
end


puts"This app allows you to count words in text. You can i.e. type (imagine) to see the word count of Imagine By Lennon or simply type (other) and then add your desired text"
puts choice

