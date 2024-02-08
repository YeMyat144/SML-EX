map (op -) [(3,4), (7,2), (8,6)];

foldr (op ^) "" ["how", "are", "you"];

foldl (op -) 0 [2,4,6,8];


fun firstChar s = hd (explode s);

fun quot(a,b) = a div b;

fun fact n =
= if n = 0 then 1
= else n * fact(n-1);

fun listsum x =
= if null x then 0
= else hd x + listsum(tl x);

fun length x =
= if null x then 0
= else 1 + length (tl x);

fun badlength x =
= if x=[] then 0
= else 1 + badlength (tl x);

fun reverse L =
= if null L then nil
= else reverse(tl L) @ [hd L];

fun prod(a,b) = a * b;

fun iseven 0 = true
| iseven 1 = false
| iseven n = iseven (n - 2);

fun getOddNumbers [] = []
  | getOddNumbers (x::xs) =
      if x mod 2 <> 0 then
          x :: getOddNumbers xs
      else
          getOddNumbers xs;

fun product (xs, ys) =
    let
        fun pairWithAll x = List.map (fn y => (x, y)) ys
    in
        List.concat (List.map pairWithAll xs)
    end