// The function `abs_eq` should return 1 if its inputs
// are equal or differ only in sign and 0 otherwise.


// Returns 1 if |x| = |y| (that is, x = y or x = -y),
// 0 otherwise.
func abs_eq(x: felt, y: felt) -> (bit: felt) {
    if (x == y) {
        return (bit=1);
    } else {
        if (x == -y) {
            return (bit=1);
        } 
        return (bit=0);
    }
}
