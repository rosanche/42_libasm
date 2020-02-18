section	.text
        global _ft_strlen

_ft_strlen:
        xor rax, rax

compt:  
        cmp [rdi + rax], byte 0
        je  end
        inc rax
        jmp compt

end:
        ret