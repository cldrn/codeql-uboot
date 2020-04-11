import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        
        exists(MacroInvocation mi, Macro m | m.getName().regexpMatch("^(ntohs|ntohl|ntohll)$") and m.getAnInvocation() = mi and this = mi.getExpr())
        
    }
    
}

from NetworkByteSwap n
select n, "Network byte swap"
