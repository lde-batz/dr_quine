org	0x0100

mov	dx, texte
mov ah, 0x09
int 0x21
ret

texte: db 'Hello World!', 10, 13, '$'