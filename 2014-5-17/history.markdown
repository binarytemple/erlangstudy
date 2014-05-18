    basho-catah% erl
    Erlang R15B02 (erts-5.9.2) [source] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]
    
    Eshell V5.9.2  (abort with ^G)
    1> c(shop).
    {ok,shop}
    2>
    
    Eshell V5.9.2  (abort with ^G)
    1> c(foo).
    {ok,foo}
        
    1> os:getenv().
    ["_KERL_MANPATH_REMOVABLE=/erls/r15b02/man",
     "ENV_FILE_LOADED=true","SECURITYSESSIONID=186a4",
     "DISPLAY=/tmp/launch-Vzmb3D/org.macosforge.xquartz:0",
     "_KERL_ACTIVE_DIR=/erls/r15b02","VISUAL=vim",
     "LOGNAME=bryan","REBAR_PLT_DIR=/erls/r15b02",
     "ITERM_SESSION_ID=w0t0p0","COLORFGBG=7;0",
     "HOME=/Users/bryan","SHLVL=2","TMUX_PANE=%22",
     "ITERM_PROFILE=Default","PROGNAME=erl","LANG=en_GB.UTF-8",
     "EDITOR=/usr/bin/vim","PWD=/common/erlangstudy/2014-5-17",
     "PATH=/erls/r15b02/erts-5.9.2/bin:/erls/r15b02/bin:/erls/r15b02/bin:/Users/bryan/.cabal/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/bryan/.cabal/bin:/Users/bryan/bin:/Users/bryan/bin",
     "__CHECKFIX1436934=1","_KERL_SAVED_REBAR_PLT_DIR=",
     "TMUX=/private/var/folders/bk/cmtcbxsj3rdfjqhjswd_zbg80000gp/T/tmux-502/default,52015,0",
     "__CF_USER_TEXT_ENCODING=0x1F6:0:0",
     "SSH_AUTH_SOCK=/tmp/launch-vZwvau/Listeners",
     "ROOTDIR=/erls/r15b02","COMMAND_MODE=unix2003","USER=bryan",
     "ANSIBLE_HOSTS=/Users/bryan/.ansible-hosts",
     [...]|...]

Interesting, I would like to get the value of a specific variable, PWD, or current working directory.
I do not know how to match the string.
I do now know how to extract the substring after the equals sign.
Besides this, I would like to know if there is an Erlang BIF for fetching it.

   
    2> lists:filter(os:getenv(),fun(X) -> 1).
    * 2: syntax error before: ')'

Can't see what's wrong here.

    2> lists:filter( os:getenv(), true ).
    ** exception error: no function clause matching lists:filter(["_KERL_MANPATH_REMOVABLE=/erls/r15b02/man",
                                                                  "ENV_FILE_LOADED=true","SECURITYSESSIONID=186a4",
                                                                  "DISPLAY=/tmp/launch-Vzmb3D/org.macosforge.xquartz:0",
                                                                  "_KERL_ACTIVE_DIR=/erls/r15b02","VISUAL=vim",
                                                                  "LOGNAME=bryan","REBAR_PLT_DIR=/erls/r15b02",
                                                                  "ITERM_SESSION_ID=w0t0p0","COLORFGBG=7;0",
                                                                  "HOME=/Users/bryan","SHLVL=2","TMUX_PANE=%22",
                                                                  "ITERM_PROFILE=Default","PROGNAME=erl","LANG=en_GB.UTF-8",
                                                                  "EDITOR=/usr/bin/vim","PWD=/common/erlangstudy/2014-5-17",
                                                                  "PATH=/erls/r15b02/erts-5.9.2/bin:/erls/r15b02/bin:/erls/r15b02/bin:/Users/bryan/.cabal/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/bryan/.cabal/bin:/Users/bryan/bin:/Users/bryan/bin",
                                                                  "__CHECKFIX1436934=1","_KERL_SAVED_REBAR_PLT_DIR=",
                                                                  "TMUX=/private/var/folders/bk/cmtcbxsj3rdfjqhjswd_zbg80000gp/T/tmux-502/default,52015,0",
                                                                  "__CF_USER_TEXT_ENCODING=0x1F6:0:0",
                                                                  "SSH_AUTH_SOCK=/tmp/launch-vZwvau/Listeners",
                                                                  "ROOTDIR=/erls/r15b02","COMMAND_MODE=unix2003","USER=bryan",
                                                                  [...]|...],
                                                                 true) (lists.erl, line 1219)
    3> lists:filter( os:getenv(), fun(X) -> true ).
    * 1: syntax error before: ')'
    3> lists:filter( os:getenv(), X -> true ).
    * 1: syntax error before: '->'
    3> farf(X) -> X.
    * 1: syntax error before: '->'
    3> farf(X) -> x.
    * 1: syntax error before: '->'
    3> farf(X) -> 1.
    * 1: syntax error before: '->'
    3> fun farf(X) -> 1.
    * 1: syntax error before: '('
    3> def farf(X) -> 1.
    * 1: syntax error before: farf
    3> c(farf).
    farf.erl:4: Warning: variable 'H' is unused
    farf.erl:4: Warning: variable 'T' is unused
    {ok,farf}
    4> farf:farf([1,2]) .
    farf
    5> c(farf).
    farf.erl:4: Warning: variable 'H' is unused
    farf.erl:4: Warning: variable 'T' is unused
    {ok,farf}
    6> farf:farf([]).
    barf
    7>
    7> c(farf).
    farf.erl:5: head mismatch
    error
    8> c(farf).
    farf.erl:5: head mismatch
    error
    9>
    9> c(farf).
    farf.erl:6: syntax error before: '.'
    error
    10>
    10> c(farf).
    farf.erl:7: head mismatch
    error
    11>
    11> c(farf).
    farf.erl:4: Warning: variable 'H' is unused
    farf.erl:4: Warning: variable 'T' is unused
    farf.erl:5: Warning: this clause cannot match because a previous clause at line 4 always matches
    farf.erl:5: Warning: variable 'X' is unused
    farf.erl:5: Warning: variable 'Y' is unused
    farf.erl:5: Warning: variable 'Z' is unused
    {ok,farf}
    12> farf:farf([]).
    none
    13> farf:farf([1,2]).
    two
    14> farf:farf([1,2,3]).
    two
    15> {A,B,C} = [1|2,3].
    * 1: syntax error before: ','
    15> {A,B,C} = [1|2|3].
    * 1: syntax error before: '|'
    15> X = [1|2|3].
    * 1: syntax error before: '|'
    15> [X|Y|Z] = [1,2,3].
    * 1: syntax error before: '|'
    15>
    15> X = [1|2|3].
    * 2: syntax error before: '|'
    15> X = [1,2,3].
    [1,2,3]
    16> [A,B,C] = X.
    [1,2,3]
    17> [A|B|C] = X.
    * 1: syntax error before: '|'
    17> [A,B,C] = X.
    [1,2,3]
    18> A.
    1
    19> B.
    2
    20> C.
    3
    21> [A,B,C] = X.
    [1,2,3]
    22> [E|F] = X.
    [1,2,3]
    23> E.
    1
    24> F.
    [2,3]
    25> [E|F|G] = X.
    * 1: syntax error before: '|'
    25> [E|[F|G]] = X.
    ** exception error: no match of right hand side value [1,2,3]
    26> [E|F] = X.
    [1,2,3]
    27> [G|H] = F.
    [2,3]
    28> F.
    [2,3]
    29> G.
    2
    30> [E|[F|G]] = [1,2,3].
    ** exception error: no match of right hand side value [1,2,3]
    31> os:getenv().
    ["_KERL_MANPATH_REMOVABLE=/erls/r15b02/man",
     "ENV_FILE_LOADED=true","SECURITYSESSIONID=186a4",
     "DISPLAY=/tmp/launch-Vzmb3D/org.macosforge.xquartz:0",
     "_KERL_ACTIVE_DIR=/erls/r15b02","VISUAL=vim",
     "LOGNAME=bryan","REBAR_PLT_DIR=/erls/r15b02",
     "ITERM_SESSION_ID=w0t0p0","COLORFGBG=7;0",
     "HOME=/Users/bryan","SHLVL=2","TMUX_PANE=%22",
     "ITERM_PROFILE=Default","PROGNAME=erl","LANG=en_GB.UTF-8",
     "EDITOR=/usr/bin/vim","PWD=/common/erlangstudy/2014-5-17",
     "PATH=/erls/r15b02/erts-5.9.2/bin:/erls/r15b02/bin:/erls/r15b02/bin:/Users/bryan/.cabal/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/bryan/.cabal/bin:/Users/bryan/bin:/Users/bryan/bin",
     "__CHECKFIX1436934=1","_KERL_SAVED_REBAR_PLT_DIR=",
     "TMUX=/private/var/folders/bk/cmtcbxsj3rdfjqhjswd_zbg80000gp/T/tmux-502/default,52015,0",
     "__CF_USER_TEXT_ENCODING=0x1F6:0:0",
     "SSH_AUTH_SOCK=/tmp/launch-vZwvau/Listeners",
     "ROOTDIR=/erls/r15b02","COMMAND_MODE=unix2003","USER=bryan",
     "ANSIBLE_HOSTS=/Users/bryan/.ansible-hosts",
     [...]|...]
    32> [E|[F|G]] = [1,2,3].
    ** exception error: no match of right hand side value [1,2,3]
    33> [E|[F|G]] = X.
    ** exception error: no match of right hand side value [1,2,3]
    34> X = [1,2,3].
    [1,2,3]
    35> [E|[F|G]] = X.
    ** exception error: no match of right hand side value [1,2,3]
    36> [E|F] = X.
    [1,2,3]
    37> [E|F|G] = X.
    * 1: syntax error before: '|'
    37> [E|F||G] = X.
    * 1: syntax error before: '||'
    37> [E|F|G] = X.
    * 1: syntax error before: '|'
    37> [E,F,G] = X.
    ** exception error: no match of right hand side value [1,2,3]
    38> [E|F] = X.
    [1,2,3]
    39> [E|[F,G]] = X.
    ** exception error: no match of right hand side value [1,2,3]
    40> [E,[F,G]] = X.
    ** exception error: no match of right hand side value [1,2,3]
    41> [E,F,G] = X.
    ** exception error: no match of right hand side value [1,2,3]
    42> [E|F] = X.
    [1,2,3]
    43> F.
    [2,3]
    44> [E|F|G] = X.li
    BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
           (v)ersion (k)ill (D)b-tables (d)istribution
    c
    .
    * 1: syntax error before: '|'
    44> lists:
    all/2          any/2          append/1       append/2       concat/1
    delete/2       dropwhile/2    duplicate/2    filter/2       flatlength/1
    flatmap/2      flatten/1      flatten/2      foldl/3        foldr/3
    foreach/2      keydelete/3    keyfind/3      keymap/3       keymember/3
    keymerge/3     keyreplace/4   keysearch/3    keysort/2      keystore/4
    keytake/3      last/1         map/2          mapfoldl/3     mapfoldr/3
    max/1          member/2       merge/1        merge/2        merge/3
    merge3/3       min/1          module_info/0  module_info/1  nth/2
    nthtail/2      partition/2    prefix/2       reverse/1      reverse/2
    rkeymerge/3    rmerge/2       rmerge/3       rmerge3/3      rukeymerge/3
    rumerge/2      rumerge/3      rumerge3/3     seq/2          seq/3
    sort/1         sort/2         split/2        splitwith/2    sublist/2
    sublist/3      subtract/2     suffix/2       sum/1          takewhile/2
    ukeymerge/3    ukeysort/2     umerge/1       umerge/2       umerge/3
    umerge3/3      unzip/1        unzip3/1       usort/1        usort/2
    zf/2           zip/2          zip3/3         zipwith/3      zipwith3/4
    
    44> erl
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang
    44> erlang:li
    link/1                   list_to_atom/1           list_to_binary/1
    list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1
    list_to_integer/1        list_to_integer/2        list_to_pid/1
    list_to_tuple/1
    44> erlang:li
    link/1                   list_to_atom/1           list_to_binary/1
    list_to_bitstring/1      list_to_existing_atom/1  list_to_float/1
    list_to_integer/1        list_to_integer/2        list_to_pid/1
    list_to_tuple/1
    44> erlang:list_to_tuple(X).
    {1,2,3}
    45> {A,B,C} = erlang:list_to_tuple(X).
    {1,2,3}
    46> {A,B,_} = erlang:list_to_tuple(X).
    {1,2,3}
    47> {A,_,_} = erlang:list_to_tuple(X).
    {1,2,3}
    48> {_,_,_} = erlang:list_to_tuple(X).
    {1,2,3}
    49> LTX = erlang:list_to_tuple(X).
    {1,2,3}
    50> LTX.
    {1,2,3}
    51> R = LTX match
    51> case {_,_,_} -> true
    51> .
    * 1: syntax error before: match
    51> R = case LTX of
    51> {_,_,_} -> true; end.
    * 2: syntax error before: 'end'
    51> {_,_,_} -> true end.
    * 1: syntax error before: '->'
    51> R = case LTX of
    51> {_,_,_} -> true end.
    true
    52> R = case LTX of _ -> true end.
    true
    53> R = case LTX of {_,_,_} -> true end.
    true
    54> LTX.
    {1,2,3}
    55> R = case erl LTX of {_,_,_} -> true end.
    erl_bifs              erl_bits              erl_distribution
    erl_eval              erl_expand_records    erl_internal
    erl_lint              erl_parse             erl_prim_loader
    erl_scan              erlang
    
    55> R = case erlang:tuple_to_list( LTX )  of [_,_,_] -> true end.
    true

    56> R = case erlang:tuple_to_list( LTX )  of [_,_,2] -> true end.
    ** exception error: no case clause matching [1,2,3]

    57> LTX.
    {1,2,3}

    58> R = case erlang:tuple_to_list( LTX )  of [_,_,3] -> true end.
    true

Tried to evaluate an erlang expression. It failed.

    68> erl_eval:expr([],"X= 1").
    ** exception error: no function clause matching erl_lint:'-exprs_opt/3-fun-0-'(88,
                                                                                   {{lint,start,[],[],[],[],
                                                                                     {2,{{module_info,1},{{module_info,0},nil,nil},nil}},
                                                                                     [],
                                                                                     {dict,1,16,16,8,80,48,
                                                                                      {[],[],[],[],[],[],[],[],[],...},
                                                                                      {{[],[],[],[],[],[],[],...}}},
                                                                                     [bitlevel_binaries,binary_comprehension],
                                                                                     {dict,0,16,16,8,80,48,
                                                                                      {[],[],[],[],[],[],[],...},
                                                                                      {{[],[],[],[],[],...}}},
                                                                                     {0,nil},
                                                                                     {0,nil},
                                                                                     {3,
                                                                                      {{module_info,1},
                                                                                       {{module_info,0},nil,nil},
                                                                                       {{record_info,2},nil,nil}}},
                                                                                     [],0,[],[],[],1,
                                                                                     [bif_clash,deprecated_function,obsolete_guard,shadow_vars,
                                                                                      unused_function|...],
                                                                                     [],[],[],"nofile",false,...},
                                                                                    []}) (erl_lint.erl, line 407)
         in function  lists:foldl/3 (lists.erl, line 1197)
         in call from erl_lint:exprs_opt/3 (erl_lint.erl, line 407)
