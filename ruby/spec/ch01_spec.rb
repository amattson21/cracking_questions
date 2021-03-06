require 'ch01'
require_relative '../spec_helper.rb'

describe "is_unique?" do

  it "returns true if letters are unique in string" do
    expect(is_unique?("str")).to eq(true)
  end

  it "returns false if letters are not unique in string" do
    expect(is_unique?("strr")).to eq(false)
  end

end


describe "permutaion?" do

  it "returns true if str2 is a permutaion of str1" do
    expect(permutaion?("abc", "cba")).to eq(true)
  end

  it "returns false if str2 is not a permutaion of str1" do
    expect(permutaion?("abc", "def")).to eq(false)
  end

end


describe "urlify" do

  it "returns a string with spaces replaced with '%20'" do
    expect(urlify("Mr John Smith    ", 13)).to eq("Mr%20John%20Smith")
  end

end


describe "palindrome_permutation" do

  it "returns true is str is palindrome permutation" do
    expect(palindrome_permutation("Tact Coa")).to eq(true)
  end

  it "returns false is str is not palindrome permutation" do
    expect(palindrome_permutation("Tacp Coa")).to eq(false)
  end

end


describe "one_away" do

  it "returns true for removing a letter" do
    expect(one_away("pale", "ple")).to eq(true)
  end

  it "returns true for adding a letter" do
    expect(one_away("pale", "pales")).to eq(true)
  end

  it "returns true for changing a letter" do
    expect(one_away("pale", "bale")).to eq(true)
  end

  it "returns false if not one away" do
    expect(one_away("pale", "bake")).to eq(false)
  end

end


describe "string_compression" do

  it "returns correctly compressed string" do
    expect(string_compression('aabcccccaaa')).to eq('a2b1c5a3')
  end

  it "returns original string if compressed is not shorter" do
    expect(string_compression('abc')).to eq('abc')
  end

end

describe "rotate_image" do

  it "should rotate an image" do
    image = [
      [1,2,3,4],
      [1,2,3,4],
      [1,2,3,4],
      [1,2,3,4]
    ]

    rotated_image = [
      [1,1,1,1],
      [2,2,2,2],
      [3,3,3,3],
      [4,4,4,4]
    ]

    expect(rotate_image(image)).to eq(rotated_image)
  end
end

describe "zero_matrix" do
  it "returns matrix with correct zeroed columns and rows" do
    matrix = [
      [1,2,3],
      [0,2,3],
      [1,2,3]
    ]

    zeroed_matrix = [
      [0,2,3],
      [0,0,0],
      [0,2,3]
    ]

    expect(zero_matrix(matrix)).to eq(zeroed_matrix)
  end
end

describe "string_rotation?" do

  def is_substring?(str1, str2)
    str1.include?(str2)
  end

  it "returns true if str2 is a string rotation of str1" do
    str1 = "waterbottle"
    str2 = "erbottlewat"
    expect(string_rotation?(str1, str2)).to eq(true)
  end

  it "returns false if str2 is not a string rotation of str1" do
    str1 = "waterbottle"
    str2 = "erbowatttle"
    expect(string_rotation?(str1, str2)).to eq(false)
  end

  it "returns false if str1 is not the same size as str2" do
    str1 = "waterbottle"
    str2 = "erbowatt"
    expect(string_rotation?(str1, str2)).to eq(false)
  end

  it "returns false with empty strings" do
    str1 = ""
    str2 = ""
    expect(string_rotation?(str1, str2)).to eq(false)
  end
end
