reader_handle = File.open(ARGV[0], 'r')

incoming_text = reader_handle.read

reader_handle.close

capitalized_text = incoming_text.upcase

writer_handle = File.open(ARGV[1], 'w')

writer_handle.write(capitalized_text)

writer_handle.close