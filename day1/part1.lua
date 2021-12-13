function read_file ()
    values = {}
    for line in io.lines("input.txt") do
        table.insert(values, tonumber(line))
    end
    return values
end

function find_changes () 
    values = read_file()
    local increaseCount = 0
    for i,v in pairs(values)
    do
        if i ~= 1 then
            if values[i] > values[i-1] then
                increaseCount = increaseCount + 1
            end
        end
    end
    print(increaseCount)
end

find_changes()
