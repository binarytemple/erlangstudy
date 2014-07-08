    2> Foo = 8.
    8
    
    3> <<1>>.
    <<1>>
    
    4> <<8,1>>.
    <<8,1>>
    
    5> <<Foo:1>>.
    <<0:1>>
    
    6> <<Foo:1>>.
    <<0:1>>
    
    7> <<Foo:1,Foo:2>>.
    <<0:3>>
    
    8> <<Foo:1,Foo:2,Foo:3>>.
    <<0:6>>
    
    9> <<Foo:2>>.
    <<0:2>>
    
    10> <<Foo:3>>.
    <<0:3>>
    
    11> <<Foo:4>>.
    <<8:4>>
    
    12> <<Foo>>.
    <<"\b">>
    
    13> <<Foo/integer>>.
    <<"\b">>
    
    14> <<Foo:1/integer>>.
    <<0:1>>
    
    15> <<Foo:2/integer>>.
    <<0:2>>
    
    21> <<Foo:8>>.
    <<"\b">>
    
    22> <<Foo:4>>.
    <<8:4>>
    
    23> <<Foo:8>>.
    <<"\b">>
    
    24> <<2#11111111>>.
    <<"ÿ">>
    
    25> <<2#11111111/integer>>.
    <<"ÿ">>
    
    31> io:format("~p",[10]).
    10ok
    
    32> io:format("~p",[ <<2#1111 >> ]).
    <<15>>ok
    
    33> io:format("~p",[ <<2#0001>> ]).
    <<1>>ok
    
    34> io:format("~p",[ <<2#00000001>> ]).
    <<1>>ok
    
    35> io:format("~p",[ <<2#00001001>> ]).
    <<"\t">>ok
    
    40> io:format("~w",[ <<2#00001001>> ]).
    <<9>>ok
    
    41> io:format("~w",[ <<2#00001001>> ]).
    <<9>>ok
    
    42> io:format("~w",[ <<2#00000001>> ]).
    <<1>>ok
    
    43> io:format("~w",[ <<2#00000001:1>> ]).
    <<1:1>>ok
    
    44> io:format("~w",[ <<2#00000001:2#00000001>> ]).
    <<1:1>>ok
    
    47> io:format("~w",[ <<2#00000001:2#00000001>> ]).
    <<1:1>>ok
    
    48> io:format("~w",[ <<2#00000001:2#10000000>> ]).
    <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>ok
    
    49> io:format("~w",[ <<2#00000001:2#00001000>> ]).
    <<1>>ok
    
    
    
    
    
    
    <<64>> = 64
    -> {'EXIT',{{badmatch,64},[{erl_eval,expr,3,[]}]}}
    108: <<64>>
    -> <<"@">>
    109: <<64/integer>>
    -> <<"@">>
    110: io:format("~p~n", [<<64/integer>>])
    -> ok
    111: io:format("~w~n", [<<64/integer>>])
    -> ok
    112: io:format("~w~n", [<<64/integer>>])
    -> ok
    113: <<64>> =:= 64
    -> false
    114: <<64>> == 64
    -> false
    115: <<128>> == 64
    -> false
    116: <<32>> == 64
    -> false
    117: <<1>> == 1
    -> false
    118: <<1/integer>> == 1
    -> false
    119: <<1/integer>> =:= 1
    -> false
    120: <<1/integer>>
    -> <<1>>
    121: <<1/integer>> =:= <<1>>
    -> true
    122: <<1/integer>> =:= <<2>>
    -> false
    123: <<2/integer>> =:= <<2>>
    -> true
    124: <<4/integer>> =:= <<4>>
    -> true
    125: <<32>> == <<64>>
    -> false
    126: binary_to_term(<<32>>)
    -> {'EXIT',{badarg,[{erlang,binary_to_term,[<<" ">>],[]},
                        {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,576}]},
                        {shell,exprs,7,[{file,"shell.erl"},{line,668}]},
                        {shell,eval_exprs,7,[{file,"shell.erl"},{line,623}]},
                        {shell,eval_loop,3,[{file,"shell.erl"},{line,608}]}]}}
    ok
    128>
    
    
    
    
    
    
    
    
