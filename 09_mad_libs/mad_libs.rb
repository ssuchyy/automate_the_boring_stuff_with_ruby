puts 'Enter an adjective:'
ADJECTIVE = gets.chomp
puts 'Enter a noun:'
FIRST_NOUN = gets.chomp
puts 'Enter a verb'
VERB = gets.chomp
puts 'Enter a noun'
SECOND_NOUN = gets.chomp

text = "The #{ADJECTIVE} panda walked to the #{FIRST_NOUN} and then #{VERB}. A nearby #{SECOND_NOUN} was \
unaffected by these events."

puts text
File.write('mad_libs.txt', text)
