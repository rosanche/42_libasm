section .text
        global _ft_strcmp

_ft_strcmp:
    mov rax, 0
    jmp loop
loop:
    mov al, BYTE [rdi]
    mov bl, BYTE [rsi]
    cmp al, 0
    je end
    cmp bl, 0
    je end
    cmp al, bl
    jne end
    inc rdi
    inc rsi
    jmp loop

end:
    movzx rax, al
    movzx rbx, bl
    sub rax, rbx
    ret