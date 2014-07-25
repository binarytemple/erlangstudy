
```
1: self()
-> <0.31.0>

2: foo ! self()
-> {'EXIT',{badarg,[{erlang,'!',[foo,<0.31.0>],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,576}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,668}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,623}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,608}]}]}}

3: is_pid(self())
-> true

4: S = self()
-> <0.34.0>

5: S ! foo
-> foo

6> flush().
Shell got foo
```
