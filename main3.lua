function runRandomGenerator()
    -- Seed the random number generator so results are different every time
    math.randomseed(os.time())

    local playAgain = "y"

    while playAgain == "y" or playAgain == "Y" do
        print("\nMax Number: ")
        local userInput = io.read()
        local maxNum = tonumber(userInput)