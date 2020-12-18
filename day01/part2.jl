
words = readlines("input.txt");

numbers = sort([parse(Int32, x) for x in words]);

for i in numbers
    for j in numbers
        if i + j >= 2020
            break
        end
        for k in numbers
            if i + j + k == 2020
                answer = i * j * k
                print(i, "\n", j, "\n", k, "\n answer: ", answer, "\n")
            elseif i + j + k > 2020
                break
            end
        end
    end
end
