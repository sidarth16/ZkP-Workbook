%lang starknet
from src.main import check_odd
from starkware.cairo.common.cairo_builtins import HashBuiltin

@external
func test_increase_balance{syscall_ptr: felt*, range_check_ptr, pedersen_ptr: HashBuiltin*}() {
    let( odd ) = check_odd(2);
    assert odd = 0 ;     // 0: Not a Odd 

    let( odd ) = check_odd(7);
    assert odd = 1 ;     // 0: Is a Odd 
    return ();
}
