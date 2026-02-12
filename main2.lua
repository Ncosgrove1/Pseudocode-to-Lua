function calculateTotalSum()
    local totalSum = 0
    local continueInput = "y"

    while continueInput == "y" or continueInput == "Y" do
        io.write("Number: ")
        local userInput = io.read()
        
        -- Convert string input to a number
        local num = tonumber(userInput)