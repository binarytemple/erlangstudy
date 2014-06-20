### Ciprian's solution 

Classic functional programming solution. Just uses recursion and guards.

```
-module(fizzbuzz).
-export([tell/3, fb/1]).
	
fb(X) when (X rem 15 == 0) -> {X, fizzbuzz};
fb(X) when (X rem 3 == 0) -> {X, fizz};
fb(X) when (X rem 5 == 0) -> {X, buzz};
fb(X) -> X.

tell(Max, Max, F) -> [ F(Max) ];
tell(I, Max, F) -> [ F(I) | tell(I+1, Max, F) ].

%% erl>
%% c(fizzbuzz).
%% l(fizzbuzz).
%% fizzbuzz:tell(1,100,fun(I) -> fizzbuzz:fb(I) end).
```


### Dan's solution

This solution is based on functions with guard clauses

```
-module(fb).
-export([fb/0,number/1]).

fb() -> lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, lists:map(fun number/1, lists:seq(1, 100))).

number(N) when (N rem 3 == 0) and (N rem 5 == 0) -> fizzbuzz;
number(N) when (N rem 3 == 0) -> fizz;
number(N) when (N rem 5 == 0) -> buzz;
number(N) -> N.
```


### Dan's tuple based solution

This is from the net, it creates an tuple which can be very nicely matched upon.

```
fizz_or_buzz(X) ->
  case {X rem 3, X rem 5} of
    {0, 0} -> fizzbuzz;
    {0, _} -> fizz;
    {_, 0} -> buzz;
    {_, _} -> X
  end.
```  

### Bryan's pattern matching solution 

```
Fi = fun(X) -> if ( X rem 15 =:= 0 ) -> "fizbuzz\n";
                X rem 3 =:= 0 -> "fizz\n" ;
                X rem 5 =:= 0 -> "buzz\n";
                true -> integer_to_list(X) ++ "\n"
                end
            end,
        Res = lists:map( Fi , lists:seq(1,100) ),
        io:format("results ~s" , [Res])
```
