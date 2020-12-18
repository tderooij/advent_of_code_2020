words = readlines("input.txt");

search = [split(replace(replace(x, r":" => ""), r"-" => " "), " ") for x in words];

i = 0
for col in search
    pos1, pos2, letter, pass = col
    pos1 = parse(Int16, pos1)
    pos2 = parse(Int16, pos2)
    letter = letter[1]
    if xor( (pass[pos1] == letter), (pass[pos2] == letter))
        i+=1
    end
end

print(i)
