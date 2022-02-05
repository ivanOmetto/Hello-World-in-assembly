; hello_world

global _start

section .text:

_start:
  mov eax, 0x4                  ; use the write syscall
  mov ecx, 1                    ; use stdout as the fd
  mov ecx, message              ; use the message as the buffer
  mov edx, message_lenght       ; supply the lenght
  int 0x80                      ; invoke the syscall

  mov eax, 0x1
  mov ebx, 0
  int 0x80

section .data:
  message: db "Hello World!", 0xA
  message_lenght equ $-message
