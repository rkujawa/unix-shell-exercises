In the work directory, prepare a script `fib.sh` that outputs a sequence of
Fibonacci numbers.

The sequence Fᵢ is defined by the recurrence relation:

`Fᵢ = Fᵢ-1 + Fᵢ-2`

with seed values:

`F₀ = 0, F₁ = 1`

The script should use a shell function(s) to implement the algorithm. The amount of numbers outputted should be equal to first argument passed to the script. I.e.:

`./fib.sh 7`

Should result in the following numbers outputted to the stdout:

`0 1 1 2 3 5 8`

