%define START _main
%define OPEN 0x2000005
%define CHMOD 0777q
%macro FT 0
START:
enter 32, 0;calling convention
mov rax, OPEN
mov rdi, src
mov rsi, 0x0202
syscall
cmp eax, 0
jl _end
mov [rsp], rax
mov rax, 0x200000f
mov rdi, src
mov rsi, CHMOD
syscall
mov rdi, [rsp]
mov rsi, s
mov rdx, 10
mov rcx, 34
mov r8, s
call _dprintf
mov rax, 0x2000006
mov rdi, r15
syscall
leave
ret
_end:
leave
ret
%endmacro
section .text
global _main
extern _dprintf
FT
section .data
src db "Grace_kid.s", 0
s db "%%define START _main%1$c%%define OPEN 0x2000005%1$c%%define CHMOD 0777q%1$c%%macro FT 0%1$cSTART:%1$center 32, 0;calling convention%1$cmov rax, OPEN%1$cmov rdi, src%1$cmov rsi, 0x0202%1$csyscall%1$ccmp eax, 0%1$cjl _end%1$cmov [rsp], rax%1$cmov rax, 0x200000f%1$cmov rdi, src%1$cmov rsi, CHMOD%1$csyscall%1$cmov rdi, [rsp]%1$cmov rsi, s%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, s%1$ccall _dprintf%1$cmov rax, 0x2000006%1$cmov rdi, r15%1$csyscall%1$cleave%1$cret%1$c_end:%1$cleave%1$cret%1$c%%endmacro%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$cFT%1$csection .data%1$csrc db %2$cGrace_kid.s%2$c, 0%1$cs db %2$c%3$s%2$c%1$c"
