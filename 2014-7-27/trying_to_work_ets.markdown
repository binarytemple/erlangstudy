```
7> T = ets:table(foo).
{qlc_handle,{qlc_table,#Fun<ets.7.7613584>,true,
                       #Fun<ets.8.7613584>,#Fun<ets.9.7613584>,
                       #Fun<ets.10.7613584>,#Fun<ets.12.7613584>,
                       #Fun<ets.11.7613584>,undefined,'=:=',undefined,
                       no_match_spec}}

9> ets:insert(T,{foo}).
** exception error: bad argument
     in function  ets:insert/2
        called as ets:insert({qlc_handle,{qlc_table,#Fun<ets.7.7613584>,true,
                                                    #Fun<ets.8.7613584>,#Fun<ets.9.7613584>,
                                                    #Fun<ets.10.7613584>,#Fun<ets.12.7613584>,
                                                    #Fun<ets.11.7613584>,undefined,'=:=',undefined,
                                                    no_match_spec}},
                             {foo})

11> ets:info(T).
** exception error: bad argument
     in function  ets:info/1
        called as ets:info({qlc_handle,{qlc_table,#Fun<ets.7.7613584>,true,
                                                  #Fun<ets.8.7613584>,#Fun<ets.9.7613584>,
                                                  #Fun<ets.10.7613584>,#Fun<ets.12.7613584>,
                                                  #Fun<ets.11.7613584>,undefined,'=:=',undefined,
                                                  no_match_spec}})
12> ets:info(foo).
undefined

13> ets:init_table(T,foo).
** exception error: bad argument
     in function  ets:delete_all_objects/1
        called as ets:delete_all_objects({qlc_handle,{qlc_table,#Fun<ets.7.7613584>,true,
                                                                #Fun<ets.8.7613584>,#Fun<ets.9.7613584>,
                                                                #Fun<ets.10.7613584>,#Fun<ets.12.7613584>,
                                                                #Fun<ets.11.7613584>,undefined,'=:=',undefined,
                                                                no_match_spec}})
     in call from ets:init_table/2 (ets.erl, line 286)
```
