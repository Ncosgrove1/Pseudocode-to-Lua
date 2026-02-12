function calculateTotalSum()
    local totalSum = 0
    local continueInput = "y"

    while continueInput == "y" or continueInput == "Y" do
        io.write("Number: ")
        local userInput = io.read()

        -- Convert string input to a number
        local num = tonumber(userInput)

        -- Error Checking: Ensure the input is a valid number
        if num then
            totalSum = totalSum + num
        else
            print("Invalid entry. Please enter a numerical value.")
        end

        -- Only ask to continue if we actually processed a number or want to retry
        if num then
            print("Another number? (y/n)")
            continueInput = io.read()

            -- Error Checking: Handle cases where user types something other than y/n
            while continueInput ~= "y" and continueInput ~= "Y" and
                continueInput ~= "n" and continueInput ~= "N" do
                print("Please enter 'y' for yes or 'n' for no.")
                continueInput = io.read()
            end
        end
    end

    print("Output: " .. totalSum)
    return totalSum
end

-- Call the function
calculateTotalSum()
