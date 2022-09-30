%lang starknet
from src.conditionals import abs_eq
from starkware.cairo.common.cairo_builtins import HashBuiltin

@external
func test_abs_eq{syscall_ptr: felt*, range_check_ptr, pedersen_ptr: HashBuiltin*}() {

    let (bit) = abs_eq(2, -2);
    assert bit = 1;

    let (bit) = abs_eq(2, 3);
    assert bit = 0;

    let (bit) = abs_eq(2, 2);
    assert bit = 1;

    return();
}
