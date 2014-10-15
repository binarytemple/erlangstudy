

```
46> h().
26: ets:all()
-> [8207,4110,13,file_io_servers,inet_hosts_file_byaddr,
    inet_hosts_file_byname,inet_hosts_byaddr,inet_hosts_byname,
    inet_cache,inet_db,global_pid_ids,global_pid_names,
    global_names_ext,global_names,global_locks,ac_tab]
27: h()
-> ok
28: ets:new(assignments, [duplicate_bag,named_table])
-> assignments
29: ets:insert(assignments, {ee,bryan,{2014,10,12}})
-> true
30: ets:insert(assignments, {"ee","csaba",{2014,10,12}})
-> true
31: ets:all()
-> [assignments,8207,4110,13,file_io_servers,
    inet_hosts_file_byaddr,inet_hosts_file_byname,
    inet_hosts_byaddr,inet_hosts_byname,inet_cache,inet_db,
    global_pid_ids,global_pid_names,global_names_ext,
    global_names,global_locks,ac_tab]
32: ets:i()
-> ok
33: ets:i(assignments)
-> ok
34: ets:select(assignments)
-> {'EXIT',{badarg,[{ets,select,[assignments],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
35: ets:select({"bryan",assignments})
-> {'EXIT',{badarg,[{ets,select,[{"bryan",assignments}],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
36: ets:select(assignments, [{{'$1','$2','$1'},[],['$_']}])
-> {'EXIT',{badarg,[{ets,select,
                         [assignments,[{{'$1','$2','$1'},[],['$_']}]],
                         []},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
37: ets:delete(assignments, {ee})
-> {'EXIT',{badarg,[{ets,delete,[assignments,{ee}],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
38: ets:delete(assignments, {ee,bryan})
-> {'EXIT',{badarg,[{ets,delete,[assignments,{ee,bryan}],[]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
39: ets:i(assignments)
-> {'EXIT',{badarg,[{ets,first,[assignments],[]},
                    {ets,i,3,[{file,"ets.erl"},{line,1547}]},
                    {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                    {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                    {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                    {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
40: ets:i()
-> ok
41: ets:new(assignments, [duplicate_bag,named_table])
-> assignments
42: ets:insert(assignments, {"ee","csaba",{2014,10,12}})
-> true
43: ets:i(assignments)
-> ok
44: ets:i(assignments)
-> ok
45: io:format("START~n", [])
-> ok
ok
47>
```


