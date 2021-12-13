function read_file ()
    values = {}
    for line in io.lines("input.txt") do
        table.insert(values, tonumber(line))
    end
    return values
end

function find_changes () 
    values = read_file()
    local windows = {}
    local increaseCount = 0

    for i,v in pairs(values)
    do
        if i == 1 then
            windows[i] = v
        elseif i == 2 then
            windows[i-1] = windows[i-1] + v
            windows[i] = v
        else
            windows[i-2] = windows[i-2] + v
            windows[i-1] = windows[i-1] + v
            windows[i] = v
            if i >= 4 then
                if windows[i-2] > windows[i-3] then
                    increaseCount = increaseCount + 1
                end
            end
        end
    end
    print(increaseCount)
end

find_changes()
