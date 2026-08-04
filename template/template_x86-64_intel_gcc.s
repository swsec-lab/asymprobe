add	DWORD PTR SYMBOL[rip], 8
add	DWORD PTR SYMBOL[rip], eax
add	DWORD PTR SYMBOL[rip], ebp
add	DWORD PTR SYMBOL[rip], ebx
add	DWORD PTR SYMBOL[rip], r13d
add	QWORD PTR SYMBOL[8+r12*8], 8
add	QWORD PTR SYMBOL[8+rax*8], 8
add	QWORD PTR SYMBOL[rip+8], 8
add	QWORD PTR SYMBOL[rip+8], r8
add	QWORD PTR SYMBOL[rip+8], r9
add	QWORD PTR SYMBOL[rip+8], rax
add	QWORD PTR SYMBOL[rip+8], rcx
add	QWORD PTR SYMBOL[rip+8], rdi
add	QWORD PTR SYMBOL[rip+8], rdx
add	QWORD PTR SYMBOL[rip+8], rsi
add	QWORD PTR SYMBOL[rip], 8
add	QWORD PTR SYMBOL[rip], r12
add	QWORD PTR SYMBOL[rip], rax
add	QWORD PTR SYMBOL[rip], rbp
add	QWORD PTR SYMBOL[rip], rsi
add	eax, DWORD PTR SYMBOL[8+rdx*8]
add	eax, DWORD PTR SYMBOL[rip]
add	ecx, DWORD PTR SYMBOL[rip]
add	edx, DWORD PTR SYMBOL[rip]
add	esi, DWORD PTR SYMBOL[rip]
add	r10, QWORD PTR SYMBOL[rip]
add	r11d, DWORD PTR SYMBOL[rip]
add	r12, QWORD PTR SYMBOL[rip]
add	r13, QWORD PTR SYMBOL[rip]
add	r14, QWORD PTR SYMBOL[rip]
add	r14d, DWORD PTR SYMBOL[rip]
add	r15, QWORD PTR SYMBOL[rip]
add	r15d, DWORD PTR SYMBOL[rip]
add	r8, QWORD PTR SYMBOL[rip]
add	r8d, DWORD PTR SYMBOL[rip]
add	rax, OFFSET FLAT:SYMBOL
add	rax, OFFSET FLAT:SYMBOL+8
add	rax, QWORD PTR SYMBOL[rip]
add	rbp, QWORD PTR SYMBOL[rip]
add	rbx, QWORD PTR SYMBOL[rip]
add	rcx, OFFSET FLAT:SYMBOL
add	rdi, OFFSET FLAT:SYMBOL
add	rdi, QWORD PTR SYMBOL[rip]
add	rdx, OFFSET FLAT:SYMBOL
add	rdx, OFFSET FLAT:SYMBOL+8
add	rdx, QWORD PTR SYMBOL[rip]
add	rsi, OFFSET FLAT:SYMBOL+8
add	rsi, QWORD PTR SYMBOL[rip]
and	BYTE PTR SYMBOL[r12], 8
and	BYTE PTR SYMBOL[rbp], 8
and	BYTE PTR SYMBOL[rip], 8
and	BYTE PTR SYMBOL[rip], al
and	DWORD PTR SYMBOL[rip], -8
and	al, BYTE PTR SYMBOL[rip]
and	bl, BYTE PTR SYMBOL[rip]
and	bpl, BYTE PTR SYMBOL[rip]
and	cl, BYTE PTR SYMBOL[rip]
and	dl, BYTE PTR SYMBOL[rip]
and	r14b, BYTE PTR SYMBOL[rip]
and	r15b, BYTE PTR SYMBOL[rip]
and	rdx, QWORD PTR SYMBOL[rip+8]
call	SYMBOL
call	[QWORD PTR SYMBOL[8+rax*8]]
call	[QWORD PTR SYMBOL[rip]]
cmove	eax, DWORD PTR SYMBOL[rip]
cmovne	rdx, QWORD PTR SYMBOL[rip]
cmp	BYTE PTR SYMBOL[8+rax*8], 8
cmp	BYTE PTR SYMBOL[8+rdx*8], 8
cmp	BYTE PTR SYMBOL[r10], 8
cmp	BYTE PTR SYMBOL[r12], 8
cmp	BYTE PTR SYMBOL[r13], 8
cmp	BYTE PTR SYMBOL[r14], 8
cmp	BYTE PTR SYMBOL[r8], 8
cmp	BYTE PTR SYMBOL[r9], 8
cmp	BYTE PTR SYMBOL[rax+8+rax], cl
cmp	BYTE PTR SYMBOL[rax+8], 8
cmp	BYTE PTR SYMBOL[rax+rax], cl
cmp	BYTE PTR SYMBOL[rax], 8
cmp	BYTE PTR SYMBOL[rbp], 8
cmp	BYTE PTR SYMBOL[rbx], 8
cmp	BYTE PTR SYMBOL[rcx+8+rcx], al
cmp	BYTE PTR SYMBOL[rcx+rcx], al
cmp	BYTE PTR SYMBOL[rcx], 8
cmp	BYTE PTR SYMBOL[rdi+8], 8
cmp	BYTE PTR SYMBOL[rdi], 8
cmp	BYTE PTR SYMBOL[rdx-8], r12b
cmp	BYTE PTR SYMBOL[rdx], 8
cmp	BYTE PTR SYMBOL[rip+8], 8
cmp	BYTE PTR SYMBOL[rip+8], al
cmp	BYTE PTR SYMBOL[rip], 8
cmp	BYTE PTR SYMBOL[rip], al
cmp	BYTE PTR SYMBOL[rip], bpl
cmp	BYTE PTR SYMBOL[rip], cl
cmp	BYTE PTR SYMBOL[rip], dil
cmp	BYTE PTR SYMBOL[rip], dl
cmp	BYTE PTR SYMBOL[rip], r13b
cmp	BYTE PTR SYMBOL[rip], sil
cmp	BYTE PTR SYMBOL[rsi], 8
cmp	DWORD PTR SYMBOL[8+rax*8], -8
cmp	DWORD PTR SYMBOL[8+rax*8], 8
cmp	DWORD PTR SYMBOL[8+rdx*8], 8
cmp	DWORD PTR SYMBOL[rax+8], -8
cmp	DWORD PTR SYMBOL[rip+8], 8
cmp	DWORD PTR SYMBOL[rip+8], eax
cmp	DWORD PTR SYMBOL[rip], -8
cmp	DWORD PTR SYMBOL[rip], 8
cmp	DWORD PTR SYMBOL[rip], eax
cmp	DWORD PTR SYMBOL[rip], ebp
cmp	DWORD PTR SYMBOL[rip], ebx
cmp	DWORD PTR SYMBOL[rip], ecx
cmp	DWORD PTR SYMBOL[rip], edi
cmp	DWORD PTR SYMBOL[rip], edx
cmp	DWORD PTR SYMBOL[rip], esi
cmp	DWORD PTR SYMBOL[rip], r12d
cmp	DWORD PTR SYMBOL[rip], r13d
cmp	DWORD PTR SYMBOL[rip], r14d
cmp	DWORD PTR SYMBOL[rsi], ebp
cmp	QWORD PTR SYMBOL[8+r12*8], rbp
cmp	QWORD PTR SYMBOL[8+r12*8], rbx
cmp	QWORD PTR SYMBOL[8+rax*8], r12
cmp	QWORD PTR SYMBOL[rip+8], 8
cmp	QWORD PTR SYMBOL[rip+8], r11
cmp	QWORD PTR SYMBOL[rip+8], r13
cmp	QWORD PTR SYMBOL[rip+8], r14
cmp	QWORD PTR SYMBOL[rip+8], r15
cmp	QWORD PTR SYMBOL[rip+8], r9
cmp	QWORD PTR SYMBOL[rip+8], rax
cmp	QWORD PTR SYMBOL[rip+8], rbp
cmp	QWORD PTR SYMBOL[rip+8], rdx
cmp	QWORD PTR SYMBOL[rip], -8
cmp	QWORD PTR SYMBOL[rip], 8
cmp	QWORD PTR SYMBOL[rip], OFFSET FLAT:SYMBOL
cmp	QWORD PTR SYMBOL[rip], OFFSET FLAT:SYMBOL+8
cmp	QWORD PTR SYMBOL[rip], r12
cmp	QWORD PTR SYMBOL[rip], r13
cmp	QWORD PTR SYMBOL[rip], r14
cmp	QWORD PTR SYMBOL[rip], r15
cmp	QWORD PTR SYMBOL[rip], r8
cmp	QWORD PTR SYMBOL[rip], rax
cmp	QWORD PTR SYMBOL[rip], rbp
cmp	QWORD PTR SYMBOL[rip], rbx
cmp	QWORD PTR SYMBOL[rip], rcx
cmp	QWORD PTR SYMBOL[rip], rdi
cmp	QWORD PTR SYMBOL[rip], rdx
cmp	QWORD PTR SYMBOL[rip], rsi
cmp	QWORD PTR [rbp+8], OFFSET FLAT:SYMBOL
cmp	QWORD PTR [rbp-8], OFFSET FLAT:SYMBOL
cmp	QWORD PTR [rbx+8], OFFSET FLAT:SYMBOL
cmp	QWORD PTR [rdi+8], OFFSET FLAT:SYMBOL
cmp	QWORD PTR [rsp], OFFSET FLAT:SYMBOL
cmp	al, BYTE PTR SYMBOL[rip]
cmp	cl, BYTE PTR SYMBOL[rip]
cmp	dil, BYTE PTR SYMBOL[rcx]
cmp	dil, BYTE PTR SYMBOL[rdx]
cmp	dl, BYTE PTR SYMBOL[rip]
cmp	eax, DWORD PTR SYMBOL[rip]
cmp	ebp, DWORD PTR SYMBOL[rip]
cmp	ebx, DWORD PTR SYMBOL[rip]
cmp	ecx, DWORD PTR SYMBOL[rip]
cmp	edi, DWORD PTR SYMBOL[rip]
cmp	edx, DWORD PTR SYMBOL[rip]
cmp	esi, DWORD PTR SYMBOL[rip]
cmp	r10, OFFSET FLAT:SYMBOL+8
cmp	r10, QWORD PTR SYMBOL[rip]
cmp	r11, QWORD PTR SYMBOL[rip+8]
cmp	r12, OFFSET FLAT:SYMBOL
cmp	r12, OFFSET FLAT:SYMBOL+8
cmp	r12, QWORD PTR SYMBOL[rip]
cmp	r12d, DWORD PTR SYMBOL[rip]
cmp	r13, OFFSET FLAT:SYMBOL
cmp	r13, OFFSET FLAT:SYMBOL+8
cmp	r13, QWORD PTR SYMBOL[rip+8]
cmp	r13, QWORD PTR SYMBOL[rip]
cmp	r13b, BYTE PTR SYMBOL[rax+rax]
cmp	r13d, DWORD PTR SYMBOL[rip]
cmp	r14, OFFSET FLAT:SYMBOL
cmp	r14, QWORD PTR SYMBOL[rip+8]
cmp	r14, QWORD PTR SYMBOL[rip]
cmp	r14b, BYTE PTR SYMBOL[rax+8+rax]
cmp	r14b, BYTE PTR SYMBOL[rbx-8]
cmp	r14d, DWORD PTR SYMBOL[rip]
cmp	r15, OFFSET FLAT:SYMBOL
cmp	r15, OFFSET FLAT:SYMBOL+8
cmp	r15, QWORD PTR SYMBOL[rip+8]
cmp	r15, QWORD PTR SYMBOL[rip]
cmp	r15d, DWORD PTR SYMBOL[rip]
cmp	r9, QWORD PTR SYMBOL[rip]
cmp	rax, OFFSET FLAT:SYMBOL
cmp	rax, OFFSET FLAT:SYMBOL+8
cmp	rax, QWORD PTR SYMBOL[rip+8]
cmp	rax, QWORD PTR SYMBOL[rip]
cmp	rbp, OFFSET FLAT:SYMBOL
cmp	rbp, OFFSET FLAT:SYMBOL+8
cmp	rbp, QWORD PTR SYMBOL[rip+8]
cmp	rbp, QWORD PTR SYMBOL[rip]
cmp	rbx, OFFSET FLAT:SYMBOL
cmp	rbx, OFFSET FLAT:SYMBOL+8
cmp	rbx, QWORD PTR SYMBOL[rip+8]
cmp	rbx, QWORD PTR SYMBOL[rip]
cmp	rcx, OFFSET FLAT:SYMBOL
cmp	rcx, QWORD PTR SYMBOL[rip]
cmp	rdi, OFFSET FLAT:SYMBOL
cmp	rdi, OFFSET FLAT:SYMBOL+8
cmp	rdi, QWORD PTR SYMBOL[rip+8]
cmp	rdx, OFFSET FLAT:SYMBOL
cmp	rdx, OFFSET FLAT:SYMBOL+8
cmp	rdx, QWORD PTR SYMBOL[rip]
cmp	rsi, OFFSET FLAT:SYMBOL
cmp	rsi, OFFSET FLAT:SYMBOL+8
cmp	rsi, QWORD PTR SYMBOL[rip]
cmp	sil, BYTE PTR SYMBOL[rax]
cmp	sil, BYTE PTR SYMBOL[rdi]
cmp	sil, BYTE PTR SYMBOL[rip]
dec	DWORD PTR SYMBOL[rip]
dec	QWORD PTR SYMBOL[rip]
div	QWORD PTR SYMBOL[rip]
fild	QWORD PTR SYMBOL[rip]
idiv	QWORD PTR SYMBOL[rip]
imul	eax, DWORD PTR SYMBOL[rip], 8
imul	ebx, DWORD PTR SYMBOL[rip]
imul	edx, DWORD PTR SYMBOL[rip]
imul	r13, QWORD PTR SYMBOL[rip], 8
imul	rax, QWORD PTR SYMBOL[rip], 8
imul	rbp, QWORD PTR SYMBOL[rip], 8
imul	rbx, QWORD PTR SYMBOL[rip], 8
imul	rdx, QWORD PTR SYMBOL[rip], 8
inc	DWORD PTR SYMBOL[rip]
inc	QWORD PTR SYMBOL[8+r12*8]
inc	QWORD PTR SYMBOL[rip]
jmp	SYMBOL
jmp	[QWORD PTR SYMBOL[rip]]
lea	r10, SYMBOL[rip]
lea	r11, SYMBOL[rip]
lea	r12, SYMBOL[rip+8]
lea	r12, SYMBOL[rip]
lea	r13, SYMBOL[rip+8]
lea	r13, SYMBOL[rip]
lea	r14, SYMBOL[rip+8]
lea	r14, SYMBOL[rip]
lea	r15, SYMBOL[rip+8]
lea	r15, SYMBOL[rip]
lea	r8, SYMBOL[rip+8]
lea	r8, SYMBOL[rip]
lea	r9, SYMBOL[8+rdx*8]
lea	r9, SYMBOL[rip]
lea	rax, SYMBOL[8+rax*8]
lea	rax, SYMBOL[8+rdx*8]
lea	rax, SYMBOL[rdi]
lea	rax, SYMBOL[rip+8]
lea	rax, SYMBOL[rip-8]
lea	rax, SYMBOL[rip]
lea	rbp, SYMBOL[rip+8]
lea	rbp, SYMBOL[rip]
lea	rbx, SYMBOL[rip+8]
lea	rbx, SYMBOL[rip]
lea	rcx, SYMBOL[8+rcx*8]
lea	rcx, SYMBOL[8+rdi*8]
lea	rcx, SYMBOL[8+rdx*8]
lea	rcx, SYMBOL[r9+rax*8]
lea	rcx, SYMBOL[rax+rdx*8]
lea	rcx, SYMBOL[rax]
lea	rcx, SYMBOL[rdx]
lea	rcx, SYMBOL[rip+8]
lea	rcx, SYMBOL[rip-8]
lea	rcx, SYMBOL[rip]
lea	rdi, SYMBOL[8+rdx*8]
lea	rdi, SYMBOL[rax]
lea	rdi, SYMBOL[rbx]
lea	rdi, SYMBOL[rdx]
lea	rdi, SYMBOL[rip+8]
lea	rdi, SYMBOL[rip]
lea	rdx, SYMBOL[8+rdx*8]
lea	rdx, SYMBOL[rax+8]
lea	rdx, SYMBOL[rax]
lea	rdx, SYMBOL[rip+8]
lea	rdx, SYMBOL[rip]
lea	rsi, SYMBOL[8+rax*8]
lea	rsi, SYMBOL[rip+8]
lea	rsi, SYMBOL[rip]
mov	BYTE PTR SYMBOL[8+rax*8], 8
mov	BYTE PTR SYMBOL[r12], 8
mov	BYTE PTR SYMBOL[r12], al
mov	BYTE PTR SYMBOL[r13], al
mov	BYTE PTR SYMBOL[r13], dl
mov	BYTE PTR SYMBOL[rax-8], cl
mov	BYTE PTR SYMBOL[rax-8], dl
mov	BYTE PTR SYMBOL[rax], 8
mov	BYTE PTR SYMBOL[rax], al
mov	BYTE PTR SYMBOL[rax], dl
mov	BYTE PTR SYMBOL[rax], r10b
mov	BYTE PTR SYMBOL[rbp-8], al
mov	BYTE PTR SYMBOL[rbp-8], cl
mov	BYTE PTR SYMBOL[rbp], 8
mov	BYTE PTR SYMBOL[rbp], al
mov	BYTE PTR SYMBOL[rbp], dl
mov	BYTE PTR SYMBOL[rbx-8], al
mov	BYTE PTR SYMBOL[rbx], 8
mov	BYTE PTR SYMBOL[rbx], al
mov	BYTE PTR SYMBOL[rbx], bl
mov	BYTE PTR SYMBOL[rcx-8], al
mov	BYTE PTR SYMBOL[rcx], 8
mov	BYTE PTR SYMBOL[rcx], al
mov	BYTE PTR SYMBOL[rcx], dil
mov	BYTE PTR SYMBOL[rcx], sil
mov	BYTE PTR SYMBOL[rdx-8], cl
mov	BYTE PTR SYMBOL[rdx], al
mov	BYTE PTR SYMBOL[rip+8], 8
mov	BYTE PTR SYMBOL[rip+8], al
mov	BYTE PTR SYMBOL[rip+8], cl
mov	BYTE PTR SYMBOL[rip+8], dil
mov	BYTE PTR SYMBOL[rip+8], dl
mov	BYTE PTR SYMBOL[rip+8], r8b
mov	BYTE PTR SYMBOL[rip+8], sil
mov	BYTE PTR SYMBOL[rip], -8
mov	BYTE PTR SYMBOL[rip], 8
mov	BYTE PTR SYMBOL[rip], al
mov	BYTE PTR SYMBOL[rip], bl
mov	BYTE PTR SYMBOL[rip], bpl
mov	BYTE PTR SYMBOL[rip], cl
mov	BYTE PTR SYMBOL[rip], dil
mov	BYTE PTR SYMBOL[rip], dl
mov	BYTE PTR SYMBOL[rip], r12b
mov	BYTE PTR SYMBOL[rip], r13b
mov	BYTE PTR SYMBOL[rip], r14b
mov	BYTE PTR SYMBOL[rip], r15b
mov	BYTE PTR SYMBOL[rip], sil
mov	DWORD PTR SYMBOL[8+rax*8], 8
mov	DWORD PTR SYMBOL[rax-8], ebx
mov	DWORD PTR SYMBOL[rdx-8], ebp
mov	DWORD PTR SYMBOL[rdx-8], r12d
mov	DWORD PTR SYMBOL[rdx-8], r14d
mov	DWORD PTR SYMBOL[rip+8], 8
mov	DWORD PTR SYMBOL[rip+8], eax
mov	DWORD PTR SYMBOL[rip+8], ebp
mov	DWORD PTR SYMBOL[rip+8], edx
mov	DWORD PTR SYMBOL[rip+8], r13d
mov	DWORD PTR SYMBOL[rip+8], r14d
mov	DWORD PTR SYMBOL[rip+8], r8d
mov	DWORD PTR SYMBOL[rip], -8
mov	DWORD PTR SYMBOL[rip], 8
mov	DWORD PTR SYMBOL[rip], eax
mov	DWORD PTR SYMBOL[rip], ebp
mov	DWORD PTR SYMBOL[rip], ebx
mov	DWORD PTR SYMBOL[rip], ecx
mov	DWORD PTR SYMBOL[rip], edi
mov	DWORD PTR SYMBOL[rip], edx
mov	DWORD PTR SYMBOL[rip], esi
mov	DWORD PTR SYMBOL[rip], r10d
mov	DWORD PTR SYMBOL[rip], r11d
mov	DWORD PTR SYMBOL[rip], r12d
mov	DWORD PTR SYMBOL[rip], r13d
mov	DWORD PTR SYMBOL[rip], r14d
mov	DWORD PTR SYMBOL[rip], r15d
mov	DWORD PTR SYMBOL[rip], r8d
mov	DWORD PTR SYMBOL[rip], r9d
mov	QWORD PTR SYMBOL[8+r12*8], r13
mov	QWORD PTR SYMBOL[8+r12*8], rbp
mov	QWORD PTR SYMBOL[8+r12*8], rbx
mov	QWORD PTR SYMBOL[8+r13*8], r12
mov	QWORD PTR SYMBOL[8+r13*8], rbp
mov	QWORD PTR SYMBOL[8+r15*8], r12
mov	QWORD PTR SYMBOL[8+rax*8], rbp
mov	QWORD PTR SYMBOL[8+rax*8], rdx
mov	QWORD PTR SYMBOL[8+rdx*8], r12
mov	QWORD PTR SYMBOL[8+rdx*8], r14
mov	QWORD PTR SYMBOL[rax-8], rdx
mov	QWORD PTR SYMBOL[rax], r14
mov	QWORD PTR SYMBOL[rdx-8], rax
mov	QWORD PTR SYMBOL[rip+8], -8
mov	QWORD PTR SYMBOL[rip+8], 8
mov	QWORD PTR SYMBOL[rip+8], OFFSET FLAT:LOCAL
mov	QWORD PTR SYMBOL[rip+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR SYMBOL[rip+8], r10
mov	QWORD PTR SYMBOL[rip+8], r11
mov	QWORD PTR SYMBOL[rip+8], r12
mov	QWORD PTR SYMBOL[rip+8], r13
mov	QWORD PTR SYMBOL[rip+8], r14
mov	QWORD PTR SYMBOL[rip+8], r15
mov	QWORD PTR SYMBOL[rip+8], r8
mov	QWORD PTR SYMBOL[rip+8], r9
mov	QWORD PTR SYMBOL[rip+8], rax
mov	QWORD PTR SYMBOL[rip+8], rbp
mov	QWORD PTR SYMBOL[rip+8], rbx
mov	QWORD PTR SYMBOL[rip+8], rcx
mov	QWORD PTR SYMBOL[rip+8], rdi
mov	QWORD PTR SYMBOL[rip+8], rdx
mov	QWORD PTR SYMBOL[rip+8], rsi
mov	QWORD PTR SYMBOL[rip], -8
mov	QWORD PTR SYMBOL[rip], 8
mov	QWORD PTR SYMBOL[rip], OFFSET FLAT:LOCAL
mov	QWORD PTR SYMBOL[rip], OFFSET FLAT:SYMBOL
mov	QWORD PTR SYMBOL[rip], r10
mov	QWORD PTR SYMBOL[rip], r11
mov	QWORD PTR SYMBOL[rip], r12
mov	QWORD PTR SYMBOL[rip], r13
mov	QWORD PTR SYMBOL[rip], r14
mov	QWORD PTR SYMBOL[rip], r15
mov	QWORD PTR SYMBOL[rip], r8
mov	QWORD PTR SYMBOL[rip], r9
mov	QWORD PTR SYMBOL[rip], rax
mov	QWORD PTR SYMBOL[rip], rbp
mov	QWORD PTR SYMBOL[rip], rbx
mov	QWORD PTR SYMBOL[rip], rcx
mov	QWORD PTR SYMBOL[rip], rdi
mov	QWORD PTR SYMBOL[rip], rdx
mov	QWORD PTR SYMBOL[rip], rsi
mov	QWORD PTR [r11+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [r15+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rax+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rax+rdx*8], OFFSET FLAT:SYMBOL+8
mov	QWORD PTR [rbp+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rbp-8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rbp-8], OFFSET FLAT:SYMBOL+8
mov	QWORD PTR [rbx+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rdi+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rdi+rax*8], OFFSET FLAT:SYMBOL+8
mov	QWORD PTR [rdx+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rdx+rax*8], OFFSET FLAT:SYMBOL+8
mov	QWORD PTR [rsi+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rsp+8], OFFSET FLAT:SYMBOL
mov	QWORD PTR [rsp], OFFSET FLAT:SYMBOL
mov	WORD PTR SYMBOL[rip+8], 8
mov	WORD PTR SYMBOL[rip+8], ax
mov	WORD PTR SYMBOL[rip], 8
mov	WORD PTR SYMBOL[rip], cx
mov	WORD PTR SYMBOL[rip], dx
mov	WORD PTR SYMBOL[rip], r13w
mov	WORD PTR SYMBOL[rip], r14w
mov	al, BYTE PTR SYMBOL[r14+8]
mov	al, BYTE PTR SYMBOL[rax]
mov	al, BYTE PTR SYMBOL[rdi]
mov	al, BYTE PTR SYMBOL[rdx]
mov	al, BYTE PTR SYMBOL[rip+8]
mov	al, BYTE PTR SYMBOL[rip]
mov	ax, WORD PTR SYMBOL[rip]
mov	bl, BYTE PTR SYMBOL[rip]
mov	bpl, BYTE PTR SYMBOL[rip]
mov	ch, BYTE PTR SYMBOL[rax]
mov	cl, BYTE PTR SYMBOL[r9]
mov	cl, BYTE PTR SYMBOL[rax]
mov	cl, BYTE PTR SYMBOL[rbp]
mov	cl, BYTE PTR SYMBOL[rcx]
mov	cl, BYTE PTR SYMBOL[rip+8]
mov	cl, BYTE PTR SYMBOL[rip]
mov	cl, BYTE PTR SYMBOL[rsi]
mov	dil, BYTE PTR SYMBOL[rax]
mov	dil, BYTE PTR SYMBOL[rdi]
mov	dil, BYTE PTR SYMBOL[rip]
mov	dl, BYTE PTR SYMBOL[rip]
mov	eax, DWORD PTR SYMBOL[8+rax*8]
mov	eax, DWORD PTR SYMBOL[8+rcx*8]
mov	eax, DWORD PTR SYMBOL[r9+8]
mov	eax, DWORD PTR SYMBOL[rax+8]
mov	eax, DWORD PTR SYMBOL[rbx+8]
mov	eax, DWORD PTR SYMBOL[rbx]
mov	eax, DWORD PTR SYMBOL[rcx-8]
mov	eax, DWORD PTR SYMBOL[rdi+8]
mov	eax, DWORD PTR SYMBOL[rip+8]
mov	eax, DWORD PTR SYMBOL[rip]
mov	eax, OFFSET FLAT:SYMBOL
mov	eax, OFFSET FLAT:SYMBOL+8
mov	ebp, DWORD PTR SYMBOL[8+rax*8]
mov	ebp, DWORD PTR SYMBOL[8+rbx*8]
mov	ebp, DWORD PTR SYMBOL[rip]
mov	ebp, OFFSET FLAT:SYMBOL
mov	ebp, OFFSET FLAT:SYMBOL+8
mov	ebx, DWORD PTR SYMBOL[8+r12*8]
mov	ebx, DWORD PTR SYMBOL[8+r8*8]
mov	ebx, DWORD PTR SYMBOL[8+r9*8]
mov	ebx, DWORD PTR SYMBOL[8+rax*8]
mov	ebx, DWORD PTR SYMBOL[8+rbp*8]
mov	ebx, DWORD PTR SYMBOL[8+rsi*8]
mov	ebx, DWORD PTR SYMBOL[rip+8]
mov	ebx, DWORD PTR SYMBOL[rip]
mov	ebx, OFFSET FLAT:SYMBOL
mov	ebx, OFFSET FLAT:SYMBOL+8
mov	ecx, DWORD PTR SYMBOL[8+rax*8]
mov	ecx, DWORD PTR SYMBOL[8+rcx*8]
mov	ecx, DWORD PTR SYMBOL[8+rdx*8]
mov	ecx, DWORD PTR SYMBOL[r8-8]
mov	ecx, DWORD PTR SYMBOL[rcx+8]
mov	ecx, DWORD PTR SYMBOL[rip+8]
mov	ecx, DWORD PTR SYMBOL[rip]
mov	ecx, OFFSET FLAT:SYMBOL
mov	ecx, OFFSET FLAT:SYMBOL+8
mov	edi, DWORD PTR SYMBOL[rax+8]
mov	edi, DWORD PTR SYMBOL[rip+8]
mov	edi, DWORD PTR SYMBOL[rip]
mov	edi, OFFSET FLAT:SYMBOL
mov	edi, OFFSET FLAT:SYMBOL+8
mov	edx, DWORD PTR SYMBOL[8+rax*8]
mov	edx, DWORD PTR SYMBOL[8+rdx*8]
mov	edx, DWORD PTR SYMBOL[rax-8]
mov	edx, DWORD PTR SYMBOL[rcx+8]
mov	edx, DWORD PTR SYMBOL[rdx+8]
mov	edx, DWORD PTR SYMBOL[rip+8]
mov	edx, DWORD PTR SYMBOL[rip]
mov	edx, OFFSET FLAT:SYMBOL
mov	edx, OFFSET FLAT:SYMBOL+8
mov	esi, DWORD PTR SYMBOL[8+rax*8]
mov	esi, DWORD PTR SYMBOL[8+rdx*8]
mov	esi, DWORD PTR SYMBOL[rip]
mov	esi, OFFSET FLAT:SYMBOL
mov	esi, OFFSET FLAT:SYMBOL+8
mov	r10, QWORD PTR SYMBOL[8+rax*8]
mov	r10, QWORD PTR SYMBOL[rip+8]
mov	r10, QWORD PTR SYMBOL[rip]
mov	r10b, BYTE PTR SYMBOL[r10]
mov	r10d, DWORD PTR SYMBOL[rip]
mov	r10d, OFFSET FLAT:SYMBOL
mov	r11, QWORD PTR SYMBOL[rdx]
mov	r11, QWORD PTR SYMBOL[rip+8]
mov	r11, QWORD PTR SYMBOL[rip]
mov	r11b, BYTE PTR SYMBOL[rcx]
mov	r11b, BYTE PTR SYMBOL[rip]
mov	r11d, DWORD PTR SYMBOL[rip]
mov	r11d, OFFSET FLAT:SYMBOL
mov	r12, QWORD PTR SYMBOL[8+r13*8]
mov	r12, QWORD PTR SYMBOL[8+rax*8]
mov	r12, QWORD PTR SYMBOL[8+rbp*8]
mov	r12, QWORD PTR SYMBOL[rax]
mov	r12, QWORD PTR SYMBOL[rip+8]
mov	r12, QWORD PTR SYMBOL[rip]
mov	r12b, BYTE PTR SYMBOL[rip+8]
mov	r12b, BYTE PTR SYMBOL[rip]
mov	r12d, DWORD PTR SYMBOL[8+rax*8]
mov	r12d, DWORD PTR SYMBOL[8+rbx*8]
mov	r12d, DWORD PTR SYMBOL[rip+8]
mov	r12d, DWORD PTR SYMBOL[rip]
mov	r12d, OFFSET FLAT:SYMBOL
mov	r12d, OFFSET FLAT:SYMBOL+8
mov	r13, QWORD PTR SYMBOL[8+r14*8]
mov	r13, QWORD PTR SYMBOL[8+rax*8]
mov	r13, QWORD PTR SYMBOL[8+rdx*8]
mov	r13, QWORD PTR SYMBOL[rax]
mov	r13, QWORD PTR SYMBOL[rip+8]
mov	r13, QWORD PTR SYMBOL[rip]
mov	r13b, BYTE PTR SYMBOL[rax+8]
mov	r13b, BYTE PTR SYMBOL[rip]
mov	r13d, DWORD PTR SYMBOL[8+r12*8]
mov	r13d, DWORD PTR SYMBOL[8+r13*8]
mov	r13d, DWORD PTR SYMBOL[8+rax*8]
mov	r13d, DWORD PTR SYMBOL[8+rdx*8]
mov	r13d, DWORD PTR SYMBOL[rip]
mov	r13d, OFFSET FLAT:SYMBOL
mov	r13d, OFFSET FLAT:SYMBOL+8
mov	r14, QWORD PTR SYMBOL[8+rax*8]
mov	r14, QWORD PTR SYMBOL[rip+8]
mov	r14, QWORD PTR SYMBOL[rip]
mov	r14b, BYTE PTR SYMBOL[rip]
mov	r14d, DWORD PTR SYMBOL[8+rax*8]
mov	r14d, DWORD PTR SYMBOL[rdi+8]
mov	r14d, DWORD PTR SYMBOL[rip+8]
mov	r14d, DWORD PTR SYMBOL[rip]
mov	r14d, OFFSET FLAT:SYMBOL
mov	r14d, OFFSET FLAT:SYMBOL+8
mov	r15, QWORD PTR SYMBOL[8+rsi*8]
mov	r15, QWORD PTR SYMBOL[rax]
mov	r15, QWORD PTR SYMBOL[rip+8]
mov	r15, QWORD PTR SYMBOL[rip]
mov	r15b, BYTE PTR SYMBOL[rip]
mov	r15d, DWORD PTR SYMBOL[8+r8*8]
mov	r15d, DWORD PTR SYMBOL[8+rax*8]
mov	r15d, DWORD PTR SYMBOL[rip+8]
mov	r15d, DWORD PTR SYMBOL[rip]
mov	r15d, OFFSET FLAT:SYMBOL
mov	r15d, OFFSET FLAT:SYMBOL+8
mov	r15d, OFFSET FLAT:SYMBOL-8
mov	r8, QWORD PTR SYMBOL[8+r12*8]
mov	r8, QWORD PTR SYMBOL[8+rax*8]
mov	r8, QWORD PTR SYMBOL[8+rbx*8]
mov	r8, QWORD PTR SYMBOL[rax+8]
mov	r8, QWORD PTR SYMBOL[rip+8]
mov	r8, QWORD PTR SYMBOL[rip]
mov	r8b, BYTE PTR SYMBOL[r8]
mov	r8b, BYTE PTR SYMBOL[rax]
mov	r8b, BYTE PTR SYMBOL[rip]
mov	r8d, DWORD PTR SYMBOL[rip+8]
mov	r8d, DWORD PTR SYMBOL[rip]
mov	r8d, OFFSET FLAT:SYMBOL
mov	r8d, OFFSET FLAT:SYMBOL+8
mov	r9, QWORD PTR SYMBOL[8+rax*8]
mov	r9, QWORD PTR SYMBOL[rip+8]
mov	r9, QWORD PTR SYMBOL[rip]
mov	r9b, BYTE PTR SYMBOL[r8]
mov	r9b, BYTE PTR SYMBOL[r9]
mov	r9b, BYTE PTR SYMBOL[rip]
mov	r9d, DWORD PTR SYMBOL[rip+8]
mov	r9d, DWORD PTR SYMBOL[rip]
mov	r9d, OFFSET FLAT:SYMBOL
mov	rax, QWORD PTR SYMBOL[8+r12*8]
mov	rax, QWORD PTR SYMBOL[8+r13*8]
mov	rax, QWORD PTR SYMBOL[8+rax*8]
mov	rax, QWORD PTR SYMBOL[8+rsi*8]
mov	rax, QWORD PTR SYMBOL[r12+8]
mov	rax, QWORD PTR SYMBOL[rax+8]
mov	rax, QWORD PTR SYMBOL[rcx-8]
mov	rax, QWORD PTR SYMBOL[rdx]
mov	rax, QWORD PTR SYMBOL[rip+8]
mov	rax, QWORD PTR SYMBOL[rip]
mov	rax, QWORD PTR SYMBOL[rsi]
mov	rbp, QWORD PTR SYMBOL[8+r12*8]
mov	rbp, QWORD PTR SYMBOL[8+r13*8]
mov	rbp, QWORD PTR SYMBOL[8+r14*8]
mov	rbp, QWORD PTR SYMBOL[8+rax*8]
mov	rbp, QWORD PTR SYMBOL[rax]
mov	rbp, QWORD PTR SYMBOL[rip+8]
mov	rbp, QWORD PTR SYMBOL[rip]
mov	rbx, QWORD PTR SYMBOL[8+r11*8]
mov	rbx, QWORD PTR SYMBOL[8+r12*8]
mov	rbx, QWORD PTR SYMBOL[8+r13*8]
mov	rbx, QWORD PTR SYMBOL[8+r9*8]
mov	rbx, QWORD PTR SYMBOL[8+rax*8]
mov	rbx, QWORD PTR SYMBOL[8+rbx*8]
mov	rbx, QWORD PTR SYMBOL[8+rcx*8]
mov	rbx, QWORD PTR SYMBOL[8+rdi*8]
mov	rbx, QWORD PTR SYMBOL[rbp]
mov	rbx, QWORD PTR SYMBOL[rdx]
mov	rbx, QWORD PTR SYMBOL[rip+8]
mov	rbx, QWORD PTR SYMBOL[rip]
mov	rcx, QWORD PTR SYMBOL[8+r12*8]
mov	rcx, QWORD PTR SYMBOL[8+rax*8]
mov	rcx, QWORD PTR SYMBOL[8+rbx*8]
mov	rcx, QWORD PTR SYMBOL[8+rcx*8]
mov	rcx, QWORD PTR SYMBOL[r8-8]
mov	rcx, QWORD PTR SYMBOL[rax+8]
mov	rcx, QWORD PTR SYMBOL[rax]
mov	rcx, QWORD PTR SYMBOL[rdi+8]
mov	rcx, QWORD PTR SYMBOL[rip+8]
mov	rcx, QWORD PTR SYMBOL[rip]
mov	rdi, QWORD PTR SYMBOL[8+r12*8]
mov	rdi, QWORD PTR SYMBOL[8+rax*8]
mov	rdi, QWORD PTR SYMBOL[8+rdi*8]
mov	rdi, QWORD PTR SYMBOL[rax+8]
mov	rdi, QWORD PTR SYMBOL[rdx]
mov	rdi, QWORD PTR SYMBOL[rip+8]
mov	rdi, QWORD PTR SYMBOL[rip]
mov	rdx, QWORD PTR SYMBOL[8+r14*8]
mov	rdx, QWORD PTR SYMBOL[8+rax*8]
mov	rdx, QWORD PTR SYMBOL[8+rbx*8]
mov	rdx, QWORD PTR SYMBOL[8+rcx*8]
mov	rdx, QWORD PTR SYMBOL[8+rdx*8]
mov	rdx, QWORD PTR SYMBOL[rax+8]
mov	rdx, QWORD PTR SYMBOL[rax-8]
mov	rdx, QWORD PTR SYMBOL[rax]
mov	rdx, QWORD PTR SYMBOL[rdi]
mov	rdx, QWORD PTR SYMBOL[rip+8]
mov	rdx, QWORD PTR SYMBOL[rip]
mov	rdx, QWORD PTR SYMBOL[rsi]
mov	rsi, QWORD PTR SYMBOL[-8+r14*8]
mov	rsi, QWORD PTR SYMBOL[-8+rdx*8]
mov	rsi, QWORD PTR SYMBOL[8+rax*8]
mov	rsi, QWORD PTR SYMBOL[8+rbp*8]
mov	rsi, QWORD PTR SYMBOL[8+rdx*8]
mov	rsi, QWORD PTR SYMBOL[rax]
mov	rsi, QWORD PTR SYMBOL[rip+8]
mov	rsi, QWORD PTR SYMBOL[rip]
mov	sil, BYTE PTR SYMBOL[rax]
mov	sil, BYTE PTR SYMBOL[rip]
mov	sil, BYTE PTR SYMBOL[rsi]
movaps	XMMWORD PTR SYMBOL[rax-8], xmm0
movaps	XMMWORD PTR SYMBOL[rax-8], xmm1
movaps	XMMWORD PTR SYMBOL[rip+8], xmm0
movaps	XMMWORD PTR SYMBOL[rip+8], xmm1
movaps	XMMWORD PTR SYMBOL[rip+8], xmm2
movaps	XMMWORD PTR SYMBOL[rip+8], xmm3
movaps	XMMWORD PTR SYMBOL[rip+8], xmm4
movaps	XMMWORD PTR SYMBOL[rip+8], xmm5
movaps	XMMWORD PTR SYMBOL[rip+8], xmm7
movaps	XMMWORD PTR SYMBOL[rip], xmm0
movaps	XMMWORD PTR SYMBOL[rip], xmm1
movaps	XMMWORD PTR SYMBOL[rip], xmm2
movaps	XMMWORD PTR SYMBOL[rip], xmm4
movaps	XMMWORD PTR SYMBOL[rip], xmm6
movaps	xmm0, XMMWORD PTR SYMBOL[rip]
movaps	xmm1, XMMWORD PTR SYMBOL[rip]
movdqa	xmm0, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm0, XMMWORD PTR SYMBOL[rip]
movdqa	xmm1, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm1, XMMWORD PTR SYMBOL[rip]
movdqa	xmm2, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm3, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm3, XMMWORD PTR SYMBOL[rip]
movdqa	xmm4, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm5, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm5, XMMWORD PTR SYMBOL[rip]
movdqa	xmm6, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm6, XMMWORD PTR SYMBOL[rip]
movdqa	xmm7, XMMWORD PTR SYMBOL[rip+8]
movdqa	xmm8, XMMWORD PTR SYMBOL[rip]
movdqu	xmm0, XMMWORD PTR SYMBOL[rip+8]
movdqu	xmm6, XMMWORD PTR SYMBOL[rip+8]
movdqu	xmm8, XMMWORD PTR SYMBOL[rip+8]
movhps	xmm0, QWORD PTR SYMBOL[rip]
movhps	xmm1, QWORD PTR SYMBOL[rip]
movq	xmm0, QWORD PTR SYMBOL[rip]
movsd	QWORD PTR SYMBOL[rip], xmm0
movsd	xmm0, QWORD PTR SYMBOL[rip]
movsx	eax, BYTE PTR SYMBOL[r12]
movsx	eax, BYTE PTR SYMBOL[r13]
movsx	eax, BYTE PTR SYMBOL[r14]
movsx	eax, BYTE PTR SYMBOL[rax]
movsx	eax, BYTE PTR SYMBOL[rbp]
movsx	eax, BYTE PTR SYMBOL[rbx]
movsx	eax, BYTE PTR SYMBOL[rcx]
movsx	eax, BYTE PTR SYMBOL[rdi]
movsx	eax, BYTE PTR SYMBOL[rdx]
movsx	eax, BYTE PTR SYMBOL[rip]
movsx	eax, WORD PTR SYMBOL[rax+rax]
movsx	ebp, BYTE PTR SYMBOL[r12]
movsx	ebp, BYTE PTR SYMBOL[rax]
movsx	ebp, BYTE PTR SYMBOL[rcx]
movsx	ebp, BYTE PTR SYMBOL[rdi]
movsx	ebp, BYTE PTR SYMBOL[rip]
movsx	ebx, BYTE PTR SYMBOL[rax]
movsx	ebx, BYTE PTR SYMBOL[rip]
movsx	ecx, BYTE PTR SYMBOL[r13]
movsx	ecx, BYTE PTR SYMBOL[r8]
movsx	ecx, BYTE PTR SYMBOL[rax]
movsx	ecx, BYTE PTR SYMBOL[rcx]
movsx	ecx, BYTE PTR SYMBOL[rip]
movsx	edi, BYTE PTR SYMBOL[rdi]
movsx	edi, BYTE PTR SYMBOL[rip]
movsx	edx, BYTE PTR SYMBOL[r14]
movsx	edx, BYTE PTR SYMBOL[r8]
movsx	edx, BYTE PTR SYMBOL[rax]
movsx	edx, BYTE PTR SYMBOL[rbp]
movsx	edx, BYTE PTR SYMBOL[rcx]
movsx	edx, BYTE PTR SYMBOL[rdx]
movsx	edx, BYTE PTR SYMBOL[rip]
movsx	edx, WORD PTR SYMBOL[rdx+8+rdx]
movsx	edx, WORD PTR SYMBOL[rdx+rdx]
movsx	esi, BYTE PTR SYMBOL[rax]
movsx	esi, BYTE PTR SYMBOL[rcx]
movsx	esi, BYTE PTR SYMBOL[rsi]
movsx	r10, DWORD PTR SYMBOL[8+rax*8]
movsx	r11, DWORD PTR SYMBOL[8+rax*8]
movsx	r12, DWORD PTR SYMBOL[rip]
movsx	r12d, BYTE PTR SYMBOL[rax]
movsx	r12d, BYTE PTR SYMBOL[rip]
movsx	r13, DWORD PTR SYMBOL[rip]
movsx	r13d, BYTE PTR SYMBOL[r8]
movsx	r13d, BYTE PTR SYMBOL[rax]
movsx	r13d, BYTE PTR SYMBOL[rip]
movsx	r14, DWORD PTR SYMBOL[rip]
movsx	r14d, BYTE PTR SYMBOL[r14]
movsx	r14d, BYTE PTR SYMBOL[rax]
movsx	r14d, BYTE PTR SYMBOL[rbx]
movsx	r14d, BYTE PTR SYMBOL[rdx]
movsx	r14d, BYTE PTR SYMBOL[rip]
movsx	r15, DWORD PTR SYMBOL[rip]
movsx	r15d, BYTE PTR SYMBOL[rax]
movsx	r15d, BYTE PTR SYMBOL[rip]
movsx	r8d, BYTE PTR SYMBOL[r14]
movsx	r8d, BYTE PTR SYMBOL[r15]
movsx	r8d, BYTE PTR SYMBOL[rax]
movsx	r9, DWORD PTR SYMBOL[8+rax*8]
movsx	rax, DWORD PTR SYMBOL[8+r13*8]
movsx	rax, DWORD PTR SYMBOL[8+rax*8]
movsx	rax, DWORD PTR SYMBOL[rip]
movsx	rbp, DWORD PTR SYMBOL[rip]
movsx	rbx, BYTE PTR SYMBOL[rax]
movsx	rbx, BYTE PTR SYMBOL[rbp]
movsx	rbx, BYTE PTR SYMBOL[rdx]
movsx	rbx, DWORD PTR SYMBOL[rip]
movsx	rcx, BYTE PTR SYMBOL[r14]
movsx	rcx, DWORD PTR SYMBOL[8+rax*8]
movsx	rcx, DWORD PTR SYMBOL[rip]
movsx	rdi, DWORD PTR SYMBOL[8+rax*8]
movsx	rdi, DWORD PTR SYMBOL[8+rdx*8]
movsx	rdi, DWORD PTR SYMBOL[rip]
movsx	rdx, BYTE PTR SYMBOL[r13]
movsx	rdx, DWORD PTR SYMBOL[8+rdx*8]
movsx	rdx, DWORD PTR SYMBOL[rip]
movsx	rsi, DWORD PTR SYMBOL[8+rax*8]
movzx	eax, BYTE PTR SYMBOL[r10]
movzx	eax, BYTE PTR SYMBOL[r14]
movzx	eax, BYTE PTR SYMBOL[r8]
movzx	eax, BYTE PTR SYMBOL[rax+8+rax]
movzx	eax, BYTE PTR SYMBOL[rax+8]
movzx	eax, BYTE PTR SYMBOL[rax+rax]
movzx	eax, BYTE PTR SYMBOL[rax]
movzx	eax, BYTE PTR SYMBOL[rbx]
movzx	eax, BYTE PTR SYMBOL[rcx]
movzx	eax, BYTE PTR SYMBOL[rdi]
movzx	eax, BYTE PTR SYMBOL[rdx]
movzx	eax, BYTE PTR SYMBOL[rip+8]
movzx	eax, BYTE PTR SYMBOL[rip]
movzx	eax, BYTE PTR SYMBOL[rsi]
movzx	eax, WORD PTR SYMBOL[rax+8+rax]
movzx	eax, WORD PTR SYMBOL[rax+rax]
movzx	eax, WORD PTR SYMBOL[rcx+rcx]
movzx	eax, WORD PTR SYMBOL[rcx-8]
movzx	eax, WORD PTR SYMBOL[rip]
movzx	ebp, BYTE PTR SYMBOL[rax+8]
movzx	ebp, BYTE PTR SYMBOL[rax]
movzx	ebp, BYTE PTR SYMBOL[rbp]
movzx	ebp, BYTE PTR SYMBOL[rip]
movzx	ebx, BYTE PTR SYMBOL[rbx]
movzx	ebx, BYTE PTR SYMBOL[rip+8]
movzx	ebx, BYTE PTR SYMBOL[rip]
movzx	ecx, BYTE PTR SYMBOL[8+rcx*8]
movzx	ecx, BYTE PTR SYMBOL[r10]
movzx	ecx, BYTE PTR SYMBOL[r8]
movzx	ecx, BYTE PTR SYMBOL[r9]
movzx	ecx, BYTE PTR SYMBOL[rax]
movzx	ecx, BYTE PTR SYMBOL[rbp-8]
movzx	ecx, BYTE PTR SYMBOL[rcx]
movzx	ecx, BYTE PTR SYMBOL[rdi]
movzx	ecx, BYTE PTR SYMBOL[rdx]
movzx	ecx, BYTE PTR SYMBOL[rip+8]
movzx	ecx, BYTE PTR SYMBOL[rip]
movzx	ecx, BYTE PTR SYMBOL[rsi]
movzx	ecx, WORD PTR SYMBOL[r8-8]
movzx	edi, BYTE PTR SYMBOL[rax+8]
movzx	edi, BYTE PTR SYMBOL[rcx]
movzx	edi, BYTE PTR SYMBOL[rdi]
movzx	edi, BYTE PTR SYMBOL[rip+8]
movzx	edi, BYTE PTR SYMBOL[rip]
movzx	edx, BYTE PTR SYMBOL[r13]
movzx	edx, BYTE PTR SYMBOL[rax]
movzx	edx, BYTE PTR SYMBOL[rbp]
movzx	edx, BYTE PTR SYMBOL[rbx+8]
movzx	edx, BYTE PTR SYMBOL[rbx-8]
movzx	edx, BYTE PTR SYMBOL[rcx]
movzx	edx, BYTE PTR SYMBOL[rdi]
movzx	edx, BYTE PTR SYMBOL[rdx+8]
movzx	edx, BYTE PTR SYMBOL[rdx]
movzx	edx, BYTE PTR SYMBOL[rip+8]
movzx	edx, BYTE PTR SYMBOL[rip]
movzx	edx, BYTE PTR SYMBOL[rsi]
movzx	edx, WORD PTR SYMBOL[rax+rax]
movzx	edx, WORD PTR SYMBOL[rax-8]
movzx	edx, WORD PTR SYMBOL[rdx+8+rdx]
movzx	edx, WORD PTR SYMBOL[rdx+rdx]
movzx	edx, WORD PTR SYMBOL[rip]
movzx	esi, BYTE PTR SYMBOL[rax]
movzx	esi, BYTE PTR SYMBOL[rbp+8]
movzx	esi, BYTE PTR SYMBOL[rcx]
movzx	esi, BYTE PTR SYMBOL[rdi]
movzx	esi, BYTE PTR SYMBOL[rdx]
movzx	esi, BYTE PTR SYMBOL[rip+8]
movzx	esi, BYTE PTR SYMBOL[rip]
movzx	esi, BYTE PTR SYMBOL[rsi]
movzx	r10d, BYTE PTR SYMBOL[r10]
movzx	r10d, BYTE PTR SYMBOL[rax]
movzx	r10d, BYTE PTR SYMBOL[rip]
movzx	r10d, BYTE PTR SYMBOL[rsi]
movzx	r11d, BYTE PTR SYMBOL[r11]
movzx	r11d, BYTE PTR SYMBOL[r9]
movzx	r11d, BYTE PTR SYMBOL[rip]
movzx	r12d, BYTE PTR SYMBOL[r12]
movzx	r12d, BYTE PTR SYMBOL[rax+8]
movzx	r12d, BYTE PTR SYMBOL[rax]
movzx	r12d, BYTE PTR SYMBOL[rbp]
movzx	r12d, BYTE PTR SYMBOL[rip]
movzx	r13d, BYTE PTR SYMBOL[r13]
movzx	r13d, BYTE PTR SYMBOL[rax]
movzx	r13d, BYTE PTR SYMBOL[rip+8]
movzx	r13d, BYTE PTR SYMBOL[rip]
movzx	r14d, BYTE PTR SYMBOL[r14]
movzx	r14d, BYTE PTR SYMBOL[rip]
movzx	r15d, BYTE PTR SYMBOL[r15]
movzx	r15d, BYTE PTR SYMBOL[rip+8]
movzx	r15d, BYTE PTR SYMBOL[rip]
movzx	r8d, BYTE PTR SYMBOL[r8]
movzx	r8d, BYTE PTR SYMBOL[rbx]
movzx	r8d, BYTE PTR SYMBOL[rcx]
movzx	r8d, BYTE PTR SYMBOL[rip]
movzx	r9d, BYTE PTR SYMBOL[r8]
movzx	r9d, BYTE PTR SYMBOL[r9]
movzx	r9d, BYTE PTR SYMBOL[rbx]
movzx	r9d, BYTE PTR SYMBOL[rcx]
movzx	r9d, BYTE PTR SYMBOL[rip]
neg	QWORD PTR SYMBOL[rip+8]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r12*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r13*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r14*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r15*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r8*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+r9*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rax*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rbp*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rbx*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rcx*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rdi*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rdx*8]]
notrack	SYMBOL	[QWORD PTR LOCAL[8+rsi*8]]
notrack	SYMBOL	r12
notrack	SYMBOL	r9
notrack	SYMBOL	rax
notrack	SYMBOL	rbp
notrack	SYMBOL	rcx
notrack	SYMBOL	rdi
notrack	SYMBOL	rdx
notrack	SYMBOL	rsi
or	BYTE PTR SYMBOL[rax], 8
or	BYTE PTR SYMBOL[rax], cl
or	BYTE PTR SYMBOL[rbp], al
or	BYTE PTR SYMBOL[rip+8], 8
or	BYTE PTR SYMBOL[rip], al
or	BYTE PTR SYMBOL[rip], bl
or	BYTE PTR SYMBOL[rip], cl
or	BYTE PTR SYMBOL[rip], dl
or	BYTE PTR SYMBOL[rip], sil
or	DWORD PTR SYMBOL[rip], 8
or	DWORD PTR SYMBOL[rip], eax
or	al, BYTE PTR SYMBOL[rip]
or	bl, BYTE PTR SYMBOL[rip]
or	dl, BYTE PTR SYMBOL[rip]
or	eax, DWORD PTR SYMBOL[8+rdx*8]
or	eax, DWORD PTR SYMBOL[rip]
or	ebp, DWORD PTR SYMBOL[8+rax*8]
or	ebx, DWORD PTR SYMBOL[rip]
or	edx, DWORD PTR SYMBOL[rcx+8]
or	r12b, BYTE PTR SYMBOL[rip]
or	r12d, DWORD PTR SYMBOL[8+rax*8]
or	r13b, BYTE PTR SYMBOL[rip]
or	r13d, DWORD PTR SYMBOL[8+rax*8]
or	rax, QWORD PTR SYMBOL[rip]
or	rdx, QWORD PTR SYMBOL[rip]
push	OFFSET FLAT:SYMBOL
push	OFFSET FLAT:SYMBOL+8
push	QWORD PTR SYMBOL[rip+8]
push	QWORD PTR SYMBOL[rip]
rep	SYMBOL
seta	BYTE PTR SYMBOL[rip]
sete	BYTE PTR SYMBOL[rip]
setne	BYTE PTR SYMBOL[rip]
sub	DWORD PTR SYMBOL[rip], 8
sub	QWORD PTR SYMBOL[rip], 8
sub	QWORD PTR SYMBOL[rip], rax
sub	eax, DWORD PTR SYMBOL[r8+8]
sub	eax, DWORD PTR SYMBOL[rip]
sub	ebp, DWORD PTR SYMBOL[rip]
sub	ebx, DWORD PTR SYMBOL[rip]
sub	ecx, DWORD PTR SYMBOL[rip]
sub	edi, DWORD PTR SYMBOL[rip]
sub	r10, QWORD PTR SYMBOL[rip]
sub	r12, QWORD PTR SYMBOL[rip]
sub	r12d, DWORD PTR SYMBOL[rip]
sub	r13, QWORD PTR SYMBOL[rip]
sub	r13d, DWORD PTR SYMBOL[rip]
sub	r14, QWORD PTR SYMBOL[rip]
sub	r14d, DWORD PTR SYMBOL[r10+8]
sub	r14d, DWORD PTR SYMBOL[rip]
sub	r15, QWORD PTR SYMBOL[rip]
sub	r15d, DWORD PTR SYMBOL[rip]
sub	r8d, DWORD PTR SYMBOL[rip]
sub	r9, QWORD PTR SYMBOL[rip]
sub	rax, OFFSET FLAT:SYMBOL
sub	rax, QWORD PTR SYMBOL[rip+8]
sub	rax, QWORD PTR SYMBOL[rip]
sub	rbp, QWORD PTR SYMBOL[rip]
sub	rbx, OFFSET FLAT:SYMBOL
sub	rbx, QWORD PTR SYMBOL[rip]
sub	rcx, QWORD PTR SYMBOL[rip+8]
sub	rcx, QWORD PTR SYMBOL[rip]
sub	rdi, QWORD PTR SYMBOL[rip]
sub	rdx, OFFSET FLAT:SYMBOL
sub	rdx, QWORD PTR SYMBOL[rip]
sub	rsi, QWORD PTR SYMBOL[rip]
test	BYTE PTR SYMBOL[rip+8], 8
test	BYTE PTR SYMBOL[rip], 8
test	DWORD PTR SYMBOL[rip], -8
test	DWORD PTR SYMBOL[rip], 8
xor	ebx, DWORD PTR SYMBOL[8+rax*8]
xor	ebx, DWORD PTR SYMBOL[8+rcx*8]
xor	ebx, DWORD PTR SYMBOL[8+rdx*8]
xor	ebx, DWORD PTR SYMBOL[8+rsi*8]
xor	r12b, BYTE PTR SYMBOL[rip]
xor	r13b, BYTE PTR SYMBOL[rip]
xor	rax, QWORD PTR SYMBOL[8+rbx*8]
xor	rax, QWORD PTR SYMBOL[rip]
xor	rbx, QWORD PTR SYMBOL[8+r10*8]
xor	rbx, QWORD PTR SYMBOL[8+r8*8]
xor	rbx, QWORD PTR SYMBOL[8+r9*8]
xor	rbx, QWORD PTR SYMBOL[8+rax*8]
xor	rbx, QWORD PTR SYMBOL[8+rdi*8]
xor	rcx, QWORD PTR SYMBOL[8+r15*8]
xor	rcx, QWORD PTR SYMBOL[8+rbx*8]
xor	rdi, QWORD PTR SYMBOL[8+rcx*8]
xor	rdx, QWORD PTR SYMBOL[8+rax*8]
xor	rdx, QWORD PTR SYMBOL[8+rbx*8]
xor	rdx, QWORD PTR SYMBOL[8+rsi*8]
xor	rdx, QWORD PTR SYMBOL[rip+8]
