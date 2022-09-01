@alphabets = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '..--' => 'Z'
}

def decode_char(character)
  @alphabets[character]
end

def decode_word(word)
  decoder = ''
  character = word.split
  character.each { |c| decoder += decode_char(c) }
  decoder
end

def decode_message(message)
  decoder_message = ''
  words = message.split(/   /)
  words.each { |c| decoder_message += "#{decode_word(c)} " }
  decoder_message.strip
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
