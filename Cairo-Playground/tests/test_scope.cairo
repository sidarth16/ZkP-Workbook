%lang starknet
from starkware.cairo.common.uint256 import Uint256
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin
from src.scope import myDemoFunc

@external
func test_scope() {
    let (result) = myDemoFunc(n=8, add=2, add_flag=1);
    assert result = 5 ;
    return();
}

