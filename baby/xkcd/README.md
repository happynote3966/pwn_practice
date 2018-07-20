# TASK

## check

## rev

### main

OK

flag is read in 0x6b7540
Our payload is read in 0x6b7340

Payload format is below:

SERVER, ARE YOU STILL THERE? IF SO, REPLY \"XXXXX\" (N LETTERS)"

then, XXXXX is payload what read in 0x6b7340
N is offset of '\0' set from 0x6b7340

## find vuln

Buffer Over Read.

We can send payload length unlimited.
flag memory address is 0x6b7540, and payload memory address is 0x6b7340. Distance is 0x200(512 in Decimal).

So, We can send buffer what length is 512 in Decimal.
If then, it can be read the buffer from payload memory address to flag memory address.

## exploit

OK.

Format is stricted. Attention to sending payload.
