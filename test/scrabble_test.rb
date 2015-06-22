gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_scores_a_two_letter_word
    skip
    assert_equal 5, Scrabble.new.score("hi")
  end

  def test_it_scores_words_with_more_than_two_letters
    skip
  end

  def test_it_returns_a_0_score_for_empty_input
    skip
  end

  def test_it_returns_a_0_score_for_nil_input
    skip
  end

  def test_it_returns_0_for_any_non_alphabetic_character
    skip
  end
end