--- Task #5 ---

function determine_left_right()
    -- Initialize the random seed so results vary each run
    math.randomseed(os.time())

    local left_count = 0
    local right_count = 0
    local iterations = 10

    -- Loop ten times to generate and process numbers
    for i = 1, iterations do
        -- Generate a random integer between 1 and 100
        local current_number = math.random(1, 100)
        local remainder = current_number % 2

        -- Check if the remainder is 0 (Even = RIGHT, Odd = LEFT)
        if remainder == 0 then
            print(current_number .. " – Output: 'RIGHT'")
            right_count = right_count + 1
        else
            print(current_number .. " – Output: 'LEFT'")
            left_count = left_count + 1
        end
    end

    -- Print the final counts
    print("-------------------------")
    print("Output: 'Left: " .. left_count .. "'")
    print("Output: 'Right: " .. right_count .. "'")
end

-- Call the function to execute it
determine_left_right()
