
Experiments with list matching, comprehensions and case statements

    Eshell V5.10.4  (abort with ^G)
    1> L = [1,2,3,4].
    [1,2,3,4]
    2> [H|T] = L.
    [1,2,3,4]
    
    6> [A,B,C,D] = L.
    [1,2,3,4]
   
    8> lists:nth(1,[1,2,3]).
    1
    9> lists:nth(2,[1,2,3]).
    2
    10> lists:nth(3,[1,2,3]).
    
    11> help().
    ** shell internal commands **
    b()        -- display all variable bindings
    e(N)       -- repeat the expression in query <N>
    f()        -- forget all variable bindings
    f(X)       -- forget the binding of variable X
    h()        -- history
    history(N) -- set how many previous commands to keep
    results(N) -- set how many previous command results to keep
    catch_exception(B) -- how exceptions are handled
    v(N)       -- use the value of query <N>
    rd(R,D)    -- define a record
    rf()       -- remove all record information
    rf(R)      -- remove record information about R
    rl()       -- display all record information
    rl(R)      -- display record information about R
    rp(Term)   -- display Term using the shell's record information
    rr(File)   -- read record information from File (wildcards allowed)
    rr(F,R)    -- read selected record information from file(s)
    rr(F,R,O)  -- read selected record information with options
    ** commands in module c **
    bt(Pid)    -- stack backtrace for a process
    c(File)    -- compile and load code in <File>
    cd(Dir)    -- change working directory
    flush()    -- flush any messages sent to the shell
    help()     -- help info
    i()        -- information about the system
    ni()       -- information about the networked system
    i(X,Y,Z)   -- information about pid <X,Y,Z>
    l(Module)  -- load or reload module
    lc([File]) -- compile a list of Erlang modules
    ls()       -- list files in the current directory
    ls(Dir)    -- list files in directory <Dir>
    m()        -- which modules are loaded
    m(Mod)     -- information about module <Mod>
    memory()   -- memory allocation information
    memory(T)  -- memory allocation information of type <T>
    nc(File)   -- compile and load code in <File> on all nodes
    nl(Module) -- load module on all nodes
    pid(X,Y,Z) -- convert X,Y,Z to a Pid
    pwd()      -- print working directory
    q()        -- quit - shorthand for init:stop()
    regs()     -- information about registered processes
    nregs()    -- information about all registered processes
    xm(M)      -- cross reference check a module
    y(File)    -- generate a Yecc parser
    ** commands in module i (interpreter interface) **
    12> ih().
    iv()         -- print the current version of the interpreter
    im()         -- pop up a monitor window
    ii(Mod)      -- interpret Mod(s) (or AbsMod(s))
    ii(Mod,Op)   -- interpret Mod(s) (or AbsMod(s))
                    use Op as options (same as for compile)
    iq(Mod)      -- do not interpret Mod(s)
    ini(Mod)     -- ii/1 at all Erlang nodes
    ini(Mod,Op)  -- ii/2 at all Erlang nodes
    inq(Mod)     -- iq at all Erlang nodes
    ib(Mod,Line) -- set a break point at Line in Mod
    ib(M,F,Arity)-- set a break point in M:F/Arity
    ibd(Mod,Line)-- disable the break point at Line in Mod
    ibe(Mod,Line)-- enable the break point at Line in Mod
    iba(M,L,Action)-- set a new action at break
    ibc(M,L,Action)-- set a new condition for break
    ir(Mod,Line) -- remove the break point at Line in Mod
    ir(M,F,Arity)-- remove the break point in M:F/Arity
    ir(Mod)      -- remove all break points in Mod
    ir()         -- remove all existing break points
    il()         -- list all interpreted modules
    ip()         -- print status of all interpreted processes
    ic()         -- remove all terminated interpreted processes
    ipb()        -- list all break points
    ipb(Mod)     -- list all break points in Mod
    ia(Pid)      -- attach to Pid
    ia(X,Y,Z)    -- attach to pid(X,Y,Z)
    ia(Pid,Fun)  -- use own Fun = {M,F} as attach application
    ia(X,Y,Z,Fun)-- use own Fun = {M,F} as attach application
    iaa([Flag])  -- set automatic attach to process
                    Flag is init,break and exit
    iaa([Fl],Fun)-- use own Fun = {M,F} as attach application
    ist(Flag)    -- set stack trace flag
                    Flag is all (true),no_tail or false
    15> m(erlang).
    Module erlang compiled: No compile time info available
    Compiler options:  []
    Object file: preloaded
    Exports:
    '!'/2                         is_port/1
    '*'/2                         is_process_alive/1

    18> erlang:get(rpctimeout).
    undefined

    21> erlang:get(rpctimeout).
    undefined
    22> erlang:put(me,bryan).
    undefined
    23> erlang:get(me).
    bryan

    25> [ X  || X <- [1,2,3] ].
    [1,2,3]
    26> [ X  +1  || X <- [1,2,3] ].
    [2,3,4]
    27> [ X  +1  || X <- [1,2,3], erlang:is_integer(X) ].
    [2,3,4]
                  
                                 
    28> 2 rem 1.
    0
    
    30> (2 rem 1) /= 0.
    false
   
    31> 2 rem 2.
    0
    32> 2 rem 3.
    2
    33> [ X  +1  || X <- [1,2,3], X rem 2 /= 0 ].
    [2,4]
    34>
    34>
    34> [1 | []].
    [1]
    35> [1 | [ 2 | []]].
    [1,2]
    36> [1 | [ 2 | []]].
    [1,2]
    37>
    37>
    37> [1 | [ 2 | []]] == [1,2].
    true
                                
                                
                                  
                                
    40> [1 | [ 2 | []]] == [1,2].
    true
                                   
                                 
    42> [X1, X2 | Tail] = [1,2,3].
    [1,2,3]
                                      
                                                                 
                                        
                                                                   
                                    
                                                                   
    46> [X1, X2 | Tail] = [1,2,3].
    [1,2,3]
                                    
                                                                   
                                            
                                 
                                             
                                 
                                      
                                 
                                    
                                 
    48> [X1, X2 | Tail ] = [1,2,3].
    [1,2,3]
    49> [_, _ | Tail ] = [1,2,3].
    [1,2,3]
                                     
                                                                 
                                       
                                                                   
                                 
                                                                   
    53> [_, _ , _  ] = [1,2,3].
    [1,2,3]
                                  
                                                                 
    55> [_, _ | Tail  ] = [1,2,3].
    [1,2,3]
    56> Tail.
    [3]
                                      
                                                                     
    58> [_, _ | Tail  ] = [1,2,3].
    [1,2,3]
                                       
                                                     
                                               
                                                     
    61> X = [1,2].  case X of [H|T] -> yes end.
    [1,2]
                                    
                                                     
    63> X = [1,2].
    [1,2]
    64>  case true of true -> yes end.
    yes
                                       
                                                     
    66>  case [1,2] of [1,2] -> yes end.
    yes
    67>  case [1,2] of [1,_] -> yes end.
    yes
    68>  case [1,2] of [_,_] -> yes end.
    yes
    69>  case [1,2] of [H,_] -> yes end.
    yes
                                        
                                                     
    71>  case [1,2] of [H,_] -> yes end.
    yes
                                          
                                                       
                                            
                                                       
                                            
                                                       
                                            
                                 
    76>  case [1,2,3] of [H,_,_] -> yes end.
    yes
    77>  case [1,2,3] of [H,I,_] -> yes end.
    yes
    78>  case [1,2,3] of [H,I,_] -> yes end.
    yes
    79>  case [1,2,3] of [H,I,J] -> yes end.
    yes
    80>  case [1,2,3] of [H|_] -> yes end.
    yes
    84> f().
    ok
    85>  case [1,2,3] of [H,T,_] -> yes end.
    yes
    86>  case [1,2,3] of [H,T,_] -> yes end.
    yes
    87> f().
    ok
    88>  case [1,2,3] of [H,T|_] -> yes end.
    yes
    89>  case [1,2,3] of [H,T|_] -> yes end.
    yes
    90>  case [1,2,3,4] of [H,T|_] -> yes end.
    yes
    91>  case [1,2,3,4] of [H,T,L|_] -> yes end.
    yes
