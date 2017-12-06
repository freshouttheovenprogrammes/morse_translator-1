class Translate

  ENGLISH_TO_MORSE = {
      "a" => ".-",
      "b" => "-...",
      "c" => "-.-.",
      "d" => "-..",
      "e" => ".",
      "f" => "..-.",
      "g" => "--.",
      "h" => "....",
      "i" => "..",
      "j" => ".---",
      "k" => "-.-",
      "l" => ".-..",
      "m" => "--",
      "n" => "-.",
      "o" => "---",
      "p" => ".--.",
      "q" => "--.-",
      "r" => ".-.",
      "s" => "...",
      "t" => "-",
      "u" => "..-",
      "v" => "...-",
      "w" => ".--",
      "x" => "-..-",
      "y" => "-.--",
      "z" => "--..",
      " " => " ",
      "1" => ".----",
      "2" => "..---",
      "3" => "...--",
      "4" => "....-",
      "5" => ".....",
      "6" => "-....",
      "7" => "--...",
      "8" => "---..",
      "9" => "----.",
      "0" => "-----"
    }
    #TODO refactor out of extra array and use a map do
    def eng_to_morse(string_eng)
      translated_string = []
      morse = string_eng.split("")
      morse.each do |letter|
        ENGLISH_TO_MORSE[letter.downcase]
        translated_string << ENGLISH_TO_MORSE[letter.downcase]
    end
      translated_string.join
    end

    def morse_to_eng(string_morse)
      morse = string_morse.split(" ")
      morse.map do |code|
        ENGLISH_TO_MORSE.key(code)
      end.join
    end

    def from_file(filename)
      file = File.readlines("#{filename}")
      file.map do |line|
        string_eng = line
        eng_to_morse(string_eng)
      end.join
    end
end
