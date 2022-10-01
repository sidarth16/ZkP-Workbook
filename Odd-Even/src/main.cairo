from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin

// my imports
from starkware.cairo.common.uint256 import Uint256
from starkware.cairo.common.uint256 import uint256_signed_div_rem

// Implement a function that check if numbers is Odd
func check_odd{range_check_ptr}(num: felt) -> (odd: felt) {
    alloc_locals;
    let int_num: Uint256 = Uint256(low = num, high = 0);
    let int_two: Uint256 = Uint256(low = 2, high = 0);
    let( quotient: Uint256, remainder: Uint256 ) = uint256_signed_div_rem( int_num , int_two);
    
    %{ print("remainder : ", ids.remainder.low)%}
    return (odd = remainder.low );
}
