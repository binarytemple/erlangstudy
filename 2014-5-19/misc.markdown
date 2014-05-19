    trying.erl:25: Warning: function noisy_safe__binary_to_int/1 is unused
    trying.erl:25: Warning: variable 'In' is unused
    trying.erl:27: Warning: this expression will fail with a 'badarg' exception
    {ok,trying}
    31>
    31> c(trying).
    trying.erl:25: Warning: function noisy_safe__binary_to_int/1 is unused
    {ok,trying}
    32>
    32> c(trying).
    {ok,trying}
    33> trying:noisy_safe_binary_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:36:10 ===
    couldn't parse a {'EXIT',{badarg,[{erlang,integer_to_binary,["1"],[]},
                     {trying,noisy_safe_binary_to_int,1,
                             [{file,"trying.erl"},{line,28}]},
                     {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                     {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                     {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                     {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
    34> erl
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang
    34>
    34> c(trying).
    {ok,trying}
    35> trying:noisy_safe_binary_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:37:27 ===
    couldn't parse a {'EXIT',{badarg,[{erlang,binary_to_integer,["1"],[]},
                     {trying,noisy_safe_binary_to_int,1,
                             [{file,"trying.erl"},{line,28}]},
                     {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                     {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                     {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                     {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
    36> trying:safe_binary_to_int("1).
    36>
    36> trying:safe_binary_to_int("1).
    * 3: syntax error before: 1
    36> trying:safe_binary_to_int("1).
    36> trying:safe_binary_to_int("1).
    * 2: syntax error before: 1
    36> Foo = trying:safe_binary_to_int("1).
    36> Foo.
    36>
    36> r().
    36> help().
    36>
    36>
    BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
           (v)ersion (k)ill (D)b-tables (d)istribution
    c
    .
    36>
    36>
    36> 1.
    36>
    BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
           (v)ersion (k)ill (D)b-tables (d)istribution
    basho-catah% erl
    Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]
    
    Eshell V5.10.4  (abort with ^G)
    1> pwd().
    /Users/bryan
    ok
    2> q().
    ok
    3> %                                                                                      basho-catah%
    basho-catah%
    basho-catah% cd /common/erlangstudy/2014-5-19
    basho-catah% l
    binaries-and-tries.markdown     trying.beam
    lists-matching.markdown         trying.erl
    try.erl                         trys.erl
    basho-catah% erl
    Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]
    
    Eshell V5.10.4  (abort with ^G)
    1> c(trying).
    {ok,trying}
    2> trying:
    module_info/0               module_info/1
    noisy_safe_binary_to_int/1  safe_binary_to_int/1
    
    2> trying:safe_binary_to_int("1").
    0
    3>
    =ERROR REPORT==== 19-May-2014::20:39:19 ===
    couldn't parse a
    3> er
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang                error_handler
    error_logger          error_logger_tty_h    erts_internal
    
    3> erl
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang
    3> erlang:
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
    3> erlang:binary_to_integer("1).
    3>
    3>
    3> ").
    ** exception error: bad argument
         in function  binary_to_integer/1
            called as binary_to_integer("1).\n\n\n")
    4> erlang:binary_to_integer("1").
    ** exception error: bad argument
         in function  binary_to_integer/1
            called as binary_to_integer("1")
    5> erlang:in
    insert_element/3     integer_to_binary/1  integer_to_binary/2
    integer_to_list/1    integer_to_list/2
    5> erlang:integer_to_
    integer_to_binary/1  integer_to_binary/2  integer_to_list/1
    integer_to_list/2
    5> erlang:integer_to_list(1).
    "1"
    6> erlang:li
    link/1                   list_to_atom/1           list_to_binary/1
    list_to_bitstr/1         list_to_bitstring/1      list_to_existing_atom/1
    list_to_float/1          list_to_integer/1        list_to_integer/2
    list_to_pid/1            list_to_tuple/1
    6> erlang:list_to_integer("1").
    1
    7>
    7> c(trying).
    {ok,trying}
    8> trying:safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:40:57 ===
    couldn't parse a 1
    9> c(trying).
    {ok,trying}
    10> trying:safe_list_to_int("1").
    1
    11>
    11> c(trying).
    trying.erl:36: syntax error before: 0
    trying.erl:14: function noisy_safe_list_to_int/1 undefined
    error
    12>
    12> c(trying).
    trying.erl:36: syntax error before: 0
    trying.erl:14: function noisy_safe_list_to_int/1 undefined
    error
    13>
    13> c(trying).
    trying.erl:36: Warning: a term is constructed, but never used
    {ok,trying}
    14> trying:safe_list_to_int("1").
    1
    15> trying:noisy_safe_list_to_int(1).
    
    =ERROR REPORT==== 19-May-2014::20:42:45 ===
    couldn't parse a {'EXIT',{badarg,[{erlang,list_to_integer,[1],[]},
                     {trying,noisy_safe_list_to_int,1,
                             [{file,"trying.erl"},{line,29}]},
                     {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                     {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                     {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                     {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
    16> trying:noisy_safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:42:52 ===
    couldn't parse a 1
    17> Foo = trying:noisy_safe_list_to_int(1).
    
    =ERROR REPORT==== 19-May-2014::20:43:17 ===
    couldn't parse a {'EXIT',{badarg,[{erlang,list_to_integer,[1],[]},
                     {trying,noisy_safe_list_to_int,1,
                             [{file,"trying.erl"},{line,29}]},
                     {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                     {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,364}]},
                     {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                     {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                     {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
    18> Foo.
    {'EXIT',{badarg,[{erlang,list_to_integer,[1],[]},
                     {trying,noisy_safe_list_to_int,1,
                             [{file,"trying.erl"},{line,29}]},
                     {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,573}]},
                     {erl_eval,expr,5,[{file,"erl_eval.erl"},{line,364}]},
                     {shell,exprs,7,[{file,"shell.erl"},{line,674}]},
                     {shell,eval_exprs,7,[{file,"shell.erl"},{line,629}]},
                     {shell,eval_loop,3,[{file,"shell.erl"},{line,614}]}]}}
    19>
    19> c(trying).
    trying.erl:14: function noisy_safe_list_to_int/1 undefined
    trying.erl:27: Warning: function fussy_safe_list_to_int/1 is unused
    error
    20>
    20> c(trying).
    trying.erl:36: Warning: a term is constructed, but never used
    {ok,trying}
    21> trying:noisy_safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:44:41 ===
    couldn't parse a 1
    22>
    22> trying:noisy_safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:44:58 ===
    couldn't parse a 1
    23> c(trying).
    trying.erl:36: Warning: a term is constructed, but never used
    {ok,trying}
    24> trying:noisy_safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:45:08 ===
    couldn't parse a 1
    25>
    25> c(trying).
    trying.erl:36: Warning: a term is constructed, but never used
    {ok,trying}
    26> trying:noisy_safe_list_to_int("1").
    
    =ERROR REPORT==== 19-May-2014::20:45:51 ===
    couldn't parse a 1
    27> trying:safe_list_to_int("1").
    1
    28> trying:safe_list_to_int("2").
    2
    29> trying:safe_list_to_int(1).
    
    =ERROR REPORT==== 19-May-2014::20:46:08 ===
    ERROR: [115,97,102,101,95,108,105,115,116,95,116,111,
                                     95,105,110,116,58,32,99,111,117,108,100,110,
                                     39,116,32,112,97,114,115,101,32,97,32|1] - []
    0
    30>
    30>
    30> V = [115,97,102,101,95,108,105,115,116,95,116,111,
    30>                                  95,105,110,116,58,32,99,111,117,108,100,110,
    30>                                  39,116,32,112,97,114,115,101,32,97,32],0
    30> V.
    * 6: syntax error before: V
    30> V = [115,97,102,101,95,108,105,115,116,95,116,111,
    30>                                  95,105,110,116,58,32,99,111,117,108,100,110,
    30>                                  39,116,32,112,97,114,115,101,32,97,3,0]
    30> .
    [115,97,102,101,95,108,105,115,116,95,116,111,95,105,110,
     116,58,32,99,111,117,108,100,110,39,116,32,112,97|...]
    31> V.
    [115,97,102,101,95,108,105,115,116,95,116,111,95,105,110,
     116,58,32,99,111,117,108,100,110,39,116,32,112,97|...]
    32> <<[97]>>
    32> .
    ** exception error: bad argument
    33> <<[97,0]>>
    33> .
    ** exception error: bad argument
    34> <<97,0>>
    34> .
    <<97,0>>
    35> erl
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang
    35> erlang:li
    link/1                   list_to_atom/1           list_to_binary/1
    list_to_bitstr/1         list_to_bitstring/1      list_to_existing_atom/1
    list_to_float/1          list_to_integer/1        list_to_integer/2
    list_to_pid/1            list_to_tuple/1
    35> erlang:list_to_binary(97,0).
    ** exception error: undefined function erlang:list_to_binary/2
    36> erlang:list_to_binary([97,0]).
    <<97,0>>
    37> erlang:list_to_binary([97,670]).
    ** exception error: bad argument
         in function  list_to_binary/1
            called as list_to_binary([97,670])
    38> erlang:list_to_binary([97,67,0]).
    <<97,67,0>>
    39> [97,67,0].
    [97,67,0]
    40> erlang:
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
    40> erlang:list_to_
    list_to_atom/1           list_to_binary/1         list_to_bitstr/1
    list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1
    list_to_integer/1        list_to_integer/2        list_to_pid/1
    list_to_tuple/1
    40> erlang:list_to_bitstring([97,0]).
    <<97,0>>
    41> "sda".
    "sda"
    42> erlang:term_to_binary(
    application               application_controller    application_master
    beam_a                    beam_asm                  beam_block
    beam_bool                 beam_bsm                  beam_clean
    beam_dead                 beam_dict                 beam_except
    beam_flatten              beam_jump                 beam_lib
    beam_opcodes              beam_peep                 beam_receive
    beam_split                beam_trim                 beam_type
    beam_utils                beam_validator            beam_z
    binary                    c                         calendar
    cerl                      code                      code_server
    compile                   core_lib                  dict
    edlin                     edlin_expand              epp
    erl_bifs                  erl_bits                  erl_distribution
    erl_eval                  erl_expand_records        erl_internal
    erl_lint                  erl_parse                 erl_prim_loader
    erl_scan                  erlang                    error_handler
    error_logger              error_logger_tty_h        erts_internal
    ets                       eval_bits                 file
    file_io_server            file_server               filename
    gb_sets                   gb_trees                  gen
    gen_event                 gen_server                global
    global_group              group                     heart
    hipe_unified_loader       inet                      inet_config
    inet_db                   inet_parse                inet_udp
    init                      io                        io_lib
    io_lib_format             io_lib_pretty             kernel
    kernel_config             lib                       lists
    net_kernel                orddict                   ordsets
    os                        otp_internal              otp_ring0
    prim_eval                 prim_file                 prim_inet
    prim_zip                  proc_lib                  proplists
    ram_file                  rpc                       sets
    shell                     shell_default             sofs
    standard_error            supervisor                supervisor_bridge
    sys                       sys_core_dsetel           sys_core_fold
    sys_pre_expand            trying                    unicode
    user_drv                  user_sup                  v3_codegen
    v3_core                   v3_kernel                 v3_life
    zlib
    42> erlang:term_to_binary("asd").
    <<131,107,0,3,97,115,100>>
    43> erlang:binary_to_term(<<131,107,0,3,97,115,100>>).
    "asd"
    44> error_logger:error_msg("couldn't parse a " ++ "").
    
    =ERROR REPORT==== 19-May-2014::20:50:23 ===
    couldn't parse a ok
    45> error_logger:error_msg("couldn't parse a " ++ "foo").
    
    =ERROR REPORT==== 19-May-2014::20:50:28 ===
    couldn't parse a foook
    46> L =1 .
    1
    47> erlang:term_to_binary(L).
    <<131,97,1>>
    48> error_logger:error_msg("couldn't parse a " ++ 1).
    
    =ERROR REPORT==== 19-May-2014::20:50:59 ===
    ERROR: [99,111,117,108,100,110,39,116,32,112,97,114,
                                     115,101,32,97,32|1] - []
    ok
    49> error_logger:error_msg("couldn't parse a " ++ "dsa" ).
    
    =ERROR REPORT==== 19-May-2014::20:51:03 ===
    couldn't parse a dsaok
    50>
    50> error_logger:error_msg("couldn't parse a " ++ <<131,97,1>> ).
    
    =ERROR REPORT==== 19-May-2014::20:51:34 ===
    ERROR: [99,111,117,108,100,110,39,116,32,112,97,114,
                                     115,101,32,97,32|
                                     <<131,97,1>>] - []
    ok
    51> error_logger:error_msg( erlang:binary_to_list( "couldn't parse a " ++ <<131,97,1>>) ).
    ** exception error: bad argument
         in function  binary_to_list/1
            called as binary_to_list([99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,
                                      97,32|
                                      <<131,97,1>>])
    52>
    52>  "couldn't parse a " ++ <<131,97,1>>.
    [99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,97,
     32|
     <<131,97,1>>]
    53> "couldn't parse a " ++ <<131,97,1>>.
    [99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,97,
     32|
     <<131,97,1>>]
    54> "couldn't parse a " ++ erlang:binary_to_list( <<131,97,1>>).
    [99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,97,
     32,131,97,1]
    55> erlang:binary_to_list(    "couldn't parse a " ++ erlang:binary_to_list( <<131,97,1>>)).
    ** exception error: bad argument
         in function  binary_to_list/1
            called as binary_to_list([99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,
                                      97,32,131,97,1])
    56>
    56>
    56> erlang:list_to_binary(    "couldn't parse a " ++ erlang:binary_to_list( <<131,97,1>>)).
    
    <<99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,
      97,32,131,97,1>>
    57>
    57> erlang:binary_to_list(  erlang:list_to_binary(    "couldn't parse a " ++ erlang:binary_
    to_list( <<131,97,1>>)) ) .
    [99,111,117,108,100,110,39,116,32,112,97,114,115,101,32,97,
     32,131,97,1]
    58> string:concat("1","1").
    "11"
    59>
    59> string:concat("1","1").
    "11"
    60> string:
    centre/2       centre/3       chars/2        chars/3        chr/2
    concat/2       copies/2       cspan/2        equal/2        join/2
    left/2         left/3         len/1          module_info/0  module_info/1
    rchr/2         right/2        right/3        rstr/2         span/2
    str/2          strip/1        strip/2        strip/3        sub_string/2
    sub_string/3   sub_word/2     sub_word/3     substr/2       substr/3
    to_float/1     to_integer/1   to_lower/1     to_upper/1     tokens/2
    words/1        words/2
    60> string:join("1","1").
    ** exception error: bad argument
         in operator  ++/2
            called as 49 ++ []
         in call from string:join/2 (string.erl, line 518)
    61> string:join(["1","1"]).
    ** exception error: undefined function string:join/1
    62> string:
    centre/2       centre/3       chars/2        chars/3        chr/2
    concat/2       copies/2       cspan/2        equal/2        join/2
    left/2         left/3         len/1          module_info/0  module_info/1
    rchr/2         right/2        right/3        rstr/2         span/2
    str/2          strip/1        strip/2        strip/3        sub_string/2
    sub_string/3   sub_word/2     sub_word/3     substr/2       substr/3
    to_float/1     to_integer/1   to_lower/1     to_upper/1     tokens/2
    words/1        words/2
    62> string:join(
    application               application_controller    application_master
    beam_a                    beam_asm                  beam_block
    beam_bool                 beam_bsm                  beam_clean
    beam_dead                 beam_dict                 beam_except
    beam_flatten              beam_jump                 beam_lib
    beam_opcodes              beam_peep                 beam_receive
    beam_split                beam_trim                 beam_type
    beam_utils                beam_validator            beam_z
    binary                    c                         calendar
    cerl                      code                      code_server
    compile                   core_lib                  dict
    edlin                     edlin_expand              epp
    erl_bifs                  erl_bits                  erl_distribution
    erl_eval                  erl_expand_records        erl_internal
    erl_lint                  erl_parse                 erl_prim_loader
    erl_scan                  erlang                    error_handler
    error_logger              error_logger_tty_h        erts_internal
    ets                       eval_bits                 file
    file_io_server            file_server               filename
    gb_sets                   gb_trees                  gen
    gen_event                 gen_server                global
    global_group              group                     heart
    hipe_unified_loader       inet                      inet_config
    inet_db                   inet_parse                inet_udp
    init                      io                        io_lib
    io_lib_format             io_lib_pretty             kernel
    kernel_config             lib                       lists
    net_kernel                orddict                   ordsets
    os                        otp_internal              otp_ring0
    prim_eval                 prim_file                 prim_inet
    prim_zip                  proc_lib                  proplists
    ram_file                  rpc                       sets
    shell                     shell_default             sofs
    standard_error            string                    supervisor
    supervisor_bridge         sys                       sys_core_dsetel
    sys_core_fold             sys_pre_expand            trying
    unicode                   user_drv                  user_sup
    v3_codegen                v3_core                   v3_kernel
    v3_life                   zlib
    62> string:join(["bryan","hunt"]," " ).
    "bryan hunt"
    63> string:chars($+, 20)
    63> .
    "++++++++++++++++++++"
    64> string:chars(+, 20).
    * 1: syntax error before: ','
    64> string:chars("+", 20).
    ** exception error: no function clause matching
                        string:chars("+",0,
                                     ["+","+","+","+","+","+","+","+","+","+","+","+","+",
                                      "+","+","+","+","+","+","+"]) (string.erl, line 256)
    65> string:chars($', 20).
    "''''''''''''''''''''"
    66> string:chars($a, 20).
    "aaaaaaaaaaaaaaaaaaaa"
    67> string:chars($b, 20).
    "bbbbbbbbbbbbbbbbbbbb"
    68> $asds.
    * 1: syntax error before: sds
    68> $a.
    97
    6
