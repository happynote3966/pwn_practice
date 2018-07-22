# TASK

## check

- 64bit stripped dinamically

- No RELRO, No Canary

- Libc is not Provided. However, you can use the same libc of another probilems.

(So, you can use your libc in practice)

## rev

### main

OK

sub_c46

### sub_b80

OK

sub_b80

signal_hander

### sub_bf7

OK

sub_bf7

display_menu


### sub_b9a

OK

sub_b9a

input_byte_by_byte


## find vuln

This binary services sending payload.

You can select 3, and send len and payload to ebp.

|ebp           |<  function 3, sending payload here
|return address|

You can overwrite Return Address

## exploit

OK

There are 2 way.

First, set binsh string to rdi register,and call system

Second, find One-Gadget-RCE.
