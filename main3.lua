--- Task #4 ---

function runRandomGenerator()
    -- Seed the random number generator so results are different every time
    math.randomseed(os.time())

    local playAgain = "y"

    while playAgain == "y" or playAgain == "Y" do
        print("\nMax Number: ")
        local userInput = io.read()
        local maxNum = tonumber(userInput)

        -- Error Check: Ensure input is a valid positive integer
        if maxNum == nil or maxNum < 0 then
            print("Error: Please enter a valid positive whole number.")
        else
            -- Generate random number (inclusive of 0 and maxNum)
            -- math.random(0, n) handles the range [0, n]
            local result = math.random(0, maxNum)
            print("Output: " .. result)

            print("New Number (y/n)? ")
            playAgain = io.read()

            -- Error Check: Basic validation for y/n response
            while playAgain ~= "y" and playAgain ~= "Y" and playAgain ~= "n" and playAgain ~= "N" do
                print("Invalid input. Please enter Y or N: ")
                playAgain = io.read()
            end
        end
    end

    print("Bye!")
end

-- Call the function to start the program
runRandomGenerator()
