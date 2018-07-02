#!/bin/sh

socat TCP-LISTEN:10000,reuseaddr,fork EXEC:./bbs &
