require './spec/spec_helper'
require 'pry'

reader_handle = File.open(ARGV[0], 'r')
incoming_text = reader_handle.read
reader_handle.close

braille_writer = BrailleWriter.from_txt(incoming_text)

writer_handle = File.open(ARGV[1], 'w')
outgoing_text = writer_handle.write(braille_writer.convert_to_braille)
writer_handle.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"


    
