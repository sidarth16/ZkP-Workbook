%lang starknet
from starkware.cairo.common.uint256 import Uint256
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin
from src.scope1 import demoFunc

@external
func test_scope_1{syscall_ptr: felt*, range_check_ptr, bitwise_ptr: BitwiseBuiltin*}() {

    let (x) = demoFunc( n=11, flag=1 );
    assert x = 5 ;
    return();

}
