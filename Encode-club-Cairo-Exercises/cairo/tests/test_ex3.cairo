%lang starknet
from src.cairo.ex3 import simple_math

@external
func test_simple_math{syscall_ptr: felt*, range_check_ptr}() {
    simple_math();
    return ();
}
