# TASK

## check

- 32bit ELF
- not stripped
- No RELRO, No PIE

## rev


### main

OK

printf's argument is passed format string directory

### nao

OK

### getnline

OK


## find vuln

.fini_array section is writable. and, in nao section, there is system function.

But, no way to set argument in nao section.


Below is exploit flow:

1. Overwrite GOT of strlen to system@plt

2. Overwrite .fini_array to main func

3. Return main func and input "/bin/sh"

4. Invoke shell and get flag


calling strlen, then, stack layout is changing below

call strlen(modified)
\--------------\
|ret of strlen|
|arg of strlen|



## exploit

OK

.fini_array has a address of __do_global_dtors_aux(0x080485a0)

We want to overwrite the .fini_array to main(0x080485ed)

So, .fini_array overwrite, we have to overwrite LAST 1byte(a0->ed)


And, this input function is limit to 64 byte.

So, we cannot input greater than 64 byte.

Already out put ("Nice to meet you, ") is 18 byte.

Miscalculate warning.
