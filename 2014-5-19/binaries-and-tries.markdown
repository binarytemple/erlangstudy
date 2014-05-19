## Evaluating binary's

    3> erlang:integer_to_binary(1).
    <<"1">>
    
    4> erlang:binary_to_integer( erlang:integer_to_binary(1) ).
    1
    5> erlang:binary_to_integer( erlang:integer_to_binary(1) )   + 1.
    2
    
    6>
    6> "1" + 1.
    ** exception error: an error occurred when evaluating an arithmetic expression
            called as "1" + 1

## Trying 

### One liner

    catch throw(foo).

#### Try/Catch syntax

    try Exprs
    catch
        [Class1:]ExceptionPattern1 [when ExceptionGuardSeq1] ->
            ExceptionBody1;
        [ClassN:]ExceptionPatternN [when ExceptionGuardSeqN] ->
            ExceptionBodyN
    end

Trying, and logging an error 
     24> try erlang:integer_to_binary(a) catch _:_  -> 0  after error_logger:error_msg("couldn't parse a ") end.
     
     =ERROR REPORT==== 19-May-2014::20:25:24 ===
     couldn't parse a 0
     2


####  Misc



    3> erlang:integer_to_binary(1).
    <<"1">>
    
    4> erlang:binary_to_integer( erlang:integer_to_binary(1) ).
    1
    5> erlang:binary_to_integer( erlang:integer_to_binary(1) )   + 1.
    2

    6> "1" + 1.
    ** exception error: an error occurred when evaluating an arithmetic expression
            called as "1" + 1

## Trying 

### One liner

    catch throw(foo).

#### Try/Catch syntax

    try Exprs
    catch
        [ClassN:]ExceptionPatternN [when ExceptionGuardSeqN] ->
            ExceptionBodyN
    end


