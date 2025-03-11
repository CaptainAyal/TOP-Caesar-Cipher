def caesar_cipher (string, shift)
  #turn string to array and ordinal numbers
  
  #shift by shift value
  array = string.codepoints.map do |ord| 
  #check if shifted result still letter. If so shift
    if (ord + shift).between?(65, 90) || (ord + shift).between?(97,122)
      ord + shift
  # check if original is letter, if so shift and wrap
    elsif ord.between?(65, 90) || ord.between?(97,122)
        (ord + shift) - 26
  # no change for puncuation
      else
      ord 
    end
  end

  
  #map back to letters, join and output
  puts array.map{|num| num.chr}.join

end

  #get input string
puts "please enter a string"
  string_input = gets.chomp
  #get input shift
puts "please enter an integer"
shift_input = gets.to_i

  #run code
caesar_cipher string_input, shift_input

