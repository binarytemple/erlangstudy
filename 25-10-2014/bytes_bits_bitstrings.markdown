
```
101> h().
81: bitstring_to_list(D)
-> [0,0,0,0,0,0,0,1]
82: list_to_integer(bitstring_to_list(D))
-> {'EXIT',{badarg,[{erlang,list_to_integer,
                            [[0,0,0,0,0,0,0,1]],
                            []},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
83: list_to_integer(bitstring_to_list(1))
-> {'EXIT',{badarg,[{erlang,bitstring_to_list,[1],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {erl_eval,expr_list,6,[{file,"erl_eval.erl"},{line,738}]},
                    {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,330}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
84: list_to_integer(bitstring_to_list(<<1>>))
-> {'EXIT',{badarg,[{erlang,list_to_integer,[[1]],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
85: bitstring_to_list(<<1>>)
-> [1]
86: list_to_integer(bitstring_to_list(<<256:64>>))
-> {'EXIT',{badarg,[{erlang,list_to_integer,
                            [[0,0,0,0,0,0,1,0]],
                            []},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
87: bitstring_to_list(<<256:64>>)
-> [0,0,0,0,0,0,1,0]
88: binary:bin_to_list(256:64)
-> {'EXIT',illegal_expr}
89: binary:bin_to_list(<<256:64>>)
-> [0,0,0,0,0,0,1,0]
90: list_to_integer([1])
-> {'EXIT',{badarg,[{erlang,list_to_integer,[[1]],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
91: <<Z/integer>> = list_to_integer([1])
-> {'EXIT',{badarg,[{erlang,list_to_integer,[[1]],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,364}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
92: <<Z/bytes>> = list_to_integer([1])
-> {'EXIT',{badarg,[{erlang,list_to_integer,[[1]],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,364}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
93: <<Z/byte>> = list_to_integer([1])
-> {'EXIT',{undefined_bittype,byte}}
94: <<Z/byte>> = [1]
-> {'EXIT',{undefined_bittype,byte}}
95: <<Z/integer>> = [1]
-> {'EXIT',{{badmatch,[1]},[{erl_eval,expr,3,[]}]}}
96: <<Z:1/integer>> = [1]
-> {'EXIT',{{badmatch,[1]},[{erl_eval,expr,3,[]}]}}
97: <<Z:1/integer>> = <<1>>
-> {'EXIT',{{badmatch,<<1>>},[{erl_eval,expr,3,[]}]}}
98: <<Z:1/integer>> = <<1:64>>
-> {'EXIT',{{badmatch,<<0,0,0,0,0,0,0,1>>},
            [{erl_eval,expr,3,[]}]}}
99: <<Z:64/integer>> = <<1:64>>
-> <<0,0,0,0,0,0,0,1>>
100: Z
-> 1
ok
1


```


