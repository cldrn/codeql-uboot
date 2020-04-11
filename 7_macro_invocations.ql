import cpp

from MacroInvocation mi, Macro m
where m.getName().regexpMatch("^(ntohs|ntohl|ntohll)$") and m.getAnInvocation() = mi 
select mi
