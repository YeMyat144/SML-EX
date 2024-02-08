fun iseven n = if n mod 2 = 0 then true else false;
fun iseven n = n mod 2 = 0;

fun cube n = n*n*n;

fun cuber n: real = n*n*n;

fun third l = hd(tl(tl(l)));

fun max3(x,y,z) = 
    if x > y then if x > z then x else z
        else if y > z then y else z;

fun remove2(x,y,z) = (x,z);

fun fourthch s = hd(tl(tl(tl(explode(s)))));

fun minhelper (l,n) =
    if (null l) then n
    else if(hd l> n) then minhelper(tl l, n)
        else minhelper (tl l, hd l);

fun min l = minhelper(tl l, hd l);

fun rotate1 l = (tl l) @ [hd l];
fun rotate (l, n) = 
    if n = 0 then l
    else rotate(rotate1 l, n-1);

fun rotate(l, 0) = l
|    rotate(l, n) = rotate(rotate1 l, n-1);


fun select(lst: 'a list, f: 'a -> bool): 'a list =
case lst of
[] => []
| x::xs => if f(x) then x :: select(xs, f) else select(xs, f);
[(1,"a"),(1,"b"),(2,"a"),(2,"b"),(3,"a"),(3,"b")]


SML
1. Implement a function product of type 'a list * 'b list -> ('a * 'b) list that performs a cartesian of two sets(or two lists, in this case).
   For example ([1,2,3], ["a","b"]) will return [(1,"a"),(1,"b"),(2,"a"),(2,"b"),(3,"a"),(3,"b")]


2. datatype suit = Clubs | Diamonds | Hearts | Spades;
   datatype rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King;
   Refer to type definitions of suit and rank, implement a function cardname of type rank -> suit -> string that returns the name of a card as a string.
     For example, cardname Ace Spades returns "Ace of Spades"

3. datatype day = Mon | Tue | Wed | Thu | Fri | Sat | Sun;
   Implement a function nextNDayOfWeek of type int -> day -> day that returns the next Ndays of a given day of week
     For example, nextNdaysofWeek 2 Mon will return Wed
   Write ML code that represents the tree given in question 3.

4. Datatype coin = Penny of int | Nickel of int | Dime of int | Quarter of int;
   Implement a function sumcoins that takes a parameter indicating number of quarters =, dimes, nickels and pennies respectively and returns total values of coins in dollars.The function must be of type (coin * coin * coin) -> real.
   Note that 100 cents equals 1 dollar.

   Coin    Value(cents)
   Penny     1
   Nickel    5
   Dime     10
   Quarter  25
   
   For instance, sumcoins(2,1,5,3) will return 0.88