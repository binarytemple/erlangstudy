```


[~%]activate_R16B03
[~%]erl
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
1> erlang:get_cookie().
nocookie
2>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
^C%                                                                                   [~%]reset


[~%]
[~%]p

[~%]erl -setcookie fooz -sname two
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
(two@bryans-MacBook-Pro)1> node().
'two@bryans-MacBook-Pro'
(two@bryans-MacBook-Pro)2> net_adm:ping('one@bryans-MacBook-Pro').
pong
(two@bryans-MacBook-Pro)3>
(two@bryans-MacBook-Pro)3> cd("/common/erlangstudy/2014-10-10").
/common/erlangstudy/2014-10-10
ok
(two@bryans-MacBook-Pro)4> l(echo).
{module,echo}
(two@bryans-MacBook-Pro)5>
                           zsh: suspended  erl -setcookie fooz -sname two
                                                                         %                                                                                                      [~%]
[~%]
[~%]fg
[1]  + continued  erl -setcookie fooz -sname two

(two@bryans-MacBook-Pro)5>
(two@bryans-MacBook-Pro)5> erl
erl_distribution    erl_epmd            erl_eval
erl_internal        erl_lint            erl_parse
erl_prim_loader     erl_scan            erlang

(two@bryans-MacBook-Pro)5> erl
erl_distribution    erl_epmd            erl_eval
erl_internal        erl_lint            erl_parse
erl_prim_loader     erl_scan            erlang

(two@bryans-MacBook-Pro)5> c(my_gen_server).
my_gen_server.erl:30: variable 'Msg' is unbound
error
(two@bryans-MacBook-Pro)6>
(two@bryans-MacBook-Pro)6> c(my_gen_server).
my_gen_server.beam: Module name 'uniq' does not match file name 'my_gen_server'
error
(two@bryans-MacBook-Pro)7>
(two@bryans-MacBook-Pro)7> c(my_gen_server).
{ok,my_gen_server}
(two@bryans-MacBook-Pro)8> l(my_gen_server).
{module,my_gen_server}
(two@bryans-MacBook-Pro)9> m(my_gen_server).
Module my_gen_server compiled: Date: October 12 2014, Time: 11.23
Compiler options:  []
Object file: /common/erlangstudy/2014-10-10/my_gen_server.beam
Exports:
         code_change/3
         get_id/0
         handle_call/3
         handle_cast/2
         handle_info/2
         init/1
         module_info/0
         module_info/1
         start_link/0
         terminate/2
ok
(two@bryans-MacBook-Pro)10> fg
(two@bryans-MacBook-Pro)10>
```
