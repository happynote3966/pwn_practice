# memo

## Function address is not matching ?

There are weird function in main (and more...)

```
f28: push 0x10f4
f2d: call f2e <main+0x1a>
f32: add esp,0x10
```

This is not bug. If you run this binary under gdb or peda, this address is changed.
The address is correct func address.


This modification created by Loader. If you dive deep, run under gdb and awatch of main function, and execute `vmmmap`. You can see the binary permission is rwx.


Disassemble this binary quickly, if you want, you must see the .rel.dyn section with readelf command. There table of address translation.

And, address (e.g. strings pointer) of argument can be examine by strings command.
