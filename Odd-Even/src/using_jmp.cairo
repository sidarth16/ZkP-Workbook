// The function `abs_eq` should return 1 if its inputs
// are equal or differ only in sign and 0 otherwise.
// Its current implementation is incorrect.
//
// 1. Click on "Run" to see the where it fails.
// 2. Fix the body of `abs_eq`, so that the
//    program terminates successfully.

// Returns 1 if |x| = |y| (that is, x = y or x = -y),
// 0 otherwise.
// Return summation of every number below and up to including n
func div2(x) -> (rem: felt) {
    %{ memory[ap] = ids.x % 2 %}
    %{print(f"memory[ap]:  {memory[ap]}")%}
    jmp odd if [ap] != 0, ap++;

    even:
    // Case x % 2 == 0.
    tempvar rem = x / 2; //, ap++;
    return(rem = rem);

    odd:
    // Case x % 2 == 1.
    [ap] = x - 1, ap++;
    tempvar rem  = [ap - 1] / 2; //, ap++;
    return(rem = rem);
}

func main() {
     let(quotient) = div2(5);
     %{print(f"quotient:  {ids.quotient}")%}
     return();
}
