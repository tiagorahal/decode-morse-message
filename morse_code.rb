MORSE = {
  '.-': 'A',
  '-...': 'B',
  '-.-.': 'C',
  '-..': 'D',
  '.': 'E',
  '..-.': 'F',
  '--.': 'G',
  '....': 'H',
  '..': 'I',
  '.---': 'J',
  '-.-': 'K',
  '.-..': 'L',
  '--': 'M',
  '-.': 'N',
  '---': 'O',
  '.--.': 'P',
  '--.-': 'Q',
  '.-.': 'R',
  '...': 'S',
  '-': 'T',
  '..-': 'U',
  '...-': 'V',
  '.--': 'W',
  '-..-': 'X',
  '-.--': 'Y',
  '--..': 'Z'
}.freeze

def decode_char(char)
  new_char = ''
  MORSE.each do |key, value|
    if char == key.to_s
      new_char = value
    elsif char == '/'
      new_char = ' '
    end
  end
  new_char
end

def decode_word(word)
  splitted_word = word.split
  new_word = ''
  splitted_word.each { |n| new_word += decode_char n }
  new_word
end

def decode(sentence)
  splitted_sentence = sentence.split('   ')
  sentence = ''
  splitted_sentence.each do |n|
    sentence += "#{decode_word n} "
  end
  sentence.strip
end

puts decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
