import cpp

from FunctionCall fc, Function fn
where fn.getName() = "memcpy" and fc.getTarget() = fn
select fc