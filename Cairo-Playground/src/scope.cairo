from starkware.cairo.common.math import unsigned_div_rem


func myDemoFunc(n: felt, add: felt, add_flag: felt) -> (result: felt) {
    alloc_locals;
    local n1 ;
    
    if (add_flag == 1){
         n1 = n + add ;
    }

    tempvar result =  n1 / 2 ;

    return (result = result);
    
}

func main() {
    let (result) = myDemoFunc(n=8, add=2, add_flag=1);
    return();
}
