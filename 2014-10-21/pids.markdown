```
1: list_to_pid("9.0.1")
-> {'EXIT',{badarg,[{erlang,list_to_pid,["9.0.1"],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}

2: list_to_pid(<<"9.0.1">>)
-> {'EXIT',{badarg,[{erlang,list_to_pid,[<<"9.0.1">>],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
3: self()
-> <0.36.0>

4: list_to_pid("<0.36.0>")
-> <0.36.0>
ok

```
