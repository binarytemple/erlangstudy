```



[~%]activate_R16B03
[~%]erl
Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:8:8] [async-threads:10] [kernel-poll:false]

Eshell V5.10.4  (abort with ^G)
1> {ok, Socket} = gen_udp:open().
** exception error: undefined function gen_udp:open/0
2> {ok, Socket} = gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

2> {ok, Socket} = gen_udp:open(10000).
{ok,#Port<0.510>}
3> gen_udp:send(Socket, {127,0,0,1}, 9999, "hey there!").
ok
4> gen_udp:send(Socket, {127,0,0,1}, 9999, "hey there!").
ok
5> gen_udp:send(Socket, {127,0,0,1}, 9999, "hey there!").
ok
6> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>).
* 1: syntax error before: ')'
6> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
ok
7> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
ok
8> gen_udp:close(Socket).
ok
9> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
{error,closed}
10> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

10>
10> {ok, Socket} = gen_udp:open(0).
** exception error: no match of right hand side value {ok,#Port<0.531>}
11> f(Socket).
ok
12> {ok, Socket} = gen_udp:open(0).
{ok,#Port<0.532>}
13> net_kernel:
allow/1                    aux_ticker/4
code_change/3              connect/1
connect_node/1             connecttime/0
dflag_unicode_io/1         disconnect/1
do_spawn/3                 epmd_module/0
get_net_ticktime/0         handle_call/3
handle_cast/2              handle_info/2
hidden_connect/1           hidden_connect_node/1
i/0                        i/1
init/1                     kernel_apply/3
longnames/0                module_info/0
module_info/1              monitor_nodes/1
monitor_nodes/2            node_info/1
node_info/2                nodes_info/0
passive_cnct/1             passive_connect_monitor/2
protocol_childspecs/0      publish_on_node/1
set_net_ticktime/1         set_net_ticktime/2
spawn_func/6               start/1
start_link/1               stop/0
terminate/2                ticker/2
ticker_loop/2              update_publish_nodes/1
verbose/1
13>
13> Socket.
#Port<0.532>
14>
14> sys:
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
14> sys:get_state(Socket).
** exception exit: {{function_clause,
                        [{gen,call,
                             [#Port<0.532>,system,get_state,5000],
                             [{file,"gen.erl"},{line,147}]},
                         {sys,send_system_msg,2,[{file,"sys.erl"},{line,268}]},
                         {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                         {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                         {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                         {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]},
                    {sys,get_state,[#Port<0.532>]}}
     in function  sys:send_system_msg/2 (sys.erl, line 270)
15> Socket.
#Port<0.532>
16> is_port(Socket).
true
17> port_info(Socket).
** exception error: undefined shell command port_info/1
18> erlang:port
port_call/2      port_call/3      port_close/1     port_command/2
port_command/3   port_connect/2   port_control/3   port_get_data/1
port_info/1      port_info/2      port_set_data/2  port_to_list/1
ports/0
18> erlang:port
port_call/2      port_call/3      port_close/1     port_command/2
port_command/3   port_connect/2   port_control/3   port_get_data/1
port_info/1      port_info/2      port_set_data/2  port_to_list/1
ports/0
18> erlang:port_info(Socket).
undefined
19> erlang:port_
port_call/2      port_call/3      port_close/1     port_command/2
port_command/3   port_connect/2   port_control/3   port_get_data/1
port_info/1      port_info/2      port_set_data/2  port_to_list/1

19> erlang:port_to_list(Socket).
"#Port<0.532>"
20> erlang:port_get_data(Socket).
** exception error: bad argument
     in function  erlang:port_get_data/1
        called as erlang:port_get_data(#Port<0.532>)
21> inet
inet           inet_config    inet_db        inet_parse     inet_udp

21> inet:
close/1                     connect_options/2
fdopen/6                    format_error/1
get_rc/0                    getaddr/2
getaddr/3                   getaddr_tm/3
getaddrs/2                  getaddrs/3
getaddrs_tm/3               getfd/1
gethostbyaddr/1             gethostbyaddr/2
gethostbyaddr_tm/2          gethostbyname/1
gethostbyname/2             gethostbyname/3
gethostbyname_self/2        gethostbyname_string/2
gethostbyname_tm/3          gethostname/0
gethostname/1               getif/0
getif/1                     getifaddrs/0
getifaddrs/1                getiflist/0
getiflist/1                 getll/1
getopts/2                   getservbyname/2
getservbyport/2             getstat/1
getstat/2                   i/0
i/1                         i/2
ifget/2                     ifget/3
ifset/2                     ifset/3
ip/1                        listen_options/2
lock_socket/2               module_info/0
module_info/1               ntoa/1
open/8                      options/0
parse_address/1             parse_ipv4_address/1
parse_ipv4strict_address/1  parse_ipv6_address/1
parse_ipv6strict_address/1  parse_strict_address/1
peername/1                  peernames/1
peernames/2                 popf/1
port/1                      pushf/3
sctp_options/2              send/2
setopts/2                   setpeername/2
setsockname/2               sockname/1
socknames/1                 socknames/2
start_timer/1               stats/0
stop_timer/1                tcp_close/1
tcp_controlling_process/2   timeout/1
timeout/2                   translate_ip/2
udp_close/1                 udp_controlling_process/2
udp_options/2
21> inet:st
start_timer/1  stats/0        stop_timer/1
21> inet:stats().
[recv_oct,recv_cnt,recv_max,recv_avg,recv_dvi,send_oct,
 send_cnt,send_max,send_avg,send_pend]
22>
22> erlang:is_
is_alive/0          is_atom/1           is_binary/1
is_bitstring/1      is_boolean/1        is_builtin/3
is_float/1          is_function/1       is_function/2
is_integer/1        is_list/1           is_number/1
is_pid/1            is_port/1           is_process_alive/1
is_record/2         is_record/3         is_reference/1
is_tuple/1
22> erlang:is_process_alive(Socket).
** exception error: bad argument
     in function  is_process_alive/1
        called as is_process_alive(#Port<0.532>)
23> erlang:un
universaltime/0               universaltime_to_localtime/1
universaltime_to_posixtime/1  unlink/1
unregister/1
23> erlang:un
universaltime/0               universaltime_to_localtime/1
universaltime_to_posixtime/1  unlink/1
unregister/1
23> sys:
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
23> gen
gen           gen_event     gen_server    gen_udp
23> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

23>
23>
23> erlang:is_process_alive(Socket).
** exception error: bad argument
     in function  is_process_alive/1
        called as is_process_alive(#Port<0.532>)
24> inet
inet           inet_config    inet_db        inet_parse     inet_udp

24> inet
inet           inet_config    inet_db        inet_parse     inet_udp

24> gen
gen           gen_event     gen_server    gen_udp
24> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

24> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

24> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
{error,closed}
25>
25> {ok, Socket} = gen_udp:open(0).
** exception error: no match of right hand side value {ok,#Port<0.538>}
26> f().
ok
27> {ok, Socket} = gen_udp:open(0).
{ok,#Port<0.539>}
28> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
ok
29> X  = gen_udp:send(Socket, {127,0,0,1}, 10).
** exception error: undefined function gen_udp:send/3
30> X  = gen_udp:recv(Socket, {127,0,0,1}, 10).
{error,closed}
31> gen_udp:send(Socket, {127,0,0,1}, 9999, [$f,[$o,$o],<<"bar">>]).
{error,closed}
32> f().
ok
33> {ok, Socket} = gen_udp:open(0).
{ok,#Port<0.540>}
34> gen
gen           gen_event     gen_server    gen_udp
34> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

34> gen_udp:close(Socket).
ok
35> f().
ok
36> {ok, Socket} = gen_udp:open(10000).
{ok,#Port<0.541>}
37> Socket
37> .
#Port<0.541>
38> sys:
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
38> sys:
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
38> erlang:process
process_display/2  process_flag/2     process_flag/3     process_info/1
process_info/2     processes/0
38> erlang:process
process_display/2  process_flag/2     process_flag/3     process_info/1
process_info/2     processes/0
38> erlang:process().
** exception error: undefined function erlang:process/0
39> erlang:processes().
[<0.0.0>,<0.3.0>,<0.6.0>,<0.7.0>,<0.9.0>,<0.10.0>,<0.11.0>,
 <0.12.0>,<0.13.0>,<0.14.0>,<0.15.0>,<0.16.0>,<0.17.0>,
 <0.18.0>,<0.19.0>,<0.20.0>,<0.21.0>,<0.22.0>,<0.23.0>,
 <0.24.0>,<0.25.0>,<0.26.0>,<0.27.0>,<0.28.0>,<0.81.0>]
40> process_info(Socket).
** exception error: bad argument
     in function  process_info/1
        called as process_info(#Port<0.541>)
41> port_info(Socket).
** exception error: undefined shell command port_info/1
42> port_to_list(Socket).
** exception error: undefined shell command port_to_list/1
43> erlangl:port_to_list(Socket).
** exception error: undefined function erlangl:port_to_list/1
44> erlang:port_to_list(Socket).
"#Port<0.541>"
45> erlang:ports()
45> .
[#Port<0.0>,#Port<0.47>,#Port<0.304>,#Port<0.313>]
46> port_info(Socket,undefined).
** exception error: undefined shell command port_info/2
47> port_info(Socket,registered_name).
** exception error: undefined shell command port_info/2
48> erlang:port_info(Socket,registered_name).
undefined
49> erlang:port_info(Socket,undefined).
undefined
50> erlang:port_info(Socket,output).
undefined
51> erlang:port_info(Socket,memory).
undefined
52> inet
inet           inet_config    inet_db        inet_parse     inet_udp

52> inet
inet           inet_config    inet_db        inet_parse     inet_udp

52> inet:
close/1                     connect_options/2
fdopen/6                    format_error/1
get_rc/0                    getaddr/2
getaddr/3                   getaddr_tm/3
getaddrs/2                  getaddrs/3
getaddrs_tm/3               getfd/1
gethostbyaddr/1             gethostbyaddr/2
gethostbyaddr_tm/2          gethostbyname/1
gethostbyname/2             gethostbyname/3
gethostbyname_self/2        gethostbyname_string/2
gethostbyname_tm/3          gethostname/0
gethostname/1               getif/0
getif/1                     getifaddrs/0
getifaddrs/1                getiflist/0
getiflist/1                 getll/1
getopts/2                   getservbyname/2
getservbyport/2             getstat/1
getstat/2                   i/0
i/1                         i/2
ifget/2                     ifget/3
ifset/2                     ifset/3
ip/1                        listen_options/2
lock_socket/2               module_info/0
module_info/1               ntoa/1
open/8                      options/0
parse_address/1             parse_ipv4_address/1
parse_ipv4strict_address/1  parse_ipv6_address/1
parse_ipv6strict_address/1  parse_strict_address/1
peername/1                  peernames/1
peernames/2                 popf/1
port/1                      pushf/3
sctp_options/2              send/2
setopts/2                   setpeername/2
setsockname/2               sockname/1
socknames/1                 socknames/2
start_timer/1               stats/0
stop_timer/1                tcp_close/1
tcp_controlling_process/2   timeout/1
timeout/2                   translate_ip/2
udp_close/1                 udp_controlling_process/2
udp_options/2
52> inet:
close/1                     connect_options/2
fdopen/6                    format_error/1
get_rc/0                    getaddr/2
getaddr/3                   getaddr_tm/3
getaddrs/2                  getaddrs/3
getaddrs_tm/3               getfd/1
gethostbyaddr/1             gethostbyaddr/2
gethostbyaddr_tm/2          gethostbyname/1
gethostbyname/2             gethostbyname/3
gethostbyname_self/2        gethostbyname_string/2
gethostbyname_tm/3          gethostname/0
gethostname/1               getif/0
getif/1                     getifaddrs/0
getifaddrs/1                getiflist/0
getiflist/1                 getll/1
getopts/2                   getservbyname/2
getservbyport/2             getstat/1
getstat/2                   i/0
i/1                         i/2
ifget/2                     ifget/3
ifset/2                     ifset/3
ip/1                        listen_options/2
lock_socket/2               module_info/0
module_info/1               ntoa/1
open/8                      options/0
parse_address/1             parse_ipv4_address/1
parse_ipv4strict_address/1  parse_ipv6_address/1
parse_ipv6strict_address/1  parse_strict_address/1
peername/1                  peernames/1
peernames/2                 popf/1
port/1                      pushf/3
sctp_options/2              send/2
setopts/2                   setpeername/2
setsockname/2               sockname/1
socknames/1                 socknames/2
start_timer/1               stats/0
stop_timer/1                tcp_close/1
tcp_controlling_process/2   timeout/1
timeout/2                   translate_ip/2
udp_close/1                 udp_controlling_process/2
udp_options/2
52> inet:i(Socket).
** exception error: no function clause matching
                    inet:i(#Port<0.541>,
                           [port,module,recv,sent,owner,local_address,
                            foreign_address,state,type]) (inet.erl, line 1311)
53> inet:
close/1                     connect_options/2
fdopen/6                    format_error/1
get_rc/0                    getaddr/2
getaddr/3                   getaddr_tm/3
getaddrs/2                  getaddrs/3
getaddrs_tm/3               getfd/1
gethostbyaddr/1             gethostbyaddr/2
gethostbyaddr_tm/2          gethostbyname/1
gethostbyname/2             gethostbyname/3
gethostbyname_self/2        gethostbyname_string/2
gethostbyname_tm/3          gethostname/0
gethostname/1               getif/0
getif/1                     getifaddrs/0
getifaddrs/1                getiflist/0
getiflist/1                 getll/1
getopts/2                   getservbyname/2
getservbyport/2             getstat/1
getstat/2                   i/0
i/1                         i/2
ifget/2                     ifget/3
ifset/2                     ifset/3
ip/1                        listen_options/2
lock_socket/2               module_info/0
module_info/1               ntoa/1
open/8                      options/0
parse_address/1             parse_ipv4_address/1
parse_ipv4strict_address/1  parse_ipv6_address/1
parse_ipv6strict_address/1  parse_strict_address/1
peername/1                  peernames/1
peernames/2                 popf/1
port/1                      pushf/3
sctp_options/2              send/2
setopts/2                   setpeername/2
setsockname/2               sockname/1
socknames/1                 socknames/2
start_timer/1               stats/0
stop_timer/1                tcp_close/1
tcp_controlling_process/2   timeout/1
timeout/2                   translate_ip/2
udp_close/1                 udp_controlling_process/2
udp_options/2
53>
53>
53>
53>
53> inet:sockname(Socket).
{error,einval}
54> inet:get
get_rc/0                getaddr/2               getaddr/3
getaddr_tm/3            getaddrs/2              getaddrs/3
getaddrs_tm/3           getfd/1                 gethostbyaddr/1
gethostbyaddr/2         gethostbyaddr_tm/2      gethostbyname/1
gethostbyname/2         gethostbyname/3         gethostbyname_self/2
gethostbyname_string/2  gethostbyname_tm/3      gethostname/0
gethostname/1           getif/0                 getif/1
getifaddrs/0            getifaddrs/1            getiflist/0
getiflist/1             getll/1                 getopts/2
getservbyname/2         getservbyport/2         getstat/1
getstat/2
54> inet:getopts(Socket).
** exception error: undefined function inet:getopts/1
55> inet:getopts(all).
** exception error: undefined function inet:getopts/1
56> inet:getopts(undefined).
** exception error: undefined function inet:getopts/1
57> inet:getopts(Socket,active).
** exception error: no function clause matching
                    prim_inet:getopts(#Port<0.541>,active)
     in function  inet:getopts/2 (inet.erl, line 269)
58> inet:getstat(Socket).
{error,einval}
59> erlang:po
port_call/2                   port_call/3
port_close/1                  port_command/2
port_command/3                port_connect/2
port_control/3                port_get_data/1
port_info/1                   port_info/2
port_set_data/2               port_to_list/1
ports/0                       posixtime_to_universaltime/1

59> erlang:po
port_call/2                   port_call/3
port_close/1                  port_command/2
port_command/3                port_connect/2
port_control/3                port_get_data/1
port_info/1                   port_info/2
port_set_data/2               port_to_list/1
ports/0                       posixtime_to_universaltime/1

59> erlang:port_info(Socket).
undefined
60> erlang:port_get_data((Socket).
* 1: syntax error before: '.'
60> erlang:port_get_data(Socket).
** exception error: bad argument
     in function  erlang:port_get_data/1
        called as erlang:port_get_data(#Port<0.541>)
61> gen
gen           gen_event     gen_server    gen_udp
61> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

61> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

61> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

61> gen_udp:
close/1                connect/3              controlling_process/2
fdopen/2               module_info/0          module_info/1
open/1                 open/2                 recv/2
recv/3                 send/2                 send/4

61> gen_udp:close(Socket).
ok
62> gen_udp:close(Socket).
ok
63> gen_udp:close(Socket).
ok
64> erlang:port
port_call/2      port_call/3      port_close/1     port_command/2
port_command/3   port_connect/2   port_control/3   port_get_data/1
port_info/1      port_info/2      port_set_data/2  port_to_list/1
ports/0
64> erlang:ports().
[#Port<0.0>,#Port<0.47>,#Port<0.304>,#Port<0.313>]
65> erlang:sp
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5      split_binary/2

65> erlang:sp
spawn/1          spawn/2          spawn/3          spawn/4
spawn_link/1     spawn_link/2     spawn_link/3     spawn_link/4
spawn_monitor/1  spawn_monitor/3  spawn_opt/1      spawn_opt/2
spawn_opt/3      spawn_opt/4      spawn_opt/5      split_binary/2

```
