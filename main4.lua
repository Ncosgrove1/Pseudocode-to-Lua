--- Task #5 --- 

function determine_left_right()
    -- Initialize the random seed so results vary each run
    math.randomseed(os.time())

    local left_count = 0
    local right_count = 0
    local iterations = 10

