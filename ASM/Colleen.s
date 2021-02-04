;start
section .data
s db ";start%1$csection .data%1$cs db %2$c%3$s%2$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c_main:%1$cpush rbp;calling convention%1$cmov rbp, rsp%1$ccall _fct%1$cleave%1$cret%1$c_fct:%1$cpush rbp%1$cmov rbp, rsp%1$cmov rdi, s%1$cmov rsi, 10%1$cmov rdx, 34%1$cmov rcx, s%1$ccall _printf%1$cleave%1$cret%1$c"
section .text
global _main
extern _printf
_main:
push rbp;calling convention
mov rbp, rsp
call _fct
leave
ret
_fct:
push rbp
mov rbp, rsp
mov rdi, s
mov rsi, 10
mov rdx, 34
mov rcx, s
call _printf
leave
ret
