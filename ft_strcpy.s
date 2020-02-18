section .text
    global _ft_strcpy

_ft_strcpy:
    xor rax, rax
    push rdi

loop:
    cmp [rsi], byte 0
    je end
    mov al, [rsi]
    mov [rdi], al
    inc rdi
    inc rsi
    jmp loop

end:
    mov [rdi], byte 0
    pop rax
    ret