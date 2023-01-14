require './spec/spec_helper'
require 'pry'

reader_handle = File.open(ARGV[0], 'r')
incoming_text = reader_handle.read
reader_handle.close

to_braille = ToBraille.from_txt(incoming_text)

# writer_handle = File.open(ARGV[1], 'w')

# require 'pry'; binding.pry

# writer_handle.write(night_write)

# writer_handle.close

puts "Created '#{ARGV[1]}' containing #{night_write.length} characters"


# @library = {
#   'a' => ("\u2801"),
#   'b' => ("\u2803"),
#   'c' => ("\u2809"),
#   'd' => ("\u2819"),
#   'e' => ("\u2811"),
#   'f' => ("\u280B"),
#   'g' => ("\u281B"),
#   'h' => ("\u2813"),
#   'i' => ("\u280A"),
#   'j' => ("\u281A"),
#   'k' => ("\u2805"),
#   'l' => ("\u2807"),
#   'm' => ("\u280D"),
#   'n' => ("\u281D"),
#   'o' => ("\u2815"),
#   'p' => ("\u280F"),
#   'q' => ("\u281F"),
#   'r' => ("\u2817"),
#   's' => ("\u280E"),
#   't' => ("\u281E"),
#   'u' => ("\u2825"),
#   'v' => ("\u2827"),
#   'w' => ("\u283A"),
#   'x' => ("\u282D"),
#   'y' => ("\u283D"),
#   'z' => ("\u2835"),
# }

    
