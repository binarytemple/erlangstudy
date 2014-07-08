# Summary or learn you some Erlang records section

## Declaring a record 

They're declared as module attributes in the following manner:

    -module(records).
    -compile(export_all).
     
    -record(robot, {name,
    type=industrial,
    hobbies,
    details=[]}).
    
    %%  Here's how to declare a record in the module records:
    first_robot() ->
        #robot{name="Mechatron",
        type=handmade,
        details=["Moved by a small man inside"]}.

## Displaying a record in the console

And running the code:
    1> c(records).
    {ok,records}
    2> records:first_robot().
     {robot,"Mechatron",handmade,undefined,
     ["Moved by a small man inside"]}

`first_robot` was displayed as a tuple.
Records are internally represented as tuples within Erlang.

In order to have records displayed along with their field names, the record definition must be loaded into the shell.

     3> rr(records).
     [robot]
     4> records:first_robot().        
     #robot{name = "Mechatron",type = handmade,
     hobbies = undefined,
     details = ["Moved by a small man inside"]}


## Declaring and instantiating records directly within the shell

    5> rd(employee, {name, role=engineer, email, login, details=[]}).
    employee

    6> Employee = #employee{name="bryan",role=cse,email="bhunt@basho.com",details=["crazy","as", "tea"]}.
    #employee{name = "bryan",role = cse,
              email = "bhunt@basho.com",login = undefined,
              details = ["crazy","as","tea"]}

    8> CarFactory = fun(CorpName) -> #robot{name=CorpName, hobbies="building cars"} end.
    #Fun<erl_eval.6.82930912>

    9> CarFactory("Ford").
    #robot{name = "Ford",type = industrial,
           hobbies = "building cars",details = []}

## Nested records

    11>  NestedBot = #robot{details=#robot{name="erNest"}}.
    #robot{name = undefined,type = industrial,
           hobbies = undefined,
           details = #robot{name = "erNest",type = industrial,
                            hobbies = undefined,details = []}}
    
    13> NestedBot#robot.details#robot.name.
    "erNest"

## Matching on records

Compile the following as `restrictions.erl` and load into the shell

    -module(restrictions)
    -export(all).
    -record(user, {id, name, group, age}).
 
    %% use pattern matching to filter
    admin_panel(#user{name=Name, group=admin}) ->
        Name ++ " is allowed!";
    admin_panel(#user{name=Name}) ->
        Name ++ " is not allowed".
     
    %% can extend user without problem
    adult_section(U = #user{}) when U#user.age >= 18 ->
        %% Show stuff that can't be written in such a text
        allowed;
    adult_section(_) ->
        %% redirect to sesame street site
        forbidden.


