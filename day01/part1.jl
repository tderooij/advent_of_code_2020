
words = readlines("input.txt")

numbers = [parse(Int32, x) for x in words]

search = [2020 - n for n in numbers]

to_find = intersect(numbers, search)

if length(to_find) == 2
    answer = to_find[1] * to_find[2];
else
    answer = "NO"
end

print(answer)
