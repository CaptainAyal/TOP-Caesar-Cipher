def caesar_cipher (string, shift)
  puts string
  puts shift

  #turn string to array and ordinal numbers
  array = string.codepoints

  #shift by shift value
  shifted = array.map{|ord| ord + shift}
  #map back to letters
  back = shifted.map{|num| num.chr}
  #join and output
  puts back.join
end

  #get input string
puts "please enter a string"
  string_input = gets.chomp
  #get input shift
puts "please enter an integer"
shift_input = gets.to_i

  #run code
caesar_cipher string_input, shift_input
#   #need to fix for wrap around to non-letter chars
#   #fix for punctuation