(*nil = []*)

fun  exist (a, nil) = false
|    exist (a, x::xs) = if a=x then true else exist (a,xs);


fun lessthan (a, nil) = nil
|   lessthan (a, x::xs) = 
    if a > x then x::lessthan (a, xs)
      else lessthan (a, xs);       

fun repeats (a::b::rest) = a = b or else repeats (b::rest)
|   repeats _ = false;


fun member (a, nil) = false
| member (a, x::xs) = if a = x then true else member (a, xs);


fun union (xs, nil) = xs
|   union (xs, y::ys) = if member (y, xs) then union (xs, ys)
                          else y::union(xs,ys);


fun intersection (xs, nil) = nil
|   intersection (xs, y::ys) = if member(y,xs) then y::intersection(xs, ys)
                                    else intersection (xs, ys);


fun powerset nil = [nil]
|   powerset (head::rest) =
    let 
      fun addToEach (e, nil) = nil
      |   addToEach (e, x::xs) = (e::x)::addToEach(e, xs);
      val a = powerset rest;
    in
      addToEach(head, a) @ addToEach
    end;  

