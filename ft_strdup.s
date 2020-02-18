section .text
        global _ft_strdup
        extern _malloc
        extern _ft_strlen
        extern _ft_strcpy

_ft_strdup:
    xor rax, rax
    jmp loop

loop:   
    push rdi
    call _ft_strlen
    mov rdi, rax
    inc rdi
    call _malloc
    cmp rax, 0
    je error
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    ret

error:
    mov rax, -1
    ret