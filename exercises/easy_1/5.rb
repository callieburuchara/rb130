require 'pry'
ENCRYPTED_PIONEERS = [
"Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"
]

# BRUTE FORCE

LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a
KEY = 13
MAX = 26

def rot_13(arr)
  arr.map do |name|
    name = name.chars
    name.map do |letter|
      #binding.pry
      if UPPER.include?(letter)
        position = UPPER.index(letter)
        position += KEY
        position -= MAX if position > MAX
        position = 0 if position == 26
        UPPER[position]
      elsif LOWER.include?(letter)
        position = LOWER.index(letter)
        position += KEY
        position -= MAX if position > MAX
        position = 0 if position == 26
        LOWER[position]
      else
        letter
      end
    end.join
  end
end

p rot_13(ENCRYPTED_PIONEERS)

=begin
-input: array of names as strings with spaces in them
-output: new array of names where the string are the unscrambled names
--> use Rot13 method to unscramble all of the names

-Rot13 replaces a letter with the 13th letter after it in the alphabet
-- it wraps back to the beginning if it exceeds the 26th character

-so in order to decode Rot13, we have to replace the current letter with the letter 13 spaces *behind* it. But because it's actually 26, both forward and backwards should work, so never mind. 

- accept array of strings as argument (arr)
- iterate over arr with map
- then iterate over each string with chars
- if the letter is in UPPER, then replace it with the letter in position 

=end


# GIVEN SOLUTION
 
def decipher_character(encrypted_char)
  case encrypted_char
  when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
  else                          encrypted_char
  end
end

def rot13(encrypted_text)
  encrypted_text.each_char.reduce('') do |result, encrypted_char|
   result + decipher_character(encrypted_char)
  end
end

ENCRYPTED_PIONEERS.each do |encrypted_name|
  puts rot13(encrypted_name)
end
