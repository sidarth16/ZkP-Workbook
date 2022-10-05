%lang starknet
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem


func demoFunc{bitwise_ptr: BitwiseBuiltin*, range_check_ptr}(n: felt, flag: felt) -> (result: felt) {
    alloc_locals;
    local = n;
    // n1= n;

    if (flag == 1){
        let (n1) = bitwise_xor( n1 , 1 );
    }

    let (local quot, local rem) = unsigned_div_rem(n1, 2);
    return (result = quot);    
}

func main{syscall_ptr: felt*, range_check_ptr, bitwise_ptr: BitwiseBuiltin*}() {
    let (x) = demoFunc(n=11, flag=1);
    assert x = 5 ;
    return();
}