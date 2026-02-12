-- Task #1: Phrase to Uppercase Function
local function task_one()
    print("Please enter a phrase:")
    local userInput = io.read() -- Reads user input

    -- Error Checking: Check if input is empty
    if #userInput == 0 then -- # operator gets the length of a string
        print("Error: No input provided.")
    else
        -- Convert to uppercase using built-in string.upper function
        local result = string.upper(userInput)
        print("Output: " .. result) -- ".." is used for string concatenation
    end
end

-- Task #2: Numeric Input Function
local function get_number(prompt)
    while true do
        io.write(prompt)            -- io.write keeps the cursor on the same line
        local input = io.read()
        local num = tonumber(input) -- Converts string to number or returns nil

        if num then
            return num
        else
            print("Invalid input.")
        end
    end
end

-- Main Execution
print("--- Starting Task 1 ---")
task_one()

print("\n--- Starting Task 2 ---")
local num1 = get_number("Number 1: ")
local num2 = get_number("Number 2: ")

-- Output the sum of the two numbers
print("Output: " .. (num1 + num2))
