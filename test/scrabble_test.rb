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
    assert_equal 5, Scrabble.new.score("hi")
  end

  def test_it_scores_words_with_more_than_two_letters
    assert_equal 16, Scrabble.new.score("zebra")
  end

  def test_it_returns_a_0_score_for_empty_input
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_returns_a_0_score_for_nil_input
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_scores_a_letter_with_letter_multipliers
    game = Scrabble.new
    assert_equal 5, game.score_with_multipliers('a', [5])
  end

  def test_it_scores_letters_with_letter_multipliers
    game = Scrabble.new
    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
  end
end