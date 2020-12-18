words = readlines("input.txt");

search = [split(replace(replace(x, r":" => ""), r"-" => " "), " ") for x in words];

i = 0
for col in search
    min_oc, max_oc, letter, pass = col
    oc = sum([letter[1] == el for el in pass])
    if parse(Int32, min_oc) <= oc <= parse(Int32, max_oc)
        i+=1
    end
end

print(i)
