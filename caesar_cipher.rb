
print 'enter string: '
string = gets.chomp
print 'enter value: '
value = gets.chomp.to_i
new_string = ""
string.each_byte do |c|
  
  if c.between?(65, 90)
        c += (value % 26)
    
        if c < 65
          c += 26
        elsif c > 90
          c -= 26
        end
    
      elsif c.between?(97, 122)
        c += (value % 26)
    
        if c < 97
          c += 26
        elsif c > 122
          c -= 26
        end
      end
  new_string += c.chr       
end

p new_string
  

    