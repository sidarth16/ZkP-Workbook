%lang starknet
from src.main import add1_square
from starkware.cairo.common.cairo_builtins import HashBuiltin

@external
func test_increase_balance{syscall_ptr: felt*, range_check_ptr, pedersen_ptr: HashBuiltin*}() {
    let (res) = add1_square(12);

     // Verify the computation.
    assert res = (12 + 1) * (12 + 1);

    return ();
}
