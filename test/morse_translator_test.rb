require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class TranslateTest < Minitest::Test

  def test_it_translates_a_letter
    translator = Translate.new

    assert_equal ".-", translator.eng_to_morse("a")
  end

  def test_that_it_can_translate_a_phrase
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_that_it_can_translate_a_phrase_case_insensitive
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end

  def test_that_it_can_translate_a_phrase_with_numbers
    translator = Translate.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_that_it_can_take_a_file_in_and_translate_from_english_to_morse
    translator = Translate.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_that_it_translates_morse_to_eng
    translator = Translate.new

    assert_equal "helloworld", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

end
