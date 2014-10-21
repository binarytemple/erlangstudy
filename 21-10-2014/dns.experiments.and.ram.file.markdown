


```

71: {ok,Baz} = ram_file:open("baz", [])
-> {ok,{file_descriptor,ram_file,#Port<0.611>}}
72: file:write(Baz, "aasddas")
-> {error,ebadf}
73: file:write("aasddas", Baz)
-> {error,badarg}
```

```
75: m(inet_res)
-> ok
78: inet_res:getbyname("binarytemple.co.uk", a)
-> {ok,{hostent,"binarytemple.co.uk",[],inet,4,
                [{178,79,142,71}]}}
79: inet_res:getbyname("binarytemple.co.uk", cname)
-> {error,nxdomain}

81: inet_res:getbyname("binarytemple.co.uk", mx)
-> {ok,{hostent,"binarytemple.co.uk",[],mx,5,
                [{1,"ASPMX.L.GOOGLE.COM"},
                 {5,"ALT1.ASPMX.L.GOOGLE.COM"},
                 {5,"ALT2.ASPMX.L.GOOGLE.COM"},
                 {10,"ASPMX2.GOOGLEMAIL.COM"},
                 {10,"ASPMX3.GOOGLEMAIL.COM"}]}}

```
