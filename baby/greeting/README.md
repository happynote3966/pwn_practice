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

1. Overwrite GOT of strlen to system

2. Overwrite .fini_array to main func

3. Return main func and input "/bin/sh"

4. Invoke shell and get flag

## exploit
