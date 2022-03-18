require './lib/caesar_cipher.rb'

describe ".encode" do
  it "encodes a string" do
    expect(encode("hello", 11)).to eq("spwwz")
  end
  it "encodes a string with a value greater than 26" do
    expect(encode("hello", 37)).to eq("spwwz")
  end
  it "encodes a string with multiple words" do
    expect(encode("hello hello hello", 11)).to eq("spwwz spwwz spwwz")
  end
  it "encodes a string with special characters intact" do
    expect(encode("hello!?#", 11)).to eq("spwwz!?#")
  end
  it "encodes a string using negative value" do
    expect(encode("hello", -15)).to eq("spwwz")
  end

end

