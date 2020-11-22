# Hello! 👋
#
# This week I want you to write a function that might seem simple at first, but there's a number of ways to solve it.
#
# This week's function, is_perfect_square, accepts a number and returns True if it's a perfect square and False if it's not. A perfect square is any number which has an integer square root. So 25 is a perfect square but 24 is not, 9 is a perfect square but 8 is not, 100 is a perfect square but 1000 is not.

function is_perfect_square(input_number)
    square_number = 1
    while square_number^2 <= input_number
        # println(square_number)
        if square_number^2 == input_number
            return true
        end
        square_number = square_number + 1
    end
    return false
end

is_perfect_square(64)
is_perfect_square(65)
is_perfect_square(100)
is_perfect_square(1000)

is_perfect_square(-1)
is_perfect_square(-4)

is_perfect_square(4624000000000000)
is_perfect_square(4623999999999999)
