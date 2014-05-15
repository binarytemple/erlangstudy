Shell 1
-------
```
% erl -id bar -name bar -setcookie bryan
Erlang R15B02 (erts-5.9.2) [source] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]
Eshell V5.9.2  (abort with ^G)
(bar@basho-catah.local)1> node().
'bar@basho-catah.local'
(bar@basho-catah.local)3> net_kernel:connect('foo@basho-catah.local').
true
(bar@basho-catah.local)4> nodes().
['foo@basho-catah.local']
(bar@basho-catah.local)8> node().
'bar@basho-catah.local'
(bar@basho-catah.local)9> register(shell, self()).
true
(bar@basho-catah.local)12> {shell, 'foo@basho-catah.local'} ! {hello, from, self()}.
{hello,from,<0.56.0>}
(bar@basho-catah.local)13> flush().
Shell got <<"hey there!">>
ok
```

Shell 2
-------
```
catah% erl -id foo -name foo -setcookie bryan
Erlang R15B02 (erts-5.9.2) [source] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]
(foo@basho-catah.local)1> nodes().
[]
(foo@basho-catah.local)8> erlang:node().
'foo@basho-catah.local'
(foo@basho-catah.local)10> net_kernel:connect('bar@basho-catah.local').
true
(foo@basho-catah.local)11> nodes().
['bar@basho-catah.local']
(foo@basho-catah.local)12> node().
'foo@basho-catah.local'
(foo@basho-catah.local)13> register(shell, self()).
true
(foo@basho-catah.local)14> receive {hello, from, OtherShell} -> OtherShell ! <<"hey there!">> end.
<<"hey there!">>
```
