require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'USA', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    assert_equal({'Japan' => 'yen', 'USA' => 'doller', 'India' => 'rupee'}, Bank::COUNTRIES)
    assert Bank::COUNTRIES.frozen?
    assert Bank::COUNTRIES.all? { |key,value| key.frozen? && value.frozen? }
  end
end
