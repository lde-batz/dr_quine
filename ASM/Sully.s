%define CHMOD 0777q

section .data
filename db "Sully_%d.s", 0
executname db "Sully_%d", 0
cmd db "nasm -f macho64 %1$s && ld -macosx_version_min 10.8 -lSystem -no_pie -o %2$s %2$s.o && ./%2$s", 0
s db "%%define CHMOD 0777q%1$csection .data%1$cfilename db %2$cSully_%%d.s%2$c, 0%1$cexecutname db %2$cSully_%%d%2$c, 0%1$ccmd db %2$cnasm -f macho64 %%1$s && ld -macosx_version_min 10.8 -lSystem -no_pie -o %%2$s %%2$s.o && ./%%2$s%2$c, 0%1$cs db %2$c%3$s%2$c, 0%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$cextern _asprintf%1$cextern _system%1$c_main:%1$center 64, 0%1$cmov rax, %4$d%1$ccmp rax, 0%1$cjle _end%1$cdec rax%1$cmov [rsp], rax%1$clea rdi, [rsp+8]%1$cmov rsi, filename%1$cmov rdx, [rsp]%1$ccall _asprintf%1$clea rdi, [rsp+16]%1$cmov rsi, executname%1$cmov rdx, [rsp]%1$ccall _asprintf%1$cmov rax, 0x2000005%1$cmov rdi, [rsp+8]%1$cmov rsi, 0x0202%1$csyscall%1$ccmp eax, 0%1$cjl _end%1$cmov [rbp-8], rax%1$cmov rax, 0x200000f%1$cmov rdi, [rsp+8]%1$cmov rsi, CHMOD%1$csyscall%1$cmov rdi, [rbp-8]%1$cmov rsi, s%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, s%1$cmov r9, [rsp]%1$ccall _dprintf%1$clea rdi, [rsp+24]%1$cmov rsi, cmd%1$cmov rdx, [rsp+8]%1$cmov rcx, [rsp+16]%1$ccall _asprintf%1$cmov rdi, [rsp+24]%1$ccall _system%1$c_end:%1$cleave%1$cret%1$c", 0

section .text
global _main
extern _printf
extern _dprintf
extern _asprintf
extern _system

_main:
	; calling convention + save 64
	enter 64, 0

	; init number
	mov rax, 5

	; check if number is positif
	cmp rax, 0
	jle _end

	; save number - 1
	dec rax
	mov [rsp], rax

	; asprintf(&filename, "Sully_%d.s", i-1);
	lea rdi, [rsp+8]
	mov rsi, filename
	mov rdx, [rsp]
	call _asprintf

	; asprintf(&executname, "Sully_%d", i-1);
	lea rdi, [rsp+16]
	mov rsi, executname
	mov rdx, [rsp]
	call _asprintf

	; open
	mov rax, 0x2000005
	mov rdi, [rsp+8]
	mov rsi, 0x0202
	syscall
	cmp eax, 0
	jl _end
	mov [rbp-8], rax

	; chmod
	mov rax, 0x200000f
	mov rdi, [rsp+8]
	mov rsi, CHMOD
	syscall

	; dprintf(filename, ...)
	mov rdi, [rbp-8]
	mov rsi, s
	mov rdx, 10
	mov rcx, 34
	mov r8, s
	mov r9, [rsp]
	call _dprintf

	; asprintf(&cmd, "nasm -f macho64 %1$s && ld -macosx_version_min 10.8 -lSystem -o %2$s %2$s.o && ./%2$s", filename, excutname);
	lea rdi, [rsp+24]
	mov rsi, cmd
	mov rdx, [rsp+8]
	mov rcx, [rsp+16]
	call _asprintf
	
	; execve
	mov rdi, [rsp+24]
	call _system

_end:
	leave
	ret