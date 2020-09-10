# Edited by @PaulineChane on GitHub to add 3 tests for decimal_to_binary method

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
end

# BONUS 3 TESTS FOR decimal_to_binary BONUS METHOD

describe "decimal to binary" do
  it "From 153 to 10011001" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    expect(decimal_to_binary(expected_decimal)).must_equal binary_array
  end

  #

  it "From 13 to 00001101" do
    binary_array = [1, 1, 0, 1]
    expected_decimal = 13

    expect(decimal_to_binary(expected_decimal)).must_equal binary_array
  end

  it "From 128 to 10000000" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    expect(decimal_to_binary(expected_decimal)).must_equal binary_array
  end

end