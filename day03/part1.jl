words = readlines("map.txt");

i = 0
words2=[]
max_value = length(words[1])
for y in 1:length(words)
    global i
    x = (3*(y - 1) + 1) % max_value
    if x == 0
        x = max_value
    end
    col = words[y]
    replace = "O"
    if col[x] == "#"[1]
        i += 1
        replace = "X"
    end
    
    if x == 1
        add = string(replace, col[x+1:max_value])
    elseif x == max_value
        add = string(col[1:max_value-1], replace)
    else
        add = string(col[1:x-1], replace, col[x+1:max_value])
    end
    append!(words2, [add])
end

print(i)
