```
[~%]activate_R16B03
[~%]erl
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
1> erlang:get_cookie()
1> .
nocookie
2>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
^C%                                                                                   [~%]reset

^[[A%                                                                                 [~%]erl -setcookie fooz -sname one
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
(one@bryans-MacBook-Pro)1> nodes().
[]
(one@bryans-MacBook-Pro)2> node(two).
** exception error: bad argument
     in function  node/1
        called as node(two)
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
(one@bryans-MacBook-Pro)6> erlang:pid_to_list(
application               application_controller    application_master
auth                      beam_lib                  binary
c                         code                      code_server
dict                      edlin                     edlin_expand
epp                       erl_distribution          erl_epmd
erl_eval                  erl_internal              erl_lint
erl_parse                 erl_prim_loader           erl_scan
erlang                    error_handler             error_logger
error_logger_tty_h        erts_internal             ets
file                      file_io_server            file_server
filename                  gb_sets                   gb_trees
gen                       gen_event                 gen_server
gen_tcp                   global                    global_group
group                     heart                     hipe_unified_loader
inet                      inet_config               inet_db
inet_parse                inet_tcp                  inet_tcp_dist
inet_udp                  init                      io
io_lib                    io_lib_format             io_lib_pretty
kernel                    kernel_config             lib
lists                     net_kernel                orddict
ordsets                   os                        otp_internal
otp_ring0                 prim_eval                 prim_file
prim_inet                 prim_zip                  proc_lib
proplists                 ram_file                  rpc
sets                      shell                     standard_error
supervisor                supervisor_bridge         sys
unicode                   user_drv                  user_sup
zlib
(one@bryans-MacBook-Pro)6> erlang:
'!'/2                                  '*'/2
'+'/1                                  '+'/2
'++'/2                                 '-'/1
'-'/2                                  '--'/2
'/'/2                                  '/='/2
'<'/2                                  '=/='/2
'=:='/2                                '=<'/2
'=='/2                                 '>'/2
'>='/2                                 'and'/2
'band'/2                               'bnot'/1
'bor'/2                                'bsl'/2
'bsr'/2                                'bxor'/2
'div'/2                                'not'/1
'or'/2                                 'rem'/2
'xor'/2                                abs/1
adler32/1                              adler32/2
adler32_combine/3                      alloc_info/1
alloc_sizes/1                          append/2
append_element/2                       apply/2
apply/3                                atom_to_binary/2
atom_to_list/1                         await_proc_exit/3
await_sched_wall_time_modifications/2  binary_part/2
binary_part/3                          binary_to_atom/2
binary_to_existing_atom/2              binary_to_float/1
binary_to_integer/1                    binary_to_integer/2
binary_to_list/1                       binary_to_list/3
binary_to_term/1                       binary_to_term/2
bit_size/1                             bitsize/1
bitstr_to_list/1                       bitstring_to_list/1
bump_reductions/1                      byte_size/1
call_on_load_function/1                cancel_timer/1
check_old_code/1                       check_process_code/2
crasher/6                              crc32/1
crc32/2                                crc32_combine/3
date/0                                 decode_packet/3
delay_trap/2                           delete_element/2
delete_module/1                        demonitor/1
demonitor/2                            dexit/2
dgroup_leader/2                        disconnect_node/1
display/1                              display_nl/0
display_string/1                       dist_exit/3
dlink/1                                dmonitor_node/3
dmonitor_p/2                           dsend/2
dsend/3                                dt_append_vm_tag_data/1
dt_get_tag/0                           dt_get_tag_data/0
dt_prepend_vm_tag_data/1               dt_put_tag/1
dt_restore_tag/1                       dt_spread_tag/1
dunlink/1                              element/2
erase/0                                erase/1
error/1                                error/2
exit/1                                 exit/2
external_size/1                        external_size/2
finish_after_on_load/2                 finish_loading/1
float/1                                float_to_binary/1
float_to_binary/2                      float_to_list/1
float_to_list/2                        flush_monitor_message/2
format_cpu_topology/1                  fun_info/1
fun_info/2                             fun_to_list/1
function_exported/3                    garbage_collect/0
garbage_collect/1                      garbage_collect_message_area/0
gather_gc_info_result/1                gather_sched_wall_time_result/1
get/0                                  get/1
get_cookie/0                           get_keys/1
get_module_info/1                      get_module_info/2
get_stacktrace/0                       group_leader/0
group_leader/2                         halt/0
halt/1                                 halt/2
hash/2                                 hd/1
hibernate/3                            insert_element/3
integer_to_binary/1                    integer_to_binary/2
integer_to_list/1                      integer_to_list/2
iolist_size/1                          iolist_to_binary/1
is_alive/0                             is_atom/1
is_binary/1                            is_bitstring/1
is_boolean/1                           is_builtin/3
is_float/1                             is_function/1
is_function/2                          is_integer/1
is_list/1                              is_number/1
is_pid/1                               is_port/1
is_process_alive/1                     is_record/2
is_record/3                            is_reference/1
is_tuple/1                             length/1
link/1                                 list_to_atom/1
list_to_binary/1                       list_to_bitstr/1
list_to_bitstring/1                    list_to_existing_atom/1
list_to_float/1                        list_to_integer/1
list_to_integer/2                      list_to_pid/1
list_to_tuple/1                        load_module/2
load_nif/2                             loaded/0
localtime/0                            localtime_to_universaltime/1
localtime_to_universaltime/2           make_fun/3
make_ref/0                             make_tuple/2
make_tuple/3                           match_spec_test/3
max/2                                  md5/1
md5_final/1                            md5_init/0
md5_update/2                           memory/0
memory/1                               min/2
module_info/0                          module_info/1
module_loaded/1                        monitor/2
monitor_node/2                         monitor_node/3
nif_error/1                            nif_error/2
node/0                                 node/1
nodes/0                                nodes/1
now/0                                  open_port/2
phash/2                                phash2/1
phash2/2                               pid_to_list/1
port_call/2                            port_call/3
port_close/1                           port_command/2
port_command/3                         port_connect/2
port_control/3                         port_get_data/1
port_info/1                            port_info/2
port_set_data/2                        port_to_list/1
ports/0                                posixtime_to_universaltime/1
pre_loaded/0                           prepare_loading/2
process_display/2                      process_flag/2
process_flag/3                         process_info/1
process_info/2                         processes/0
purge_module/1                         put/2
raise/3                                read_timer/1
ref_to_list/1                          register/2
registered/0                           resume_process/1
round/1                                self/0
send/2                                 send/3
send_after/3                           send_nosuspend/2
send_nosuspend/3                       seq_trace/2
seq_trace_info/1                       seq_trace_print/1
seq_trace_print/2                      set_cookie/2
set_cpu_topology/1                     setelement/3
setnode/2                              setnode/3
size/1                                 spawn/1
spawn/2                                spawn/3
spawn/4                                spawn_link/1
spawn_link/2                           spawn_link/3
spawn_link/4                           spawn_monitor/1
spawn_monitor/3                        spawn_opt/1
spawn_opt/2                            spawn_opt/3
spawn_opt/4                            spawn_opt/5
split_binary/2                         start_timer/3
statistics/1                           subtract/2
suspend_process/1                      suspend_process/2
system_flag/2                          system_info/1
system_monitor/0                       system_monitor/1
system_monitor/2                       system_profile/0
system_profile/2                       term_to_binary/1
term_to_binary/2                       throw/1
time/0                                 tl/1
trace/3                                trace_delivered/1
trace_info/2                           trace_pattern/2
trace_pattern/3                        trunc/1
tuple_size/1                           tuple_to_list/1
universaltime/0                        universaltime_to_localtime/1
universaltime_to_posixtime/1           unlink/1
unregister/1                           whereis/1
yield/0
(one@bryans-MacBook-Pro)6> erlang:no
node/0   node/1   nodes/0  nodes/1  now/0
(one@bryans-MacBook-Pro)6> erlang:no
node/0   node/1   nodes/0  nodes/1  now/0
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
(one@bryans-MacBook-Pro)13> erlang:li
link/1                   list_to_atom/1           list_to_binary/1
list_to_bitstr/1         list_to_bitstring/1      list_to_existing_atom/1
list_to_float/1          list_to_integer/1        list_to_integer/2
list_to_pid/1            list_to_tuple/1
(one@bryans-MacBook-Pro)13> erlang:list_to_atom("two@bryans-MacBook-Pro").
'two@bryans-MacBook-Pro'
(one@bryans-MacBook-Pro)14> Two =erlang:list_to_atom("two@bryans-MacBook-Pro").
'two@bryans-MacBook-Pro'
(one@bryans-MacBook-Pro)15> net_adm:ping(Two).
pong
(one@bryans-MacBook-Pro)16> erlang:re
read_timer/1      ref_to_list/1     register/2        registered/0
resume_process/1
(one@bryans-MacBook-Pro)16> cd("/common/erlangstudy").
/common/erlangstudy
ok
(one@bryans-MacBook-Pro)17> pwd().
/common/erlangstudy
ok
(one@bryans-MacBook-Pro)18> ls()>
(one@bryans-MacBook-Pro)18> .
* 2: syntax error before: '.'
(one@bryans-MacBook-Pro)18> ls().
.DS_Store      .git           .gitignore     2014-10-10     2014-5-15
2014-5-16      2014-5-17      2014-5-19      2014-5-28      2014-5-9
2014-6-16      2014-6-27      2014-6-3       2014-7-25      2014-7-27
2014-7-7       2014-7-8       README.md      code
ok
(one@bryans-MacBook-Pro)19> cd("2014-10-10).
(one@bryans-MacBook-Pro)19> l(echo).
(one@bryans-MacBook-Pro)19> er;
application               application_controller    application_master
auth                      beam_lib                  binary
c                         code                      code_server
dict                      dist_util                 edlin
edlin_expand              epp                       erl_bits
erl_distribution          erl_epmd                  erl_eval
erl_internal              erl_lint                  erl_parse
erl_prim_loader           erl_scan                  erlang
error_handler             error_logger              error_logger_tty_h
erts_internal             ets                       eval_bits
file                      file_io_server            file_server
filename                  gb_sets                   gb_trees
gen                       gen_event                 gen_server
gen_tcp                   global                    global_group
group                     heart                     hipe_unified_loader
inet                      inet_config               inet_db
inet_gethost_native       inet_parse                inet_tcp
inet_tcp_dist             inet_udp                  init
io                        io_lib                    io_lib_format
io_lib_pretty             kernel                    kernel_config
lib                       lists                     net_adm
net_kernel                orddict                   ordsets
os                        otp_internal              otp_ring0
prim_eval                 prim_file                 prim_inet
prim_zip                  proc_lib                  proplists
ram_file                  rpc                       sets
shell                     shell_default             standard_error
supervisor                supervisor_bridge         sys
unicode                   user_drv                  user_sup
zlib
(one@bryans-MacBook-Pro)19> erl
erl_bits            erl_distribution    erl_epmd
erl_eval            erl_internal        erl_lint
erl_parse           erl_prim_loader     erl_scan
erlang
(one@bryans-MacBook-Pro)19> erlang:sp
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5      split_binary/2

(one@bryans-MacBook-Pro)19> erlang:sp
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5      split_binary/2

(one@bryans-MacBook-Pro)19> erlang:spawn
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5
(one@bryans-MacBook-Pro)19> nodes().
(one@bryans-MacBook-Pro)19> net_adm:ping(Two).
(one@bryans-MacBook-Pro)19>
(one@bryans-MacBook-Pro)19> net_adm:ping('two@bryans-MacBook-Pro').
(one@bryans-MacBook-Pro)19>
(one@bryans-MacBook-Pro)19> nodes().
(one@bryans-MacBook-Pro)19> .
(one@bryans-MacBook-Pro)19> 1.
(one@bryans-MacBook-Pro)19> ,1.
(one@bryans-MacBook-Pro)19>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
c

(one@bryans-MacBook-Pro)19>
(one@bryans-MacBook-Pro)19>
(one@bryans-MacBook-Pro)19> 1.
(one@bryans-MacBook-Pro)19> ".
* 16: syntax error before: '.'
(one@bryans-MacBook-Pro)19> 1.
1
(one@bryans-MacBook-Pro)20> nodes().
['two@bryans-MacBook-Pro']
(one@bryans-MacBook-Pro)21> N = node('two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  node/1
        called as node('two@bryans-MacBook-Pro')
(one@bryans-MacBook-Pro)22> node('two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  node/1
        called as node('two@bryans-MacBook-Pro')
(one@bryans-MacBook-Pro)23> erlang:g
garbage_collect/0                garbage_collect/1
garbage_collect_message_area/0   gather_gc_info_result/1
gather_sched_wall_time_result/1  get/0
get/1                            get_cookie/0
get_keys/1                       get_module_info/1
get_module_info/2                get_stacktrace/0
group_leader/0                   group_leader/2

(one@bryans-MacBook-Pro)23> erlang:get
get/0              get/1              get_cookie/0       get_keys/1
get_module_info/1  get_module_info/2  get_stacktrace/0
(one@bryans-MacBook-Pro)23> erlang:no
node/0   node/1   nodes/0  nodes/1  now/0
(one@bryans-MacBook-Pro)23> erlang:no
node/0   node/1   nodes/0  nodes/1  now/0
(one@bryans-MacBook-Pro)23> erlang:no
node/0   node/1   nodes/0  nodes/1  now/0
(one@bryans-MacBook-Pro)23> erlang:node
node/0   node/1   nodes/0  nodes/1
(one@bryans-MacBook-Pro)23> erlang:nodes('two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  nodes/1
        called as nodes('two@bryans-MacBook-Pro')
(one@bryans-MacBook-Pro)24> erlang:node('two@bryans-MacBook-Pro').
** exception error: bad argument
     in function  node/1
        called as node('two@bryans-MacBook-Pro')
(one@bryans-MacBook-Pro)25> erlang:sp
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5      split_binary/2

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
(one@bryans-MacBook-Pro)28>  pman:start()
(one@bryans-MacBook-Pro)28> .
<0.85.0>
(one@bryans-MacBook-Pro)29> toolbar:start().
<0.92.0>
(one@bryans-MacBook-Pro)30>  pman:start().

BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
c

BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
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
(one@bryans-MacBook-Pro)4>
(one@bryans-MacBook-Pro)4>
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
(one@bryans-MacBook-Pro)17> sys:print_log(
application               application_controller    application_master
auth                      beam_lib                  binary
c                         calendar                  code
code_server               dict                      dist_util
echo                      edlin                     edlin_expand
epp                       erl_distribution          erl_epmd
erl_eval                  erl_internal              erl_lint
erl_parse                 erl_prim_loader           erl_scan
erlang                    error_handler             error_logger
error_logger_tty_h        erts_internal             ets
file                      file_io_server            file_server
filename                  gb_sets                   gb_trees
gen                       gen_event                 gen_server
gen_tcp                   global                    global_group
group                     heart                     hipe_unified_loader
inet                      inet_config               inet_db
inet_gethost_native       inet_parse                inet_tcp
inet_tcp_dist             inet_udp                  init
io                        io_lib                    io_lib_format
io_lib_pretty             kernel                    kernel_config
lib                       lists                     net_adm
net_kernel                orddict                   ordsets
os                        otp_internal              otp_ring0
prim_eval                 prim_file                 prim_inet
prim_zip                  proc_lib                  proplists
ram_file                  rpc                       sets
shell                     shell_default             standard_error
supervisor                supervisor_bridge         sys
unicode                   user_drv                  user_sup
zlib
(one@bryans-MacBook-Pro)17> er
erl_distribution      erl_epmd              erl_eval
erl_internal          erl_lint              erl_parse
erl_prim_loader       erl_scan              erlang
error_handler         error_logger          error_logger_tty_h
erts_internal
(one@bryans-MacBook-Pro)17> erl
erl_distribution    erl_epmd            erl_eval
erl_internal        erl_lint            erl_parse
erl_prim_loader     erl_scan            erlang

(one@bryans-MacBook-Pro)17> erl
erl_distribution    erl_epmd            erl_eval
erl_internal        erl_lint            erl_parse
erl_prim_loader     erl_scan            erlang

(one@bryans-MacBook-Pro)17> erlang:pr
pre_loaded/0       prepare_loading/2  process_display/2  process_flag/2
process_flag/3     process_info/1     process_info/2     processes/0

(one@bryans-MacBook-Pro)17> erlang:t
term_to_binary/1   term_to_binary/2   throw/1            time/0
tl/1               trace/3            trace_delivered/1  trace_info/2
trace_pattern/2    trace_pattern/3    trunc/1            tuple_size/1
tuple_to_list/1
(one@bryans-MacBook-Pro)17> erlang:term_to_binary(
application               application_controller    application_master
auth                      beam_lib                  binary
c                         calendar                  code
code_server               dict                      dist_util
echo                      edlin                     edlin_expand
epp                       erl_distribution          erl_epmd
erl_eval                  erl_internal              erl_lint
erl_parse                 erl_prim_loader           erl_scan
erlang                    error_handler             error_logger
error_logger_tty_h        erts_internal             ets
file                      file_io_server            file_server
filename                  gb_sets                   gb_trees
gen                       gen_event                 gen_server
gen_tcp                   global                    global_group
group                     heart                     hipe_unified_loader
inet                      inet_config               inet_db
inet_gethost_native       inet_parse                inet_tcp
inet_tcp_dist             inet_udp                  init
io                        io_lib                    io_lib_format
io_lib_pretty             kernel                    kernel_config
lib                       lists                     net_adm
net_kernel                orddict                   ordsets
os                        otp_internal              otp_ring0
prim_eval                 prim_file                 prim_inet
prim_zip                  proc_lib                  proplists
ram_file                  rpc                       sets
shell                     shell_default             standard_error
supervisor                supervisor_bridge         sys
unicode                   user_drv                  user_sup
zlib
(one@bryans-MacBook-Pro)17> net_adm:
dns_hostname/1  host_file/0     localhost/0     module_info/0
module_info/1   names/0         names/1         ping/1
ping_list/1     world/0         world/1         world_list/1
world_list/2
(one@bryans-MacBook-Pro)17> net_adm:names().
{ok,[{"two",54404},{"one",54559}]}
(one@bryans-MacBook-Pro)18> f(P)>
(one@bryans-MacBook-Pro)18> .
* 2: syntax error before: '.'
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
(one@bryans-MacBook-Pro)32> erl
erl_bifs              erl_bits              erl_distribution
erl_epmd              erl_eval              erl_expand_records
erl_internal          erl_lint              erl_parse
erl_prim_loader       erl_scan              erlang

(one@bryans-MacBook-Pro)32> erlang:p
phash/2                       phash2/1
phash2/2                      pid_to_list/1
port_call/2                   port_call/3
port_close/1                  port_command/2
port_command/3                port_connect/2
port_control/3                port_get_data/1
port_info/1                   port_info/2
port_set_data/2               port_to_list/1
ports/0                       posixtime_to_universaltime/1
pre_loaded/0                  prepare_loading/2
process_display/2             process_flag/2
process_flag/3                process_info/1
process_info/2                processes/0
purge_module/1                put/2

(one@bryans-MacBook-Pro)32> erlang:m
make_fun/3         make_ref/0         make_tuple/2       make_tuple/3
match_spec_test/3  max/2              md5/1              md5_final/1
md5_init/0         md5_update/2       memory/0           memory/1
min/2              module_info/0      module_info/1      module_loaded/1
monitor/2          monitor_node/2     monitor_node/3
(one@bryans-MacBook-Pro)32> erlang:cr
crasher/6        crc32/1          crc32/2          crc32_combine/3

(one@bryans-MacBook-Pro)32> erlang:
'!'/2                                  '*'/2
'+'/1                                  '+'/2
'++'/2                                 '-'/1
'-'/2                                  '--'/2
'/'/2                                  '/='/2
'<'/2                                  '=/='/2
'=:='/2                                '=<'/2
'=='/2                                 '>'/2
'>='/2                                 'and'/2
'band'/2                               'bnot'/1
'bor'/2                                'bsl'/2
'bsr'/2                                'bxor'/2
'div'/2                                'not'/1
'or'/2                                 'rem'/2
'xor'/2                                abs/1
adler32/1                              adler32/2
adler32_combine/3                      alloc_info/1
alloc_sizes/1                          append/2
append_element/2                       apply/2
apply/3                                atom_to_binary/2
atom_to_list/1                         await_proc_exit/3
await_sched_wall_time_modifications/2  binary_part/2
binary_part/3                          binary_to_atom/2
binary_to_existing_atom/2              binary_to_float/1
binary_to_integer/1                    binary_to_integer/2
binary_to_list/1                       binary_to_list/3
binary_to_term/1                       binary_to_term/2
bit_size/1                             bitsize/1
bitstr_to_list/1                       bitstring_to_list/1
bump_reductions/1                      byte_size/1
call_on_load_function/1                cancel_timer/1
check_old_code/1                       check_process_code/2
crasher/6                              crc32/1
crc32/2                                crc32_combine/3
date/0                                 decode_packet/3
delay_trap/2                           delete_element/2
delete_module/1                        demonitor/1
demonitor/2                            dexit/2
dgroup_leader/2                        disconnect_node/1
display/1                              display_nl/0
display_string/1                       dist_exit/3
dlink/1                                dmonitor_node/3
dmonitor_p/2                           dsend/2
dsend/3                                dt_append_vm_tag_data/1
dt_get_tag/0                           dt_get_tag_data/0
dt_prepend_vm_tag_data/1               dt_put_tag/1
dt_restore_tag/1                       dt_spread_tag/1
dunlink/1                              element/2
erase/0                                erase/1
error/1                                error/2
exit/1                                 exit/2
external_size/1                        external_size/2
finish_after_on_load/2                 finish_loading/1
float/1                                float_to_binary/1
float_to_binary/2                      float_to_list/1
float_to_list/2                        flush_monitor_message/2
format_cpu_topology/1                  fun_info/1
fun_info/2                             fun_to_list/1
function_exported/3                    garbage_collect/0
garbage_collect/1                      garbage_collect_message_area/0
gather_gc_info_result/1                gather_sched_wall_time_result/1
get/0                                  get/1
get_cookie/0                           get_keys/1
get_module_info/1                      get_module_info/2
get_stacktrace/0                       group_leader/0
group_leader/2                         halt/0
halt/1                                 halt/2
hash/2                                 hd/1
hibernate/3                            insert_element/3
integer_to_binary/1                    integer_to_binary/2
integer_to_list/1                      integer_to_list/2
iolist_size/1                          iolist_to_binary/1
is_alive/0                             is_atom/1
is_binary/1                            is_bitstring/1
is_boolean/1                           is_builtin/3
is_float/1                             is_function/1
is_function/2                          is_integer/1
is_list/1                              is_number/1
is_pid/1                               is_port/1
is_process_alive/1                     is_record/2
is_record/3                            is_reference/1
is_tuple/1                             length/1
link/1                                 list_to_atom/1
list_to_binary/1                       list_to_bitstr/1
list_to_bitstring/1                    list_to_existing_atom/1
list_to_float/1                        list_to_integer/1
list_to_integer/2                      list_to_pid/1
list_to_tuple/1                        load_module/2
load_nif/2                             loaded/0
localtime/0                            localtime_to_universaltime/1
localtime_to_universaltime/2           make_fun/3
make_ref/0                             make_tuple/2
make_tuple/3                           match_spec_test/3
max/2                                  md5/1
md5_final/1                            md5_init/0
md5_update/2                           memory/0
memory/1                               min/2
module_info/0                          module_info/1
module_loaded/1                        monitor/2
monitor_node/2                         monitor_node/3
nif_error/1                            nif_error/2
node/0                                 node/1
nodes/0                                nodes/1
now/0                                  open_port/2
phash/2                                phash2/1
phash2/2                               pid_to_list/1
port_call/2                            port_call/3
port_close/1                           port_command/2
port_command/3                         port_connect/2
port_control/3                         port_get_data/1
port_info/1                            port_info/2
port_set_data/2                        port_to_list/1
ports/0                                posixtime_to_universaltime/1
pre_loaded/0                           prepare_loading/2
process_display/2                      process_flag/2
process_flag/3                         process_info/1
process_info/2                         processes/0
purge_module/1                         put/2
raise/3                                read_timer/1
ref_to_list/1                          register/2
registered/0                           resume_process/1
round/1                                self/0
send/2                                 send/3
send_after/3                           send_nosuspend/2
send_nosuspend/3                       seq_trace/2
seq_trace_info/1                       seq_trace_print/1
seq_trace_print/2                      set_cookie/2
set_cpu_topology/1                     setelement/3
setnode/2                              setnode/3
size/1                                 spawn/1
spawn/2                                spawn/3
spawn/4                                spawn_link/1
spawn_link/2                           spawn_link/3
spawn_link/4                           spawn_monitor/1
spawn_monitor/3                        spawn_opt/1
spawn_opt/2                            spawn_opt/3
spawn_opt/4                            spawn_opt/5
split_binary/2                         start_timer/3
statistics/1                           subtract/2
suspend_process/1                      suspend_process/2
system_flag/2                          system_info/1
system_monitor/0                       system_monitor/1
system_monitor/2                       system_profile/0
system_profile/2                       term_to_binary/1
term_to_binary/2                       throw/1
time/0                                 tl/1
trace/3                                trace_delivered/1
trace_info/2                           trace_pattern/2
trace_pattern/3                        trunc/1
tuple_size/1                           tuple_to_list/1
universaltime/0                        universaltime_to_localtime/1
universaltime_to_posixtime/1           unlink/1
unregister/1                           whereis/1
yield/0
(one@bryans-MacBook-Pro)32> erlang:
(one@bryans-MacBook-Pro)32> .
* 2: syntax error before: '.'
(one@bryans-MacBook-Pro)32> pro
proc_lib     proplists
(one@bryans-MacBook-Pro)32> sys:
change_code/4        change_code/5        debug_options/1
get_debug/3          get_state/1          get_state/2
get_status/1         get_status/2         handle_debug/4
handle_system_msg/6  handle_system_msg/7  install/2
install/3            log/2                log/3
log_to_file/2        log_to_file/3        module_info/0
module_info/1        no_debug/1           no_debug/2
print_log/1          remove/2             remove/3
replace_state/2      replace_state/3      resume/1
resume/2             statistics/2         statistics/3
suspend/1            suspend/2            suspend_loop_hib/6
trace/2              trace/3
(one@bryans-MacBook-Pro)32> proc_lib:
format/1                  format/2                  hibernate/3
init_ack/1                init_ack/2                init_p/3
init_p/5                  initial_call/1            module_info/0
module_info/1             spawn/1                   spawn/2
spawn/3                   spawn/4                   spawn_link/1
spawn_link/2              spawn_link/3              spawn_link/4
spawn_opt/2               spawn_opt/3               spawn_opt/4
spawn_opt/5               start/3                   start/4
start/5                   start_link/3              start_link/4
start_link/5              translate_initial_call/1  wake_up/3

(one@bryans-MacBook-Pro)32> c:
appcall/4       bi/1            bt/1            c/1
c/2             cd/1            display_info/1  erlangrc/0
erlangrc/1      flush/0         help/0          i/0
i/1             i/3             l/1             lc/1
lc_batch/0      lc_batch/1      ls/0            ls/1
m/0             m/1             memory/0        memory/1
module_info/0   module_info/1   nc/1            nc/2
ni/0            nl/1            nregs/0         pid/3
pwd/0           q/0             regs/0          xm/1
y/1             y/2
(one@bryans-MacBook-Pro)32> s
sets                 shell                shell_default
sofs                 standard_error       string
supervisor           supervisor_bridge    sys
sys_core_dsetel      sys_core_fold        sys_pre_expand

(one@bryans-MacBook-Pro)32>
application               application_controller    application_master
auth                      beam_a                    beam_asm
beam_block                beam_bool                 beam_bsm
beam_clean                beam_dead                 beam_dict
beam_except               beam_flatten              beam_jump
beam_lib                  beam_opcodes              beam_peep
beam_receive              beam_split                beam_trim
beam_type                 beam_utils                beam_validator
beam_z                    binary                    c
calendar                  cerl                      code
code_server               compile                   core_lib
dict                      dist_util                 echo
edlin                     edlin_expand              epp
erl_bifs                  erl_bits                  erl_distribution
erl_epmd                  erl_eval                  erl_expand_records
erl_internal              erl_lint                  erl_parse
erl_prim_loader           erl_scan                  erlang
error_handler             error_logger              error_logger_tty_h
erts_internal             ets                       file
file_io_server            file_server               filename
gb_sets                   gb_trees                  gen
gen_event                 gen_server                gen_tcp
global                    global_group              group
heart                     hipe_unified_loader       inet
inet_config               inet_db                   inet_gethost_native
inet_parse                inet_tcp                  inet_tcp_dist
inet_udp                  init                      io
io_lib                    io_lib_format             io_lib_pretty
kernel                    kernel_config             lib
lists                     my_gen_server             net_adm
net_kernel                orddict                   ordsets
os                        otp_internal              otp_ring0
prim_eval                 prim_file                 prim_inet
prim_zip                  proc_lib                  proplists
ram_file                  rpc                       sets
shell                     shell_default             sofs
standard_error            string                    supervisor
supervisor_bridge         sys                       sys_core_dsetel
sys_core_fold             sys_pre_expand            unicode
user_drv                  user_sup                  v3_codegen
v3_core                   v3_kernel                 v3_life
zlib
(one@bryans-MacBook-Pro)32> a
application               application_controller    application_master
auth
(one@bryans-MacBook-Pro)32> b
beam_a            beam_asm          beam_block        beam_bool
beam_bsm          beam_clean        beam_dead         beam_dict
beam_except       beam_flatten      beam_jump         beam_lib
beam_opcodes      beam_peep         beam_receive      beam_split
beam_trim         beam_type         beam_utils        beam_validator
beam_z            binary
(one@bryans-MacBook-Pro)32> c
c              calendar       cerl           code           code_server
compile        core_lib
(one@bryans-MacBook-Pro)32> co
code           code_server    compile        core_lib
(one@bryans-MacBook-Pro)32> code:
add_path/1             add_patha/1            add_paths/1
add_pathsa/1           add_pathsz/1           add_pathz/1
all_loaded/0           clash/0                compiler_dir/0
del_path/1             delete/1               ensure_loaded/1
get_chunk/2            get_mode/0             get_object_code/1
get_path/0             is_loaded/1            is_module_native/1
is_sticky/1            lib_dir/0              lib_dir/1
lib_dir/2              load_abs/1             load_abs/2
load_binary/3          load_file/1            load_native_partial/2
load_native_sticky/3   make_stub_module/3     module_info/0
module_info/1          module_md5/1           objfile_extension/0
priv_dir/1             purge/1                rehash/0
replace_path/2         root_dir/0             set_path/1
set_primary_archive/4  soft_purge/1           start_link/0
start_link/1           stick_dir/1            stick_mod/1
stop/0                 unstick_dir/1          unstick_mod/1
where_is_file/1        where_is_file/2        which/1

(one@bryans-MacBook-Pro)32> c
c              calendar       cerl           code           code_server
compile        core_lib
(one@bryans-MacBook-Pro)32> di
dict         dist_util
(one@bryans-MacBook-Pro)32> e
echo                  edlin                 edlin_expand
epp                   erl_bifs              erl_bits
erl_distribution      erl_epmd              erl_eval
erl_expand_records    erl_internal          erl_lint
erl_parse             erl_prim_loader       erl_scan
erlang                error_handler         error_logger
error_logger_tty_h    erts_internal         ets

(one@bryans-MacBook-Pro)32> file
file              file_io_server    file_server       filename

(one@bryans-MacBook-Pro)32> g
gb_sets         gb_trees        gen             gen_event
gen_server      gen_tcp         global          global_group
group
(one@bryans-MacBook-Pro)32> h
heart                  hipe_unified_loader
(one@bryans-MacBook-Pro)32> i
inet                   inet_config            inet_db
inet_gethost_native    inet_parse             inet_tcp
inet_tcp_dist          inet_udp               init
io                     io_lib                 io_lib_format
io_lib_pretty
(one@bryans-MacBook-Pro)32> kernel
kernel           kernel_config
(one@bryans-MacBook-Pro)32> kernel:
config_change/3  init/1           module_info/0    module_info/1
start/2          stop/1
(one@bryans-MacBook-Pro)32> kernel:
config_change/3  init/1           module_info/0    module_info/1
start/2          stop/1
(one@bryans-MacBook-Pro)32> li
lib      lists
(one@bryans-MacBook-Pro)32> li
lib      lists
(one@bryans-MacBook-Pro)32> s
sets                 shell                shell_default
sofs                 standard_error       string
supervisor           supervisor_bridge    sys
sys_core_dsetel      sys_core_fold        sys_pre_expand

(one@bryans-MacBook-Pro)32> s
sets                 shell                shell_default
sofs                 standard_error       string
supervisor           supervisor_bridge    sys
sys_core_dsetel      sys_core_fold        sys_pre_expand

(one@bryans-MacBook-Pro)32> sys
sys                sys_core_dsetel    sys_core_fold      sys_pre_expand

(one@bryans-MacBook-Pro)32> sys:
change_code/4        change_code/5        debug_options/1
get_debug/3          get_state/1          get_state/2
get_status/1         get_status/2         handle_debug/4
handle_system_msg/6  handle_system_msg/7  install/2
install/3            log/2                log/3
log_to_file/2        log_to_file/3        module_info/0
module_info/1        no_debug/1           no_debug/2
print_log/1          remove/2             remove/3
replace_state/2      replace_state/3      resume/1
resume/2             statistics/2         statistics/3
suspend/1            suspend/2            suspend_loop_hib/6
trace/2              trace/3
(one@bryans-MacBook-Pro)32> u
unicode     user_drv    user_sup
(one@bryans-MacBook-Pro)32> u
unicode     user_drv    user_sup
(one@bryans-MacBook-Pro)32> v3_
v3_codegen    v3_core       v3_kernel     v3_life
(one@bryans-MacBook-Pro)32> erlang:list_to_
list_to_atom/1           list_to_binary/1         list_to_bitstr/1
list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1
list_to_integer/1        list_to_integer/2        list_to_pid/1
list_to_tuple/1
(one@bryans-MacBook-Pro)32> erlang:list_to_
list_to_atom/1           list_to_binary/1         list_to_bitstr/1
list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1
list_to_integer/1        list_to_integer/2        list_to_pid/1
list_to_tuple/1
(one@bryans-MacBook-Pro)32> erlang:list_to_pid("<0.84.0>").
<0.84.0>
(one@bryans-MacBook-Pro)33> erl
erl_bifs              erl_bits              erl_distribution
erl_epmd              erl_eval              erl_expand_records
erl_internal          erl_lint              erl_parse
erl_prim_loader       erl_scan              erlang

(one@bryans-MacBook-Pro)33> erlang:ex
exit/1           exit/2           external_size/1  external_size/2

(one@bryans-MacBook-Pro)33> erlang:exit(
application               application_controller    application_master
auth                      beam_a                    beam_asm
beam_block                beam_bool                 beam_bsm
beam_clean                beam_dead                 beam_dict
beam_except               beam_flatten              beam_jump
beam_lib                  beam_opcodes              beam_peep
beam_receive              beam_split                beam_trim
beam_type                 beam_utils                beam_validator
beam_z                    binary                    c
calendar                  cerl                      code
code_server               compile                   core_lib
dict                      dist_util                 echo
edlin                     edlin_expand              epp
erl_bifs                  erl_bits                  erl_distribution
erl_epmd                  erl_eval                  erl_expand_records
erl_internal              erl_lint                  erl_parse
erl_prim_loader           erl_scan                  erlang
error_handler             error_logger              error_logger_tty_h
erts_internal             ets                       file
file_io_server            file_server               filename
gb_sets                   gb_trees                  gen
gen_event                 gen_server                gen_tcp
global                    global_group              group
heart                     hipe_unified_loader       inet
inet_config               inet_db                   inet_gethost_native
inet_parse                inet_tcp                  inet_tcp_dist
inet_udp                  init                      io
io_lib                    io_lib_format             io_lib_pretty
kernel                    kernel_config             lib
lists                     my_gen_server             net_adm
net_kernel                orddict                   ordsets
os                        otp_internal              otp_ring0
prim_eval                 prim_file                 prim_inet
prim_zip                  proc_lib                  proplists
ram_file                  rpc                       sets
shell                     shell_default             sofs
standard_error            string                    supervisor
supervisor_bridge         sys                       sys_core_dsetel
sys_core_fold             sys_pre_expand            unicode
user_drv                  user_sup                  v3_codegen
v3_core                   v3_kernel                 v3_life
zlib
(one@bryans-MacBook-Pro)33> erl
erl_bifs              erl_bits              erl_distribution
erl_epmd              erl_eval              erl_expand_records
erl_internal          erl_lint              erl_parse
erl_prim_loader       erl_scan              erlang

(one@bryans-MacBook-Pro)33> erlang:ex
exit/1           exit/2           external_size/1  external_size/2

(one@bryans-MacBook-Pro)33> erlang:exit(erlang:list_to_pid("<0.84.0>")).
** exception exit: <0.84.0>
(one@bryans-MacBook-Pro)34> erlang:exit(erlang:list_to_pid("<0.84.0>")).
** exception exit: <0.84.0>
(one@bryans-MacBook-Pro)35>
(one@bryans-MacBook-Pro)35>
(one@bryans-MacBook-Pro)35> MGS = my_gen_server:start_link().
{ok,<0.93.0>}
(one@bryans-MacBook-Pro)36> my_gen_server:
code_change/3  get_id/0       handle_call/3  handle_cast/2  handle_info/2
init/1         module_info/0  module_info/1  start_link/0   terminate/2

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
(one@bryans-MacBook-Pro)46>
```
