def cypher(some_string, number)
    alphabet_arr=("a".."z").to_a
    alphabet_arr_upcase=("A".."Z").to_a
    cyphered=""
    some_string.each_char do |c|
        if c == c.upcase && alphabet_arr_upcase.include?(c)
            c=c.downcase
            cyphered<<alphabet_arr[((alphabet_arr.index(c)+number)%26)].upcase
        elsif alphabet_arr.include?(c)
            cyphered<<alphabet_arr[((alphabet_arr.index(c)+number)%26)]
        else
            cyphered<<c
        end
    end
    cyphered
end

puts cypher("What a string!", 5)