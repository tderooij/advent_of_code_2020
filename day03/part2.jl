words = readlines("map.txt");

function slope(lines, x_slope, y_slope)
    i = 0
    lines_marked=[]
    max_value = length(lines[1])
    for j in 1:length(lines)
        y = (y_slope * (j - 1)) + 1
        if y > length(lines)
            break
        end
        x = (x_slope * (j - 1) + 1) % max_value
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
        append!(lines_marked, [add])
        if (y_slope == 2) & (y < max_value)
            append!(lines_marked, [words[y+1]])
        end
    end
    
    return i, lines_marked
end

numbers = []
for (x, y) in [(1,1), (3,1), (5,1), (7,1), (1,2)]
    filename = string("map_right-", x, "_down-", y, ".txt")
    i, output = slope(words, x, y)
    
    # Store number of X's
    append!(numbers, [i])
    
    # Write output
    open(filename, "w") do f
        for line in output
            write(f, line)
            write(f, "\n")
        end
    end
end

print(prod(numbers))
