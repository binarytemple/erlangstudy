```
[~%]activate_R16B03
[~%]erl
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
1> erlang:get_cookie() .
nocookie
       


[~%]reset

[~%]erl -setcookie fooz -sname one
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
(one@bryans-MacBook-Pro)1> nodes().
[]

(one@bryans-MacBook-Pro)3> nodes().
[]

(one@bryans-MacBook-Pro)4> registered().
[user_drv,standard_error,global_group,init,user,
 error_logger,erl_epmd,auth,rex,net_sup,kernel_sup,inet_db,
 net_kernel,global_name_server,code_server,erl_prim_loader,
 file_server_2,standard_error_sup,kernel_safe_sup,
 application_controller]
(one@bryans-MacBook-Pro)5> node().
'one@bryans-MacBook-Pro'


(one@bryans-MacBook-Pro)6> erlang:node('two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  node/1
        called as node('two@bryans-MacBook-Pro')

(one@bryans-MacBook-Pro)7> erlang:node(<<"two@bryans-MacBook-Pro">>).
** exception error: bad argument
     in function  node/1
        called as node(<<"two@bryans-MacBook-Pro">>)

(one@bryans-MacBook-Pro)8> erlang:get_cookie().
fooz
(one@bryans-MacBook-Pro)9> net_adm:ping(<<"two@bryans-MacBook-Pro">>).
** exception error: no function clause matching net_adm:ping(<<"two@bryans-MacBook-Pro">>) (net_adm.erl, line 60)
(one@bryans-MacBook-Pro)10> net_adm:ping("two@bryans-MacBook-Pro").
** exception error: no function clause matching net_adm:ping("two@bryans-MacBook-Pro") (net_adm.erl, line 60)
(one@bryans-MacBook-Pro)11> net_adm:ping('two@bryans-MacBook-Pro').
pong
(one@bryans-MacBook-Pro)12> nodes().
['two@bryans-MacBook-Pro']

(one@bryans-MacBook-Pro)13> erlang:list_to_atom("two@bryans-MacBook-Pro").
'two@bryans-MacBook-Pro'
(one@bryans-MacBook-Pro)14> Two =erlang:list_to_atom("two@bryans-MacBook-Pro").
'two@bryans-MacBook-Pro'
(one@bryans-MacBook-Pro)15> net_adm:ping(Two).
pong

(one@bryans-MacBook-Pro)16> cd("/common/erlangstudy").
/common/erlangstudy
ok

(one@bryans-MacBook-Pro)17> pwd().
/common/erlangstudy
ok


(one@bryans-MacBook-Pro)18> ls().
.DS_Store      .git           .gitignore     2014-10-10     2014-5-15
2014-5-16      2014-5-17      2014-5-19      2014-5-28      2014-5-9
2014-6-16      2014-6-27      2014-6-3       2014-7-25      2014-7-27
2014-7-7       2014-7-8       README.md      code
ok
(one@bryans-MacBook-Pro)19> cd("2014-10-10).
(one@bryans-MacBook-Pro)19> l(echo).
(one@bryans-MacBook-Pro)19> nodes().
(one@bryans-MacBook-Pro)19> net_adm:ping(Two).

(one@bryans-MacBook-Pro)19> net_adm:ping('two@bryans-MacBook-Pro').

(one@bryans-MacBook-Pro)19> nodes().


(one@bryans-MacBook-Pro)19> 1.
1

(one@bryans-MacBook-Pro)20> nodes().
['two@bryans-MacBook-Pro']


(one@bryans-MacBook-Pro)25> P = erlang:spawn(echo,server,[],'two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  spawn/4
        called as spawn(echo,server,[],'two@bryans-MacBook-Pro')

(one@bryans-MacBook-Pro)26> P = erlang:spawn(echo,server,[],['two@bryans-MacBook-Pro']).

** exception error: bad argument
     in function  spawn/4
        called as spawn(echo,server,[],['two@bryans-MacBook-Pro'])

(one@bryans-MacBook-Pro)27> rpc:multicall(nodes(), os, cmd, ["/bin/ls"]).
{["140.config\n141.config\n22\n2222\n365\nApplications\nCamera\nCreative Cloud Files\nDesktop\nDocuments\nDownloads\nDropbox\nErlang Videos\nGoogle Drive\nLibrary\nMovies\nMusic\nPictures\nPublic\nScreenshots\nSnapshots\nTAGS\nVarnish-Cache-and-Riak\nVarnish-Cache-and-Riak.md\narchive_schema.xml\natlassian.properties\nbase.retry\nbasho_bench.retry\nbin\nbinf60.png\nbinh3600.png\nbinh60.png\nbluetooth\nbootstrap.py\nbryanhunt\ncouchbase.retry\ndebian\ndocker.retry\ndots.png\nfontconfig-2.11.1\nfoo.html\nfoo.json\nfoo.png\nfoo.svg\nfoo.tar.gz\nfoo.txt\nfoo2.png\nfoo3.png\ngists\nhaproxy.config\nlines.png\nload-test-data.sh\nmickey\nmkmergeplots.sh\nmyrsacert.pem\nmyrsakey.pem\nnewrelic.ini\nnginx-and-rabbit.retry\nnginx.retry\nold\nout\npicsolve.log\nprivate.crt\nprocessing-java\npwsafe-v2.bak\npwsafe.bak\npwsafe.picsolve.psafe3\npwsafe.psafe3\nrg-sfwi-R15B01.patch\nriak.retry\nriak2.0.crdt.mapred.sh\nriak2.0.mapred.sh\nriak_cs.retry\nriak_cs_foop.retry\nscript.deb\nserver.key\nserver.key.org\nsetup_riak.retry\nsetup_riakcs.retry\nsite.retry\ntraining.schedule.md\nupload.basho.com\nusb-key\nvagrant_envs\nzdgrab\n"],
 []}
(one@bryans-MacBook-Pro)28>pman:start().
<0.85.0>
(one@bryans-MacBook-Pro)29>toolbar:start().
<0.92.0>
(one@bryans-MacBook-Pro)30>pman:start().
```

```
[~%]erl -setcookie fooz -sname one
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
(one@bryans-MacBook-Pro)1> net_adm:ping('two@bryans-MacBook-Pro').
pong
(one@bryans-MacBook-Pro)2> nodes().
['two@bryans-MacBook-Pro']
(one@bryans-MacBook-Pro)3> pwd().
/Users/bryanhunt
ok

(one@bryans-MacBook-Pro)4> cd("/common/erlangstudy/2014-10-10").
/common/erlangstudy/2014-10-10
ok

(one@bryans-MacBook-Pro)5> l(echo).
{module,echo}
(one@bryans-MacBook-Pro)6>

(one@bryans-MacBook-Pro)6> nodes().
['two@bryans-MacBook-Pro']
(one@bryans-MacBook-Pro)7> P = spawn(echo,server,[],['two@bryans-MacBook-Pro']).
** exception error: bad argument
     in function  spawn/4
        called as spawn(echo,server,[],['two@bryans-MacBook-Pro'])
(one@bryans-MacBook-Pro)8> P = spawn(echo,server,[],'two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  spawn/4
        called as spawn(echo,server,[],'two@bryans-MacBook-Pro')
(one@bryans-MacBook-Pro)9> P = spawn('two@bryans-MacBook-Pro',echo,server,[]).
<5902.57.0>
(one@bryans-MacBook-Pro)10> P ! foo.
foo
(one@bryans-MacBook-Pro)11> P ! blah.
blah
(one@bryans-MacBook-Pro)12> P ! {a,a}.
{a,a}
from:a, message:a
(one@bryans-MacBook-Pro)13>
=ERROR REPORT==== 12-Oct-2014::11:53:15 ===
Error in process <0.57.0> on node 'two@bryans-MacBook-Pro' with exit value: {badarg,[{echo,server,0,[{file,"echo.erl"},{line,9}]}]}


(one@bryans-MacBook-Pro)13> P ! {a,a}.
{a,a}
(one@bryans-MacBook-Pro)14> erlang:pr
pre_loaded/0       prepare_loading/2  process_display/2  process_flag/2
process_flag/3     process_info/1     process_info/2     processes/0

(one@bryans-MacBook-Pro)14> erlang:process_info(P).
** exception error: bad argument
     in function  process_info/1
        called as process_info(<5902.57.0>)
(one@bryans-MacBook-Pro)15> erlang:processes().
[<0.0.0>,<0.3.0>,<0.6.0>,<0.7.0>,<0.9.0>,<0.10.0>,<0.11.0>,
 <0.12.0>,<0.13.0>,<0.14.0>,<0.15.0>,<0.16.0>,<0.17.0>,
 <0.18.0>,<0.19.0>,<0.20.0>,<0.21.0>,<0.22.0>,<0.23.0>,
 <0.24.0>,<0.25.0>,<0.26.0>,<0.27.0>,<0.28.0>,<0.29.0>,
 <0.30.0>,<0.31.0>,<0.32.0>,<0.33.0>|...]
(one@bryans-MacBook-Pro)16> P.
<5902.57.0>


(one@bryans-MacBook-Pro)17> net_adm:names().
{ok,[{"two",54404},{"one",54559}]}

(one@bryans-MacBook-Pro)18> f(P).
ok

(one@bryans-MacBook-Pro)19> P = spawn('two@bryans-MacBook-Pro',echo,server,[]).
<5902.58.0>

(one@bryans-MacBook-Pro)20> P ! {self(),'asas'}.
{<0.60.0>,asas}
from:<0.60.0>, message:asas

(one@bryans-MacBook-Pro)21> P ! {self(),'asas'}.
{<0.60.0>,asas}
from:<0.60.0>, message:asas

(one@bryans-MacBook-Pro)22> P ! {self(),'asasd'}.
{<0.60.0>,asasd}
from:<0.60.0>, message:asasd

(one@bryans-MacBook-Pro)23> P ! {self(),"dafdasdf"}.
{<0.60.0>,"dafdasdf"}
from:<0.60.0>, message:"dafdasdf"

(one@bryans-MacBook-Pro)24> P ! {self(),"dafdasdf"}.
{<0.60.0>,"dafdasdf"}
from:<0.60.0>, message:"dafdasdf"

(one@bryans-MacBook-Pro)25> global:register_name(global_io_srv, group_leader()).
yes

(one@bryans-MacBook-Pro)26> P ! {self(),"dafdasdf"}.
{<0.60.0>,"dafdasdf"}
from:<0.60.0>, message:"dafdasdf"

(one@bryans-MacBook-Pro)27> P ! {self(),"dafdasdf"}.
{<0.60.0>,"dafdasdf"}
from:<0.60.0>, message:"dafdasdf"

(one@bryans-MacBook-Pro)28> pwd().
/common/erlangstudy/2014-10-10
ok
(one@bryans-MacBook-Pro)29> c(my_gen_server).
{ok,my_gen_server}

(one@bryans-MacBook-Pro)30> m(my_gen_server).
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

(one@bryans-MacBook-Pro)31> P = my_gen_server:start_link().
** exception error: no match of right hand side value {ok,<0.84.0>}

(one@bryans-MacBook-Pro)32> erlang:list_to_pid("<0.84.0>").
<0.84.0>
(one@bryans-MacBook-Pro)33> erl
erl_bifs              erl_bits              erl_distribution
erl_epmd              erl_eval              erl_expand_records
erl_internal          erl_lint              erl_parse
erl_prim_loader       erl_scan              erlang



(one@bryans-MacBook-Pro)33> erlang:exit(erlang:list_to_pid("<0.84.0>")).
** exception exit: <0.84.0>
(one@bryans-MacBook-Pro)34> erlang:exit(erlang:list_to_pid("<0.84.0>")).
** exception exit: <0.84.0>

(one@bryans-MacBook-Pro)35> MGS = my_gen_server:start_link().
{ok,<0.93.0>}


(one@bryans-MacBook-Pro)36> MGS ! foo.
** exception error: bad argument
     in operator  !/2
        called as {ok,<0.93.0>} ! foo
(one@bryans-MacBook-Pro)37> MGS ! foo.
** exception error: bad argument
     in operator  !/2
        called as {ok,<0.93.0>} ! foo
(one@bryans-MacBook-Pro)38> my_gen_server:get_id().
** exception exit: {noproc,{gen_server,call,[my_gen_server,{}]}}
     in function  gen_server:call/2 (gen_server.erl, line 180)
     in call from my_gen_server:get_id/0 (my_gen_server.erl, line 12)
(one@bryans-MacBook-Pro)39> MGS:get_id().
** exception error: undefined function ok:get_id/1
(one@bryans-MacBook-Pro)40> P = my_gen_server:start_link().
** exception error: no match of right hand side value {ok,<0.103.0>}
(one@bryans-MacBook-Pro)41> my_gen_server:start_link().
{ok,<0.106.0>}

(one@bryans-MacBook-Pro)42> my_gen_server:get_id().
handle_call Request:{} From:{<0.104.0>,#Ref<0.0.0.365>} State:{state,1}
1

(one@bryans-MacBook-Pro)43> my_gen_server:get_id().
handle_call Request:{} From:{<0.104.0>,#Ref<0.0.0.371>} State:{state,2}
2

(one@bryans-MacBook-Pro)44> my_gen_server:get_id().
handle_call Request:{} From:{<0.104.0>,#Ref<0.0.0.377>} State:{state,3}
3

(one@bryans-MacBook-Pro)45> my_gen_server:get_id().
handle_call Request:{} From:{<0.104.0>,#Ref<0.0.0.383>} State:{state,4}
4
```
