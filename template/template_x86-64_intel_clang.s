add	dword ptr [rip + SYMBOL], 8
add	dword ptr [rip + SYMBOL], eax
add	dword ptr [rip + SYMBOL], ebx
add	eax, dword ptr [8*rdx + SYMBOL+8]
add	eax, dword ptr [SYMBOL+8]
add	eax, dword ptr [SYMBOL]
add	eax, dword ptr [rip + SYMBOL+8]
add	eax, dword ptr [rip + SYMBOL]
add	ecx, dword ptr [SYMBOL+8]
add	ecx, dword ptr [SYMBOL]
add	ecx, dword ptr [rip + SYMBOL+8]
add	ecx, dword ptr [rip + SYMBOL]
add	edi, dword ptr [rip + SYMBOL]
add	edx, dword ptr [SYMBOL]
add	edx, dword ptr [rip + SYMBOL]
add	qword ptr [rip + SYMBOL+8], r8
add	qword ptr [rip + SYMBOL+8], r9
add	qword ptr [rip + SYMBOL+8], rdi
add	qword ptr [rip + SYMBOL+8], rsi
add	qword ptr [rip + SYMBOL], 8
add	qword ptr [rip + SYMBOL], r12
add	qword ptr [rip + SYMBOL], r13
add	qword ptr [rip + SYMBOL], r14
add	qword ptr [rip + SYMBOL], r15
add	qword ptr [rip + SYMBOL], r8
add	qword ptr [rip + SYMBOL], r9
add	qword ptr [rip + SYMBOL], rax
add	qword ptr [rip + SYMBOL], rbp
add	qword ptr [rip + SYMBOL], rbx
add	qword ptr [rip + SYMBOL], rcx
add	qword ptr [rip + SYMBOL], rdi
add	qword ptr [rip + SYMBOL], rdx
add	r11d, dword ptr [rip + SYMBOL]
add	r12, qword ptr [rip + SYMBOL]
add	r12d, dword ptr [rip + SYMBOL]
add	r13, qword ptr [rip + SYMBOL]
add	r14, qword ptr [rip + SYMBOL]
add	r15, qword ptr [rip + SYMBOL]
add	r15d, dword ptr [rip + SYMBOL]
add	r8d, dword ptr [rip + SYMBOL]
add	r9, offset SYMBOL
add	r9, offset SYMBOL+8
add	rax, offset SYMBOL
add	rax, offset SYMBOL+8
add	rax, qword ptr [SYMBOL+8]
add	rax, qword ptr [SYMBOL]
add	rax, qword ptr [rip + SYMBOL+8]
add	rax, qword ptr [rip + SYMBOL]
add	rbx, qword ptr [rip + SYMBOL]
add	rcx, offset SYMBOL
add	rcx, qword ptr [SYMBOL]
add	rcx, qword ptr [rip + SYMBOL]
add	rdi, qword ptr [SYMBOL]
add	rdi, qword ptr [rip + SYMBOL]
add	rdx, offset SYMBOL
add	rdx, qword ptr [SYMBOL]
add	rdx, qword ptr [rip + SYMBOL]
add	rsi, qword ptr [rip + SYMBOL]
and	al, byte ptr [rip + SYMBOL]
and	bl, byte ptr [rip + SYMBOL]
and	byte ptr [rip + SYMBOL+8], -8
and	byte ptr [rip + SYMBOL], -8
and	cl, byte ptr [rip + SYMBOL]
and	dil, byte ptr [rip + SYMBOL]
and	dl, byte ptr [rip + SYMBOL]
and	eax, dword ptr [rip + SYMBOL+8]
and	ebp, dword ptr [rip + SYMBOL+8]
and	ebx, dword ptr [rip + SYMBOL+8]
and	edi, dword ptr [rip + SYMBOL+8]
and	r12b, byte ptr [rip + SYMBOL]
and	r14b, byte ptr [rip + SYMBOL]
and	rax, qword ptr [rip + SYMBOL+8]
and	rcx, qword ptr [rip + SYMBOL+8]
and	sil, byte ptr [rip + SYMBOL]
bt	dword ptr [rip + SYMBOL], 8
call	SYMBOL
call	qword ptr [8*rax + SYMBOL]
call	qword ptr [SYMBOL]
call	qword ptr [rip + SYMBOL]
cmp	al, byte ptr [rip + SYMBOL+8]
cmp	al, byte ptr [rip + SYMBOL]
cmp	bpl, byte ptr [rax + SYMBOL+8]
cmp	byte ptr [8*r15 + SYMBOL+8], 8
cmp	byte ptr [8*rax + SYMBOL+8], 8
cmp	byte ptr [8*rax + SYMBOL], 8
cmp	byte ptr [8*rdx + SYMBOL+8], 8
cmp	byte ptr [SYMBOL+8], 8
cmp	byte ptr [SYMBOL], 8
cmp	byte ptr [r10 + SYMBOL], r9b
cmp	byte ptr [r11 + SYMBOL], r10b
cmp	byte ptr [r12 + SYMBOL-8], bpl
cmp	byte ptr [r14 + 8*r14 + SYMBOL+8], 8
cmp	byte ptr [r14 + SYMBOL+8], 8
cmp	byte ptr [r14 + SYMBOL], 8
cmp	byte ptr [r14 + SYMBOL], bl
cmp	byte ptr [r14 + SYMBOL], r10b
cmp	byte ptr [r15 + SYMBOL], 8
cmp	byte ptr [r8 + SYMBOL], 8
cmp	byte ptr [r9 + SYMBOL], 8
cmp	byte ptr [rax + 8*rax + SYMBOL+8], 8
cmp	byte ptr [rax + SYMBOL], 8
cmp	byte ptr [rbx + SYMBOL], r11b
cmp	byte ptr [rcx + SYMBOL], 8
cmp	byte ptr [rdi + SYMBOL], 8
cmp	byte ptr [rdx + SYMBOL], 8
cmp	byte ptr [rip + SYMBOL+8], 8
cmp	byte ptr [rip + SYMBOL], 8
cmp	byte ptr [rsi + SYMBOL], 8
cmp	byte ptr [rsi + SYMBOL], dl
cmp	cl, byte ptr [rip + SYMBOL]
cmp	dword ptr [8*rax + SYMBOL], 8
cmp	dword ptr [8*rcx + SYMBOL], 8
cmp	dword ptr [SYMBOL+8], 8
cmp	dword ptr [SYMBOL], -8
cmp	dword ptr [SYMBOL], 8
cmp	dword ptr [rax + SYMBOL], ebp
cmp	dword ptr [rcx + SYMBOL+8], eax
cmp	dword ptr [rcx + SYMBOL+8], edi
cmp	dword ptr [rip + SYMBOL+8], 8
cmp	dword ptr [rip + SYMBOL+8], edi
cmp	dword ptr [rip + SYMBOL], -8
cmp	dword ptr [rip + SYMBOL], 8
cmp	dword ptr [rip + SYMBOL], eax
cmp	dword ptr [rip + SYMBOL], ebp
cmp	dword ptr [rip + SYMBOL], ebx
cmp	dword ptr [rip + SYMBOL], ecx
cmp	dword ptr [rip + SYMBOL], edi
cmp	dword ptr [rip + SYMBOL], esi
cmp	dword ptr [rip + SYMBOL], r12d
cmp	dword ptr [rip + SYMBOL], r13d
cmp	dword ptr [rip + SYMBOL], r14d
cmp	dword ptr [rip + SYMBOL], r15d
cmp	eax, dword ptr [SYMBOL]
cmp	eax, dword ptr [rip + SYMBOL+8]
cmp	eax, dword ptr [rip + SYMBOL]
cmp	ebp, dword ptr [rip + SYMBOL]
cmp	ecx, dword ptr [SYMBOL]
cmp	ecx, dword ptr [rip + SYMBOL]
cmp	edi, dword ptr [rip + SYMBOL]
cmp	edx, dword ptr [rip + SYMBOL]
cmp	qword ptr [8*rax + SYMBOL], 8
cmp	qword ptr [SYMBOL+8], 8
cmp	qword ptr [SYMBOL], -8
cmp	qword ptr [SYMBOL], 8
cmp	qword ptr [SYMBOL], rax
cmp	qword ptr [SYMBOL], rcx
cmp	qword ptr [rax + 8], offset SYMBOL
cmp	qword ptr [rax + SYMBOL+8], 8
cmp	qword ptr [rbx + 8], offset SYMBOL
cmp	qword ptr [rdi + 8], offset SYMBOL
cmp	qword ptr [rip + SYMBOL+8], 8
cmp	qword ptr [rip + SYMBOL+8], r12
cmp	qword ptr [rip + SYMBOL+8], r13
cmp	qword ptr [rip + SYMBOL+8], r15
cmp	qword ptr [rip + SYMBOL+8], r9
cmp	qword ptr [rip + SYMBOL+8], rax
cmp	qword ptr [rip + SYMBOL+8], rbp
cmp	qword ptr [rip + SYMBOL+8], rbx
cmp	qword ptr [rip + SYMBOL], -8
cmp	qword ptr [rip + SYMBOL], 8
cmp	qword ptr [rip + SYMBOL], offset SYMBOL
cmp	qword ptr [rip + SYMBOL], offset SYMBOL+8
cmp	qword ptr [rip + SYMBOL], r12
cmp	qword ptr [rip + SYMBOL], r13
cmp	qword ptr [rip + SYMBOL], r14
cmp	qword ptr [rip + SYMBOL], r15
cmp	qword ptr [rip + SYMBOL], rax
cmp	qword ptr [rip + SYMBOL], rbx
cmp	qword ptr [rip + SYMBOL], rcx
cmp	qword ptr [rip + SYMBOL], rdx
cmp	qword ptr [rsp + 8], offset SYMBOL
cmp	r10b, byte ptr [rip + SYMBOL]
cmp	r11, offset SYMBOL
cmp	r12, offset SYMBOL
cmp	r12, offset SYMBOL+8
cmp	r12, qword ptr [rip + SYMBOL]
cmp	r12b, byte ptr [rax + SYMBOL+8]
cmp	r12b, byte ptr [rax + rax + SYMBOL+8]
cmp	r12b, byte ptr [rax + rax + SYMBOL-8]
cmp	r12d, dword ptr [rip + SYMBOL]
cmp	r13, offset SYMBOL
cmp	r13, offset SYMBOL+8
cmp	r13, qword ptr [rip + SYMBOL]
cmp	r13d, dword ptr [rip + SYMBOL]
cmp	r14, offset SYMBOL
cmp	r14, offset SYMBOL+8
cmp	r14, qword ptr [rip + SYMBOL]
cmp	r14b, byte ptr [rax + SYMBOL+8]
cmp	r14b, byte ptr [rax + rax + SYMBOL-8]
cmp	r14b, byte ptr [rax + rax + SYMBOL]
cmp	r14d, dword ptr [rip + SYMBOL]
cmp	r15, qword ptr [8*r12 + SYMBOL]
cmp	r15, qword ptr [rip + SYMBOL]
cmp	r15d, dword ptr [rip + SYMBOL]
cmp	r8, qword ptr [rip + SYMBOL]
cmp	r8b, byte ptr [rip + SYMBOL]
cmp	rax, offset SYMBOL
cmp	rax, offset SYMBOL+8
cmp	rax, qword ptr [8*rcx + SYMBOL]
cmp	rax, qword ptr [SYMBOL+8]
cmp	rax, qword ptr [SYMBOL]
cmp	rax, qword ptr [rbx + SYMBOL+8]
cmp	rax, qword ptr [rip + SYMBOL+8]
cmp	rax, qword ptr [rip + SYMBOL]
cmp	rbp, offset SYMBOL
cmp	rbp, qword ptr [rip + SYMBOL]
cmp	rbx, offset SYMBOL
cmp	rbx, qword ptr [8*r12 + SYMBOL]
cmp	rbx, qword ptr [rip + SYMBOL]
cmp	rcx, offset SYMBOL
cmp	rcx, offset SYMBOL+8
cmp	rcx, qword ptr [SYMBOL+8]
cmp	rcx, qword ptr [SYMBOL]
cmp	rcx, qword ptr [rbx + SYMBOL+8]
cmp	rcx, qword ptr [rip + SYMBOL+8]
cmp	rcx, qword ptr [rip + SYMBOL]
cmp	rdi, offset SYMBOL
cmp	rdi, qword ptr [rip + SYMBOL]
cmp	rdx, qword ptr [rip + SYMBOL]
cmp	rsi, offset SYMBOL+8
cmp	rsi, qword ptr [rip + SYMBOL+8]
cmp	rsi, qword ptr [rip + SYMBOL]
cmp	sil, byte ptr [rip + SYMBOL]
dec	dword ptr [rip + SYMBOL]
dec	qword ptr [rip + SYMBOL]
div	qword ptr [SYMBOL]
div	qword ptr [rip + SYMBOL]
idiv	dword ptr [SYMBOL]
idiv	dword ptr [rip + SYMBOL]
idiv	qword ptr [SYMBOL]
idiv	qword ptr [rip + SYMBOL]
imul	eax, dword ptr [SYMBOL], 8
imul	eax, dword ptr [rip + SYMBOL]
imul	eax, dword ptr [rip + SYMBOL], 8
imul	ebx, dword ptr [rip + SYMBOL]
imul	ecx, dword ptr [SYMBOL]
imul	ecx, dword ptr [rip + SYMBOL]
imul	r14, qword ptr [rip + SYMBOL], 8
imul	rax, qword ptr [SYMBOL]
imul	rax, qword ptr [SYMBOL], 8
imul	rax, qword ptr [rip + SYMBOL]
imul	rax, qword ptr [rip + SYMBOL], 8
imul	rcx, qword ptr [SYMBOL]
imul	rcx, qword ptr [SYMBOL], 8
imul	rcx, qword ptr [rip + SYMBOL]
imul	rcx, qword ptr [rip + SYMBOL], 8
imul	rdi, qword ptr [SYMBOL], 8
imul	rdi, qword ptr [rip + SYMBOL], 8
inc	dword ptr [rip + SYMBOL]
inc	qword ptr [8*r12 + SYMBOL]
inc	qword ptr [rip + SYMBOL+8]
inc	qword ptr [rip + SYMBOL]
jbe	SYMBOL
je	SYMBOL
jl	SYMBOL
jmp	SYMBOL
jne	SYMBOL
jns	SYMBOL
lea	r10, [r10 + SYMBOL-8]
lea	r10, [r9 + SYMBOL-8]
lea	r10, [rip + SYMBOL]
lea	r11, [r10 + SYMBOL-8]
lea	r11, [rip + SYMBOL]
lea	r12, [8*rcx + SYMBOL]
lea	r12, [rax + SYMBOL]
lea	r12, [rip + SYMBOL+8]
lea	r12, [rip + SYMBOL]
lea	r13, [rip + SYMBOL+8]
lea	r13, [rip + SYMBOL]
lea	r14, [8*r15 + SYMBOL+8]
lea	r14, [rbp + SYMBOL]
lea	r14, [rip + SYMBOL+8]
lea	r14, [rip + SYMBOL]
lea	r15, [r14 + SYMBOL]
lea	r15, [rip + SYMBOL+8]
lea	r15, [rip + SYMBOL]
lea	r8, [rip + SYMBOL+8]
lea	r8, [rip + SYMBOL]
lea	r9, [8*r9 + SYMBOL]
lea	r9, [8*rcx + SYMBOL]
lea	r9, [rdi + SYMBOL-8]
lea	r9, [rip + SYMBOL]
lea	rax, [8*rax + SYMBOL+8]
lea	rax, [8*rdx + SYMBOL+8]
lea	rax, [rax + SYMBOL]
lea	rax, [rip + SYMBOL+8]
lea	rax, [rip + SYMBOL]
lea	rax, [rsi + SYMBOL]
lea	rbp, [rip + SYMBOL+8]
lea	rbp, [rip + SYMBOL]
lea	rbx, [rip + SYMBOL+8]
lea	rbx, [rip + SYMBOL]
lea	rcx, [8*r15 + SYMBOL]
lea	rcx, [rax + SYMBOL]
lea	rcx, [rcx + SYMBOL]
lea	rcx, [rip + SYMBOL+8]
lea	rcx, [rip + SYMBOL]
lea	rcx, [rsi + SYMBOL]
lea	rdi, [r12 + SYMBOL]
lea	rdi, [r14 + SYMBOL+8]
lea	rdi, [r14 + SYMBOL]
lea	rdi, [r15 + SYMBOL+8]
lea	rdi, [r15 + SYMBOL]
lea	rdi, [rax + SYMBOL]
lea	rdi, [rbp + SYMBOL+8]
lea	rdi, [rbp + SYMBOL]
lea	rdi, [rbx + SYMBOL]
lea	rdi, [rcx + SYMBOL]
lea	rdi, [rdx + SYMBOL-8]
lea	rdi, [rdx + SYMBOL]
lea	rdi, [rip + SYMBOL+8]
lea	rdi, [rip + SYMBOL]
lea	rdx, [8*r15 + SYMBOL]
lea	rdx, [8*rax + SYMBOL]
lea	rdx, [rax + SYMBOL]
lea	rdx, [rip + SYMBOL+8]
lea	rdx, [rip + SYMBOL]
lea	rsi, [8*r13 + SYMBOL]
lea	rsi, [8*rax + SYMBOL+8]
lea	rsi, [8*rdx + SYMBOL]
lea	rsi, [rax + SYMBOL+8]
lea	rsi, [rip + SYMBOL+8]
lea	rsi, [rip + SYMBOL]
mov	al, byte ptr [8*rax + SYMBOL]
mov	al, byte ptr [SYMBOL+8]
mov	al, byte ptr [SYMBOL]
mov	al, byte ptr [r9 + SYMBOL]
mov	al, byte ptr [rax + SYMBOL]
mov	al, byte ptr [rbx + rcx + SYMBOL]
mov	al, byte ptr [rip + SYMBOL+8]
mov	al, byte ptr [rip + SYMBOL]
mov	bl, byte ptr [r11 + SYMBOL]
mov	bl, byte ptr [rbx + r14 + SYMBOL]
mov	bl, byte ptr [rip + SYMBOL]
mov	bpl, byte ptr [r12 + SYMBOL]
mov	bpl, byte ptr [r12 + r13 + SYMBOL]
mov	bpl, byte ptr [r13 + SYMBOL]
mov	bpl, byte ptr [r13 + rbp + SYMBOL]
mov	bpl, byte ptr [rip + SYMBOL]
mov	byte ptr [8*rax + SYMBOL], 8
mov	byte ptr [8*rax + SYMBOL], cl
mov	byte ptr [SYMBOL+8], 8
mov	byte ptr [SYMBOL+8], al
mov	byte ptr [SYMBOL], 8
mov	byte ptr [SYMBOL], al
mov	byte ptr [r13 + SYMBOL], al
mov	byte ptr [r13 + SYMBOL], r13b
mov	byte ptr [r14 + SYMBOL+8], al
mov	byte ptr [r14 + SYMBOL], 8
mov	byte ptr [r14 + SYMBOL], al
mov	byte ptr [r14 + SYMBOL], r14b
mov	byte ptr [r15 + SYMBOL], cl
mov	byte ptr [r15 + SYMBOL], r13b
mov	byte ptr [r8 + SYMBOL], 8
mov	byte ptr [rax + SYMBOL+8], cl
mov	byte ptr [rax + SYMBOL+8], dl
mov	byte ptr [rax + SYMBOL], 8
mov	byte ptr [rax + SYMBOL], al
mov	byte ptr [rax + SYMBOL], cl
mov	byte ptr [rax + SYMBOL], dl
mov	byte ptr [rax + rdx + SYMBOL], sil
mov	byte ptr [rbx + SYMBOL+8], al
mov	byte ptr [rbx + SYMBOL+8], cl
mov	byte ptr [rbx + SYMBOL+8], dl
mov	byte ptr [rbx + SYMBOL], 8
mov	byte ptr [rbx + SYMBOL], al
mov	byte ptr [rbx + SYMBOL], cl
mov	byte ptr [rbx + SYMBOL], dl
mov	byte ptr [rbx + SYMBOL], sil
mov	byte ptr [rcx + SYMBOL+8], dl
mov	byte ptr [rcx + SYMBOL], 8
mov	byte ptr [rcx + SYMBOL], al
mov	byte ptr [rcx + SYMBOL], dl
mov	byte ptr [rdx + SYMBOL], 8
mov	byte ptr [rip + SYMBOL+8], 8
mov	byte ptr [rip + SYMBOL+8], al
mov	byte ptr [rip + SYMBOL+8], bpl
mov	byte ptr [rip + SYMBOL+8], cl
mov	byte ptr [rip + SYMBOL+8], dil
mov	byte ptr [rip + SYMBOL+8], r14b
mov	byte ptr [rip + SYMBOL+8], r15b
mov	byte ptr [rip + SYMBOL+8], sil
mov	byte ptr [rip + SYMBOL], 8
mov	byte ptr [rip + SYMBOL], al
mov	byte ptr [rip + SYMBOL], bl
mov	byte ptr [rip + SYMBOL], bpl
mov	byte ptr [rip + SYMBOL], cl
mov	byte ptr [rip + SYMBOL], dil
mov	byte ptr [rip + SYMBOL], dl
mov	byte ptr [rip + SYMBOL], r12b
mov	byte ptr [rip + SYMBOL], r13b
mov	byte ptr [rip + SYMBOL], r14b
mov	byte ptr [rip + SYMBOL], r15b
mov	byte ptr [rip + SYMBOL], r8b
mov	byte ptr [rip + SYMBOL], sil
mov	cl, byte ptr [8*rax + SYMBOL]
mov	cl, byte ptr [SYMBOL+8]
mov	cl, byte ptr [SYMBOL]
mov	cl, byte ptr [rax + SYMBOL+8]
mov	cl, byte ptr [rax + SYMBOL]
mov	cl, byte ptr [rcx + SYMBOL]
mov	cl, byte ptr [rip + SYMBOL+8]
mov	cl, byte ptr [rip + SYMBOL]
mov	dil, byte ptr [SYMBOL]
mov	dil, byte ptr [rdi + SYMBOL]
mov	dil, byte ptr [rip + SYMBOL]
mov	dl, byte ptr [8*rax + SYMBOL]
mov	dl, byte ptr [8*rdx + SYMBOL]
mov	dl, byte ptr [SYMBOL]
mov	dl, byte ptr [rdx + SYMBOL]
mov	dl, byte ptr [rip + SYMBOL+8]
mov	dl, byte ptr [rip + SYMBOL]
mov	dword ptr [8*rax + SYMBOL], 8
mov	dword ptr [SYMBOL+8], 8
mov	dword ptr [SYMBOL+8], eax
mov	dword ptr [SYMBOL], -8
mov	dword ptr [SYMBOL], 8
mov	dword ptr [SYMBOL], eax
mov	dword ptr [SYMBOL], ecx
mov	dword ptr [SYMBOL], edx
mov	dword ptr [SYMBOL], esi
mov	dword ptr [rcx + SYMBOL+8], r13d
mov	dword ptr [rcx + SYMBOL+8], r15d
mov	dword ptr [rip + SYMBOL+8], 8
mov	dword ptr [rip + SYMBOL+8], eax
mov	dword ptr [rip + SYMBOL+8], ecx
mov	dword ptr [rip + SYMBOL], -8
mov	dword ptr [rip + SYMBOL], 8
mov	dword ptr [rip + SYMBOL], eax
mov	dword ptr [rip + SYMBOL], ebp
mov	dword ptr [rip + SYMBOL], ebx
mov	dword ptr [rip + SYMBOL], ecx
mov	dword ptr [rip + SYMBOL], edi
mov	dword ptr [rip + SYMBOL], edx
mov	dword ptr [rip + SYMBOL], esi
mov	dword ptr [rip + SYMBOL], r12d
mov	dword ptr [rip + SYMBOL], r13d
mov	dword ptr [rip + SYMBOL], r14d
mov	dword ptr [rip + SYMBOL], r15d
mov	dword ptr [rip + SYMBOL], r8d
mov	dword ptr [rip + SYMBOL], r9d
mov	eax, dword ptr [8*rax + SYMBOL+8]
mov	eax, dword ptr [8*rax + SYMBOL]
mov	eax, dword ptr [8*rcx + SYMBOL]
mov	eax, dword ptr [8*rdx + SYMBOL+8]
mov	eax, dword ptr [SYMBOL+8]
mov	eax, dword ptr [SYMBOL]
mov	eax, dword ptr [r14 + SYMBOL+8]
mov	eax, dword ptr [r15 + SYMBOL+8]
mov	eax, dword ptr [r15 + SYMBOL]
mov	eax, dword ptr [r8 + SYMBOL+8]
mov	eax, dword ptr [rip + SYMBOL+8]
mov	eax, dword ptr [rip + SYMBOL]
mov	eax, dword ptr [rsi + SYMBOL+8]
mov	eax, offset SYMBOL
mov	eax, offset SYMBOL+8
mov	ebp, dword ptr [8*r10 + SYMBOL+8]
mov	ebp, dword ptr [8*rax + SYMBOL]
mov	ebp, dword ptr [8*rcx + SYMBOL]
mov	ebp, dword ptr [r14 + SYMBOL+8]
mov	ebp, dword ptr [r14 + SYMBOL]
mov	ebp, dword ptr [rdi + SYMBOL+8]
mov	ebp, dword ptr [rip + SYMBOL]
mov	ebp, dword ptr [rsi + SYMBOL+8]
mov	ebp, offset SYMBOL
mov	ebx, dword ptr [8*rax + SYMBOL]
mov	ebx, dword ptr [r14 + SYMBOL+8]
mov	ebx, dword ptr [rip + SYMBOL+8]
mov	ebx, dword ptr [rip + SYMBOL]
mov	ebx, dword ptr [rsi + SYMBOL+8]
mov	ebx, offset SYMBOL
mov	ebx, offset SYMBOL+8
mov	ecx, dword ptr [8*rax + SYMBOL]
mov	ecx, dword ptr [8*rcx + SYMBOL]
mov	ecx, dword ptr [SYMBOL+8]
mov	ecx, dword ptr [SYMBOL]
mov	ecx, dword ptr [r12 + SYMBOL+8]
mov	ecx, dword ptr [r15 + SYMBOL+8]
mov	ecx, dword ptr [rbx + SYMBOL+8]
mov	ecx, dword ptr [rip + SYMBOL+8]
mov	ecx, dword ptr [rip + SYMBOL]
mov	ecx, offset SYMBOL
mov	ecx, offset SYMBOL+8
mov	edi, dword ptr [8*rax + SYMBOL]
mov	edi, dword ptr [8*rdi + SYMBOL+8]
mov	edi, dword ptr [SYMBOL+8]
mov	edi, dword ptr [SYMBOL]
mov	edi, dword ptr [rip + SYMBOL+8]
mov	edi, dword ptr [rip + SYMBOL]
mov	edi, offset SYMBOL
mov	edi, offset SYMBOL+8
mov	edx, dword ptr [8*rax + SYMBOL]
mov	edx, dword ptr [8*rcx + SYMBOL]
mov	edx, dword ptr [SYMBOL+8]
mov	edx, dword ptr [SYMBOL]
mov	edx, dword ptr [r12 + SYMBOL+8]
mov	edx, dword ptr [r15 + SYMBOL+8]
mov	edx, dword ptr [rax + SYMBOL+8]
mov	edx, dword ptr [rbx + SYMBOL+8]
mov	edx, dword ptr [rip + SYMBOL+8]
mov	edx, dword ptr [rip + SYMBOL]
mov	edx, offset SYMBOL
mov	edx, offset SYMBOL+8
mov	esi, dword ptr [8*rax + SYMBOL]
mov	esi, dword ptr [SYMBOL]
mov	esi, dword ptr [rip + SYMBOL]
mov	esi, offset SYMBOL
mov	esi, offset SYMBOL+8
mov	qword ptr [8*r12 + SYMBOL], r15
mov	qword ptr [8*r12 + SYMBOL], rbx
mov	qword ptr [8*r14 + SYMBOL], rbx
mov	qword ptr [8*rax + SYMBOL], r12
mov	qword ptr [8*rax + SYMBOL], rbx
mov	qword ptr [8*rax + SYMBOL], rcx
mov	qword ptr [8*rdx + SYMBOL+8], rbx
mov	qword ptr [SYMBOL+8], -8
mov	qword ptr [SYMBOL+8], 8
mov	qword ptr [SYMBOL+8], rax
mov	qword ptr [SYMBOL+8], rcx
mov	qword ptr [SYMBOL], -8
mov	qword ptr [SYMBOL], 8
mov	qword ptr [SYMBOL], rax
mov	qword ptr [SYMBOL], rcx
mov	qword ptr [SYMBOL], rdi
mov	qword ptr [SYMBOL], rdx
mov	qword ptr [SYMBOL], rsi
mov	qword ptr [r12 + 8], offset SYMBOL
mov	qword ptr [r13 + 8*r13 + SYMBOL+8], offset LOCAL
mov	qword ptr [r13 + 8], offset SYMBOL
mov	qword ptr [r14 + 8*r14 + SYMBOL+8], offset LOCAL
mov	qword ptr [r14 + 8], offset SYMBOL
mov	qword ptr [r14 + r13 + 8], offset SYMBOL
mov	qword ptr [r14 + r15 + 8], offset SYMBOL
mov	qword ptr [r14 - 8], offset SYMBOL
mov	qword ptr [r15 + 8], offset SYMBOL
mov	qword ptr [r8 + 8], offset SYMBOL
mov	qword ptr [rax + 8*rcx], offset SYMBOL
mov	qword ptr [rax + 8*rcx], offset SYMBOL+8
mov	qword ptr [rax + 8*rdx], offset SYMBOL+8
mov	qword ptr [rax + 8*rsi], offset SYMBOL+8
mov	qword ptr [rax + 8], offset SYMBOL
mov	qword ptr [rax + SYMBOL+8], rdx
mov	qword ptr [rax - 8], offset SYMBOL
mov	qword ptr [rax], offset SYMBOL
mov	qword ptr [rbp + 8], offset SYMBOL
mov	qword ptr [rbx + 8], offset SYMBOL
mov	qword ptr [rbx + r14 + 8], offset SYMBOL
mov	qword ptr [rcx + 8], offset SYMBOL
mov	qword ptr [rcx + SYMBOL], rax
mov	qword ptr [rcx - 8], offset SYMBOL
mov	qword ptr [rdi + 8*rax], offset SYMBOL+8
mov	qword ptr [rdi + 8*rcx], offset SYMBOL
mov	qword ptr [rdi + 8*rcx], offset SYMBOL+8
mov	qword ptr [rdi + 8*rdx], offset SYMBOL+8
mov	qword ptr [rdi + 8], offset SYMBOL
mov	qword ptr [rdx + 8], offset SYMBOL
mov	qword ptr [rip + SYMBOL+8], -8
mov	qword ptr [rip + SYMBOL+8], 8
mov	qword ptr [rip + SYMBOL+8], offset LOCAL
mov	qword ptr [rip + SYMBOL+8], offset SYMBOL
mov	qword ptr [rip + SYMBOL+8], offset SYMBOL+8
mov	qword ptr [rip + SYMBOL+8], r12
mov	qword ptr [rip + SYMBOL+8], r13
mov	qword ptr [rip + SYMBOL+8], r14
mov	qword ptr [rip + SYMBOL+8], r15
mov	qword ptr [rip + SYMBOL+8], r9
mov	qword ptr [rip + SYMBOL+8], rax
mov	qword ptr [rip + SYMBOL+8], rbp
mov	qword ptr [rip + SYMBOL+8], rbx
mov	qword ptr [rip + SYMBOL+8], rcx
mov	qword ptr [rip + SYMBOL+8], rdx
mov	qword ptr [rip + SYMBOL+8], rsi
mov	qword ptr [rip + SYMBOL], -8
mov	qword ptr [rip + SYMBOL], 8
mov	qword ptr [rip + SYMBOL], offset LOCAL
mov	qword ptr [rip + SYMBOL], offset SYMBOL
mov	qword ptr [rip + SYMBOL], r10
mov	qword ptr [rip + SYMBOL], r11
mov	qword ptr [rip + SYMBOL], r12
mov	qword ptr [rip + SYMBOL], r13
mov	qword ptr [rip + SYMBOL], r14
mov	qword ptr [rip + SYMBOL], r15
mov	qword ptr [rip + SYMBOL], r8
mov	qword ptr [rip + SYMBOL], r9
mov	qword ptr [rip + SYMBOL], rax
mov	qword ptr [rip + SYMBOL], rbp
mov	qword ptr [rip + SYMBOL], rbx
mov	qword ptr [rip + SYMBOL], rcx
mov	qword ptr [rip + SYMBOL], rdi
mov	qword ptr [rip + SYMBOL], rdx
mov	qword ptr [rip + SYMBOL], rsi
mov	qword ptr [rsi + 8], offset SYMBOL
mov	qword ptr [rsi], offset SYMBOL
mov	qword ptr [rsp + 8], offset SYMBOL
mov	qword ptr [rsp], offset SYMBOL
mov	r10, qword ptr [SYMBOL]
mov	r10, qword ptr [r8 + SYMBOL]
mov	r10, qword ptr [rip + SYMBOL]
mov	r10b, byte ptr [SYMBOL]
mov	r10b, byte ptr [rax + SYMBOL]
mov	r10b, byte ptr [rip + SYMBOL]
mov	r10d, dword ptr [SYMBOL]
mov	r10d, dword ptr [rip + SYMBOL]
mov	r11, qword ptr [SYMBOL]
mov	r11, qword ptr [rip + SYMBOL]
mov	r11b, byte ptr [r11 + SYMBOL]
mov	r11b, byte ptr [r11 + rbx + SYMBOL]
mov	r11b, byte ptr [rax + SYMBOL]
mov	r11b, byte ptr [rip + SYMBOL]
mov	r11d, dword ptr [SYMBOL]
mov	r11d, dword ptr [rip + SYMBOL]
mov	r11d, offset SYMBOL
mov	r12, qword ptr [8*rax + SYMBOL+8]
mov	r12, qword ptr [rcx + SYMBOL+8]
mov	r12, qword ptr [rip + SYMBOL+8]
mov	r12, qword ptr [rip + SYMBOL]
mov	r12b, byte ptr [r12 + SYMBOL]
mov	r12b, byte ptr [r14 + SYMBOL+8]
mov	r12b, byte ptr [rip + SYMBOL]
mov	r12d, dword ptr [8*rax + SYMBOL]
mov	r12d, dword ptr [r14 + SYMBOL+8]
mov	r12d, dword ptr [rbx + SYMBOL+8]
mov	r12d, dword ptr [rip + SYMBOL]
mov	r12d, offset SYMBOL
mov	r12d, offset SYMBOL+8
mov	r13, qword ptr [8*r12 + SYMBOL]
mov	r13, qword ptr [r12 + SYMBOL+8]
mov	r13, qword ptr [rip + SYMBOL+8]
mov	r13, qword ptr [rip + SYMBOL]
mov	r13b, byte ptr [rip + SYMBOL]
mov	r13d, dword ptr [8*rax + SYMBOL]
mov	r13d, dword ptr [r14 + SYMBOL+8]
mov	r13d, dword ptr [rip + SYMBOL]
mov	r13d, offset SYMBOL
mov	r13d, offset SYMBOL+8
mov	r14, qword ptr [8*rax + SYMBOL]
mov	r14, qword ptr [r15 + SYMBOL+8]
mov	r14, qword ptr [rax + SYMBOL]
mov	r14, qword ptr [rbx + SYMBOL+8]
mov	r14, qword ptr [rip + SYMBOL+8]
mov	r14, qword ptr [rip + SYMBOL]
mov	r14b, byte ptr [rip + SYMBOL]
mov	r14d, dword ptr [8*rax + SYMBOL]
mov	r14d, dword ptr [r13 + SYMBOL+8]
mov	r14d, dword ptr [r14 + SYMBOL]
mov	r14d, dword ptr [r15 + SYMBOL+8]
mov	r14d, dword ptr [rip + SYMBOL]
mov	r14d, offset SYMBOL
mov	r14d, offset SYMBOL+8
mov	r15, qword ptr [rax + SYMBOL]
mov	r15, qword ptr [rip + SYMBOL+8]
mov	r15, qword ptr [rip + SYMBOL]
mov	r15b, byte ptr [r14 + SYMBOL+8]
mov	r15b, byte ptr [rax + SYMBOL+8]
mov	r15b, byte ptr [rip + SYMBOL]
mov	r15d, dword ptr [8*rax + SYMBOL]
mov	r15d, dword ptr [r15 + SYMBOL+8]
mov	r15d, dword ptr [rbx + SYMBOL+8]
mov	r15d, dword ptr [rip + SYMBOL]
mov	r15d, offset SYMBOL
mov	r15d, offset SYMBOL+8
mov	r8, qword ptr [8*r14 + SYMBOL]
mov	r8, qword ptr [8*rax + SYMBOL]
mov	r8, qword ptr [SYMBOL]
mov	r8, qword ptr [rdi + SYMBOL]
mov	r8, qword ptr [rip + SYMBOL]
mov	r8, qword ptr [rsi + SYMBOL]
mov	r8b, byte ptr [SYMBOL]
mov	r8b, byte ptr [r8 + SYMBOL]
mov	r8b, byte ptr [rip + SYMBOL]
mov	r8b, byte ptr [rsi + SYMBOL]
mov	r8d, dword ptr [SYMBOL]
mov	r8d, dword ptr [rip + SYMBOL+8]
mov	r8d, dword ptr [rip + SYMBOL]
mov	r8d, offset SYMBOL
mov	r8d, offset SYMBOL+8
mov	r9, qword ptr [SYMBOL]
mov	r9, qword ptr [r8 + SYMBOL]
mov	r9, qword ptr [rdi + SYMBOL]
mov	r9, qword ptr [rip + SYMBOL]
mov	r9b, byte ptr [SYMBOL]
mov	r9b, byte ptr [r8 + SYMBOL]
mov	r9b, byte ptr [r9 + SYMBOL]
mov	r9b, byte ptr [rip + SYMBOL]
mov	r9d, dword ptr [SYMBOL]
mov	r9d, dword ptr [rip + SYMBOL+8]
mov	r9d, dword ptr [rip + SYMBOL]
mov	r9d, offset SYMBOL
mov	rax, qword ptr [8*r12 + SYMBOL]
mov	rax, qword ptr [8*rax + SYMBOL+8]
mov	rax, qword ptr [8*rax + SYMBOL]
mov	rax, qword ptr [SYMBOL+8]
mov	rax, qword ptr [SYMBOL]
mov	rax, qword ptr [r12 + SYMBOL+8]
mov	rax, qword ptr [rbx + SYMBOL+8]
mov	rax, qword ptr [rcx + SYMBOL+8]
mov	rax, qword ptr [rip + SYMBOL+8]
mov	rax, qword ptr [rip + SYMBOL]
mov	rbp, qword ptr [8*r13 + SYMBOL]
mov	rbp, qword ptr [r12 + SYMBOL+8]
mov	rbp, qword ptr [rip + SYMBOL+8]
mov	rbp, qword ptr [rip + SYMBOL]
mov	rbx, qword ptr [8*rax + SYMBOL]
mov	rbx, qword ptr [SYMBOL]
mov	rbx, qword ptr [r14 + SYMBOL+8]
mov	rbx, qword ptr [rax + SYMBOL]
mov	rbx, qword ptr [rdi + SYMBOL+8]
mov	rbx, qword ptr [rip + SYMBOL+8]
mov	rbx, qword ptr [rip + SYMBOL]
mov	rbx, qword ptr [rsi + SYMBOL+8]
mov	rcx, qword ptr [8*r14 + SYMBOL]
mov	rcx, qword ptr [8*rax + SYMBOL]
mov	rcx, qword ptr [8*rcx + SYMBOL+8]
mov	rcx, qword ptr [8*rcx + SYMBOL]
mov	rcx, qword ptr [SYMBOL+8]
mov	rcx, qword ptr [SYMBOL]
mov	rcx, qword ptr [r12 + SYMBOL+8]
mov	rcx, qword ptr [r14 + SYMBOL+8]
mov	rcx, qword ptr [rbx + SYMBOL+8]
mov	rcx, qword ptr [rip + SYMBOL+8]
mov	rcx, qword ptr [rip + SYMBOL]
mov	rdi, qword ptr [8*r14 + SYMBOL]
mov	rdi, qword ptr [8*rax + SYMBOL+8]
mov	rdi, qword ptr [8*rax + SYMBOL]
mov	rdi, qword ptr [SYMBOL+8]
mov	rdi, qword ptr [SYMBOL]
mov	rdi, qword ptr [rdi + SYMBOL]
mov	rdi, qword ptr [rip + SYMBOL+8]
mov	rdi, qword ptr [rip + SYMBOL]
mov	rdi, qword ptr [rsi + SYMBOL]
mov	rdx, qword ptr [8*rax + SYMBOL+8]
mov	rdx, qword ptr [8*rax + SYMBOL]
mov	rdx, qword ptr [8*rcx + SYMBOL]
mov	rdx, qword ptr [8*rdx + SYMBOL]
mov	rdx, qword ptr [SYMBOL+8]
mov	rdx, qword ptr [SYMBOL]
mov	rdx, qword ptr [r14 + SYMBOL+8]
mov	rdx, qword ptr [rax + SYMBOL+8]
mov	rdx, qword ptr [rax + SYMBOL]
mov	rdx, qword ptr [rbx + SYMBOL+8]
mov	rdx, qword ptr [rcx + 8*rax + SYMBOL]
mov	rdx, qword ptr [rcx + SYMBOL+8]
mov	rdx, qword ptr [rip + SYMBOL+8]
mov	rdx, qword ptr [rip + SYMBOL]
mov	rsi, qword ptr [8*r14 + SYMBOL+8]
mov	rsi, qword ptr [8*r14 + SYMBOL]
mov	rsi, qword ptr [8*rax + SYMBOL+8]
mov	rsi, qword ptr [8*rax + SYMBOL]
mov	rsi, qword ptr [SYMBOL+8]
mov	rsi, qword ptr [SYMBOL]
mov	rsi, qword ptr [r14 + SYMBOL+8]
mov	rsi, qword ptr [r15 + SYMBOL+8]
mov	rsi, qword ptr [rbx + SYMBOL+8]
mov	rsi, qword ptr [rcx + SYMBOL+8]
mov	rsi, qword ptr [rip + SYMBOL+8]
mov	rsi, qword ptr [rip + SYMBOL]
mov	rsi, qword ptr [rsi + SYMBOL+8]
mov	sil, byte ptr [SYMBOL]
mov	sil, byte ptr [r11 + SYMBOL]
mov	sil, byte ptr [r12 + SYMBOL]
mov	sil, byte ptr [r13 + SYMBOL]
mov	sil, byte ptr [rbx + SYMBOL]
mov	sil, byte ptr [rdi + SYMBOL]
mov	sil, byte ptr [rip + SYMBOL]
mov	word ptr [rip + SYMBOL+8], 8
mov	word ptr [rip + SYMBOL+8], cx
mov	word ptr [rip + SYMBOL], 8
movabs	r10, offset SYMBOL
movabs	r11, offset SYMBOL
movabs	r8, offset SYMBOL
movabs	r9, offset SYMBOL
movabs	rax, offset SYMBOL
movabs	rbx, offset SYMBOL
movabs	rcx, offset SYMBOL
movabs	rdi, offset SYMBOL
movabs	rdx, offset SYMBOL
movabs	rsi, offset SYMBOL
movaps	xmm0, xmmword ptr [rip + SYMBOL+8]
movaps	xmm0, xmmword ptr [rip + SYMBOL]
movaps	xmmword ptr [rip + SYMBOL+8], xmm0
movaps	xmmword ptr [rip + SYMBOL], xmm0
movdqa	xmm0, xmmword ptr [rip + SYMBOL]
movdqa	xmm1, xmmword ptr [rip + SYMBOL+8]
movdqa	xmm1, xmmword ptr [rip + SYMBOL]
movdqa	xmm2, xmmword ptr [rip + SYMBOL+8]
movdqa	xmmword ptr [rax + SYMBOL+8], xmm0
movdqa	xmmword ptr [rip + SYMBOL+8], xmm0
movdqa	xmmword ptr [rip + SYMBOL+8], xmm1
movdqa	xmmword ptr [rip + SYMBOL+8], xmm2
movdqa	xmmword ptr [rip + SYMBOL], xmm0
movdqa	xmmword ptr [rip + SYMBOL], xmm1
movdqu	xmm0, xmmword ptr [rip + SYMBOL+8]
movdqu	xmm1, xmmword ptr [rip + SYMBOL+8]
movdqu	xmm2, xmmword ptr [rip + SYMBOL+8]
movdqu	xmmword ptr [rip + SYMBOL+8], xmm0
movdqu	xmmword ptr [rip + SYMBOL+8], xmm1
movdqu	xmmword ptr [rip + SYMBOL], xmm0
movq	qword ptr [rcx + SYMBOL+8], xmm1
movq	qword ptr [rcx + SYMBOL+8], xmm2
movq	qword ptr [rcx + SYMBOL], xmm1
movsd	qword ptr [SYMBOL], xmm0
movsd	qword ptr [rip + SYMBOL], xmm0
movsd	xmm0, qword ptr [SYMBOL]
movsd	xmm0, qword ptr [rip + SYMBOL]
movsd	xmm1, qword ptr [rip + SYMBOL]
movsx	eax, byte ptr [8*rax + SYMBOL]
movsx	eax, byte ptr [SYMBOL]
movsx	eax, byte ptr [r11 + SYMBOL]
movsx	eax, byte ptr [r12 + SYMBOL]
movsx	eax, byte ptr [r15 + SYMBOL]
movsx	eax, byte ptr [rax + SYMBOL]
movsx	eax, byte ptr [rbp + SYMBOL]
movsx	eax, byte ptr [rcx + SYMBOL]
movsx	eax, byte ptr [rip + SYMBOL]
movsx	eax, word ptr [8*rax + SYMBOL+8]
movsx	ebp, byte ptr [r12 + SYMBOL]
movsx	ebp, byte ptr [r15 + SYMBOL]
movsx	ebx, byte ptr [rax + SYMBOL]
movsx	ecx, byte ptr [8*rax + SYMBOL]
movsx	ecx, byte ptr [8*rcx + SYMBOL+8]
movsx	ecx, byte ptr [8*rcx + SYMBOL]
movsx	ecx, byte ptr [SYMBOL]
movsx	ecx, byte ptr [rax + SYMBOL]
movsx	ecx, byte ptr [rcx + SYMBOL]
movsx	ecx, byte ptr [rip + SYMBOL]
movsx	edi, byte ptr [8*rax + SYMBOL]
movsx	edi, byte ptr [SYMBOL]
movsx	edi, byte ptr [rip + SYMBOL]
movsx	edx, byte ptr [SYMBOL]
movsx	edx, byte ptr [rax + SYMBOL]
movsx	edx, byte ptr [rcx + SYMBOL]
movsx	edx, byte ptr [rip + SYMBOL]
movsx	esi, byte ptr [8*rax + SYMBOL]
movsx	esi, byte ptr [SYMBOL]
movsx	esi, byte ptr [rax + SYMBOL-8]
movsx	esi, byte ptr [rax + SYMBOL]
movsx	esi, byte ptr [rcx + SYMBOL-8]
movsx	esi, byte ptr [rdx + SYMBOL]
movsx	esi, byte ptr [rip + SYMBOL]
movsx	r12, byte ptr [rbp + SYMBOL]
movsx	r12d, byte ptr [r11 + SYMBOL]
movsx	r12d, byte ptr [rax + SYMBOL]
movsx	r12d, byte ptr [rcx + SYMBOL]
movsx	r13d, byte ptr [rax + SYMBOL]
movsx	r13d, byte ptr [rbp + SYMBOL]
movsx	r14, byte ptr [r13 + SYMBOL]
movsx	r14d, byte ptr [r15 + SYMBOL]
movsx	r14d, byte ptr [rax + SYMBOL]
movsx	r14d, byte ptr [rcx + SYMBOL]
movsx	r15, byte ptr [r14 + SYMBOL]
movsx	r15d, byte ptr [rax + SYMBOL]
movsx	rax, byte ptr [r12 + SYMBOL]
movsx	rax, byte ptr [r13 + SYMBOL]
movsx	rax, byte ptr [r14 + SYMBOL]
movsx	rbp, byte ptr [r12 + SYMBOL]
movsx	rcx, byte ptr [rcx + SYMBOL]
movsx	rcx, byte ptr [rip + SYMBOL]
movsxd	r11, dword ptr [rip + SYMBOL]
movsxd	r12, dword ptr [rip + SYMBOL]
movsxd	r13, dword ptr [rip + SYMBOL]
movsxd	r14, dword ptr [rip + SYMBOL]
movsxd	r15, dword ptr [rip + SYMBOL]
movsxd	r8, dword ptr [8*rax + SYMBOL]
movsxd	r8, dword ptr [rip + SYMBOL]
movsxd	r9, dword ptr [8*rax + SYMBOL]
movsxd	rax, dword ptr [8*rax + SYMBOL]
movsxd	rax, dword ptr [SYMBOL]
movsxd	rax, dword ptr [rip + SYMBOL]
movsxd	rbp, dword ptr [rip + SYMBOL]
movsxd	rbx, dword ptr [rip + SYMBOL]
movsxd	rcx, dword ptr [8*rax + SYMBOL]
movsxd	rcx, dword ptr [8*rcx + SYMBOL]
movsxd	rcx, dword ptr [SYMBOL]
movsxd	rcx, dword ptr [rip + SYMBOL]
movsxd	rdi, dword ptr [8*rax + SYMBOL]
movsxd	rdi, dword ptr [SYMBOL]
movsxd	rdi, dword ptr [rip + SYMBOL]
movsxd	rdx, dword ptr [SYMBOL]
movsxd	rdx, dword ptr [rip + SYMBOL]
movsxd	rsi, dword ptr [8*rax + SYMBOL]
movsxd	rsi, dword ptr [rip + SYMBOL]
movupd	xmm0, xmmword ptr [rip + SYMBOL+8]
movupd	xmmword ptr [rip + SYMBOL+8], xmm1
movupd	xmmword ptr [rip + SYMBOL], xmm0
movups	xmm0, xmmword ptr [rip + SYMBOL+8]
movups	xmm0, xmmword ptr [rip + SYMBOL]
movups	xmmword ptr [rip + SYMBOL+8], xmm0
movups	xmmword ptr [rip + SYMBOL+8], xmm1
movups	xmmword ptr [rip + SYMBOL+8], xmm2
movups	xmmword ptr [rip + SYMBOL+8], xmm3
movups	xmmword ptr [rip + SYMBOL], xmm0
movzx	eax, byte ptr [8*rax + SYMBOL]
movzx	eax, byte ptr [SYMBOL+8]
movzx	eax, byte ptr [SYMBOL]
movzx	eax, byte ptr [r12 + rcx + SYMBOL]
movzx	eax, byte ptr [r13 + SYMBOL]
movzx	eax, byte ptr [r8 + SYMBOL]
movzx	eax, byte ptr [r9 + SYMBOL]
movzx	eax, byte ptr [rax + SYMBOL+8]
movzx	eax, byte ptr [rax + SYMBOL]
movzx	eax, byte ptr [rbx + rcx + SYMBOL]
movzx	eax, byte ptr [rcx + SYMBOL]
movzx	eax, byte ptr [rcx + rdx + SYMBOL]
movzx	eax, byte ptr [rdi + SYMBOL]
movzx	eax, byte ptr [rdx + SYMBOL]
movzx	eax, byte ptr [rip + SYMBOL+8]
movzx	eax, byte ptr [rip + SYMBOL]
movzx	eax, word ptr [r8 + 8*rdi + SYMBOL]
movzx	eax, word ptr [rax + rax + SYMBOL+8]
movzx	eax, word ptr [rax + rax + SYMBOL]
movzx	eax, word ptr [rdi + 8*r8 + SYMBOL]
movzx	eax, word ptr [rsi + 8*rdx + SYMBOL]
movzx	ebp, byte ptr [r12 + SYMBOL]
movzx	ebp, byte ptr [r12 + r13 + SYMBOL]
movzx	ebp, byte ptr [r13 + SYMBOL]
movzx	ebp, byte ptr [r13 + rbp + SYMBOL]
movzx	ebp, byte ptr [r14 + SYMBOL]
movzx	ebp, byte ptr [rax + SYMBOL]
movzx	ebp, byte ptr [rbx + SYMBOL]
movzx	ebp, byte ptr [rip + SYMBOL+8]
movzx	ebp, byte ptr [rip + SYMBOL]
movzx	ebx, byte ptr [r10 + SYMBOL]
movzx	ebx, byte ptr [r11 + SYMBOL]
movzx	ebx, byte ptr [rax + SYMBOL]
movzx	ebx, byte ptr [rbx + SYMBOL]
movzx	ebx, byte ptr [rbx + r14 + SYMBOL]
movzx	ebx, byte ptr [rip + SYMBOL]
movzx	ecx, byte ptr [8*rcx + SYMBOL]
movzx	ecx, byte ptr [SYMBOL+8]
movzx	ecx, byte ptr [SYMBOL]
movzx	ecx, byte ptr [r12 + SYMBOL-8]
movzx	ecx, byte ptr [r12 + SYMBOL]
movzx	ecx, byte ptr [r14 + SYMBOL-8]
movzx	ecx, byte ptr [rax + SYMBOL+8]
movzx	ecx, byte ptr [rax + SYMBOL]
movzx	ecx, byte ptr [rbx + SYMBOL]
movzx	ecx, byte ptr [rcx + SYMBOL]
movzx	ecx, byte ptr [rdi + SYMBOL]
movzx	ecx, byte ptr [rip + SYMBOL+8]
movzx	ecx, byte ptr [rip + SYMBOL]
movzx	ecx, word ptr [rcx + rcx + SYMBOL+8]
movzx	edi, byte ptr [8*rax + SYMBOL]
movzx	edi, byte ptr [SYMBOL]
movzx	edi, byte ptr [rax + SYMBOL+8]
movzx	edi, byte ptr [rax + SYMBOL]
movzx	edi, byte ptr [rdi + SYMBOL]
movzx	edi, byte ptr [rip + SYMBOL]
movzx	edx, byte ptr [SYMBOL]
movzx	edx, byte ptr [rax + SYMBOL+8]
movzx	edx, byte ptr [rax + SYMBOL]
movzx	edx, byte ptr [rbx + SYMBOL+8]
movzx	edx, byte ptr [rcx + SYMBOL+8]
movzx	edx, byte ptr [rcx + SYMBOL]
movzx	edx, byte ptr [rdx + SYMBOL]
movzx	edx, byte ptr [rip + SYMBOL+8]
movzx	edx, byte ptr [rip + SYMBOL]
movzx	edx, byte ptr [rsi + SYMBOL]
movzx	esi, byte ptr [r11 + SYMBOL]
movzx	esi, byte ptr [r12 + SYMBOL]
movzx	esi, byte ptr [r13 + SYMBOL]
movzx	esi, byte ptr [rax + rdx + SYMBOL]
movzx	esi, byte ptr [rbx + SYMBOL]
movzx	esi, byte ptr [rcx + SYMBOL+8]
movzx	esi, byte ptr [rdi + SYMBOL]
movzx	esi, byte ptr [rdx + SYMBOL]
movzx	esi, byte ptr [rip + SYMBOL+8]
movzx	esi, byte ptr [rip + SYMBOL]
movzx	esi, byte ptr [rsi + SYMBOL]
movzx	r10d, byte ptr [r10 + SYMBOL]
movzx	r10d, byte ptr [rax + SYMBOL]
movzx	r10d, byte ptr [rip + SYMBOL]
movzx	r11d, byte ptr [r10 + SYMBOL]
movzx	r11d, byte ptr [r11 + SYMBOL]
movzx	r11d, byte ptr [r11 + rbx + SYMBOL]
movzx	r11d, byte ptr [rax + SYMBOL]
movzx	r11d, byte ptr [rbx + SYMBOL]
movzx	r11d, byte ptr [rip + SYMBOL]
movzx	r12d, byte ptr [r11 + SYMBOL]
movzx	r12d, byte ptr [r12 + SYMBOL]
movzx	r12d, byte ptr [rip + SYMBOL]
movzx	r13d, byte ptr [r11 + SYMBOL]
movzx	r13d, byte ptr [rip + SYMBOL]
movzx	r14d, byte ptr [rbx + SYMBOL+8]
movzx	r14d, byte ptr [rbx + SYMBOL]
movzx	r14d, byte ptr [rip + SYMBOL]
movzx	r15d, byte ptr [r15 + SYMBOL]
movzx	r15d, byte ptr [rax + SYMBOL+8]
movzx	r15d, byte ptr [rbx + SYMBOL+8]
movzx	r15d, byte ptr [rip + SYMBOL]
movzx	r8d, byte ptr [SYMBOL]
movzx	r8d, byte ptr [r14 + SYMBOL]
movzx	r8d, byte ptr [r8 + SYMBOL]
movzx	r8d, byte ptr [rbx + SYMBOL]
movzx	r8d, byte ptr [rip + SYMBOL]
movzx	r8d, byte ptr [rsi + SYMBOL]
movzx	r9d, byte ptr [SYMBOL]
movzx	r9d, byte ptr [r13 + SYMBOL]
movzx	r9d, byte ptr [r14 + SYMBOL]
movzx	r9d, byte ptr [r8 + SYMBOL]
movzx	r9d, byte ptr [r9 + SYMBOL]
movzx	r9d, byte ptr [rax + SYMBOL]
movzx	r9d, byte ptr [rbx + SYMBOL]
movzx	r9d, byte ptr [rip + SYMBOL]
neg	qword ptr [rip + SYMBOL+8]
or	al, byte ptr [rip + SYMBOL+8]
or	al, byte ptr [rip + SYMBOL]
or	bl, byte ptr [rip + SYMBOL]
or	bpl, byte ptr [rip + SYMBOL]
or	byte ptr [r14 + SYMBOL], cl
or	byte ptr [rip + SYMBOL+8], -8
or	byte ptr [rip + SYMBOL+8], 8
or	byte ptr [rip + SYMBOL], 8
or	byte ptr [rip + SYMBOL], al
or	byte ptr [rip + SYMBOL], cl
or	byte ptr [rip + SYMBOL], sil
or	cl, byte ptr [rip + SYMBOL]
or	dl, byte ptr [rip + SYMBOL]
or	dword ptr [rip + SYMBOL], eax
or	eax, dword ptr [SYMBOL]
or	eax, dword ptr [rip + SYMBOL]
or	ebp, dword ptr [rip + SYMBOL]
or	ecx, dword ptr [r12 + SYMBOL+8]
or	ecx, dword ptr [r15 + SYMBOL+8]
or	ecx, dword ptr [rbx + SYMBOL+8]
or	edx, dword ptr [r12 + SYMBOL+8]
or	edx, dword ptr [r15 + SYMBOL+8]
or	edx, dword ptr [rax + SYMBOL+8]
or	edx, dword ptr [rbx + SYMBOL+8]
or	r12b, byte ptr [rip + SYMBOL]
or	r12d, dword ptr [8*rax + SYMBOL]
or	r13b, byte ptr [rip + SYMBOL]
or	r14b, byte ptr [rip + SYMBOL]
or	r15b, byte ptr [rip + SYMBOL]
or	r8b, byte ptr [rip + SYMBOL]
or	r9b, byte ptr [rip + SYMBOL]
or	rax, qword ptr [rip + SYMBOL]
or	rcx, qword ptr [rip + SYMBOL]
push	offset SYMBOL
push	qword ptr [rip + SYMBOL]
pxor	xmm0, xmmword ptr [rip + SYMBOL+8]
rep	SYMBOL es:[rdi], [rsi]
setae	byte ptr [rbx + SYMBOL+8]
setae	byte ptr [rip + SYMBOL]
sete	byte ptr [rbx + SYMBOL+8]
sete	byte ptr [rbx + SYMBOL]
sete	byte ptr [rip + SYMBOL]
setne	byte ptr [rip + SYMBOL]
setns	byte ptr [rip + SYMBOL]
sub	eax, dword ptr [SYMBOL]
sub	eax, dword ptr [rip + SYMBOL]
sub	ebp, dword ptr [rip + SYMBOL]
sub	ebx, dword ptr [rip + SYMBOL]
sub	ecx, dword ptr [SYMBOL]
sub	ecx, dword ptr [rip + SYMBOL]
sub	edi, dword ptr [SYMBOL]
sub	edi, dword ptr [rip + SYMBOL]
sub	qword ptr [rip + SYMBOL], 8
sub	qword ptr [rip + SYMBOL], rax
sub	r12, qword ptr [rip + SYMBOL]
sub	r12d, dword ptr [rip + SYMBOL]
sub	r13, qword ptr [rip + SYMBOL]
sub	r14, qword ptr [rip + SYMBOL]
sub	r15d, dword ptr [rip + SYMBOL]
sub	rax, qword ptr [SYMBOL]
sub	rax, qword ptr [rip + SYMBOL+8]
sub	rax, qword ptr [rip + SYMBOL]
sub	rbx, qword ptr [rip + SYMBOL]
sub	rcx, qword ptr [SYMBOL]
sub	rcx, qword ptr [rip + SYMBOL+8]
sub	rcx, qword ptr [rip + SYMBOL]
sub	rdx, qword ptr [SYMBOL]
sub	rdx, qword ptr [rip + SYMBOL]
sub	rsi, qword ptr [rip + SYMBOL]
test	byte ptr [8*rax + SYMBOL], 8
test	byte ptr [8*rcx + SYMBOL], 8
test	byte ptr [SYMBOL+8], 8
test	byte ptr [SYMBOL], 8
test	byte ptr [r12 + SYMBOL+8], 8
test	byte ptr [r15 + SYMBOL+8], 8
test	byte ptr [rbx + SYMBOL+8], 8
test	byte ptr [rip + SYMBOL+8], -8
test	byte ptr [rip + SYMBOL+8], 8
test	byte ptr [rip + SYMBOL], 8
test	byte ptr [rip + SYMBOL], al
test	dword ptr [rip + SYMBOL], -8
test	dword ptr [rip + SYMBOL], 8
vpexpandd	zmm1 {k1} {SYMBOL}, zmm1
vpexpandd	zmm2 {k1} {SYMBOL}, zmm2
xor	al, byte ptr [rip + SYMBOL]
xor	byte ptr [rax + SYMBOL+8], 8
xor	eax, dword ptr [8*rcx + SYMBOL+8]
xor	ebp, dword ptr [8*r8 + SYMBOL+8]
xor	ebp, dword ptr [8*r9 + SYMBOL+8]
xor	ebp, dword ptr [8*r9 + SYMBOL]
xor	ebp, dword ptr [8*rdi + SYMBOL+8]
xor	ebp, dword ptr [r8 + SYMBOL+8]
xor	edi, dword ptr [8*r10 + SYMBOL+8]
xor	edi, dword ptr [8*r8 + SYMBOL+8]
xor	edi, dword ptr [8*r9 + SYMBOL+8]
xor	edi, dword ptr [8*r9 + SYMBOL]
xor	edi, dword ptr [8*rbp + SYMBOL+8]
xor	edi, dword ptr [8*rcx + SYMBOL+8]
xor	edi, dword ptr [r8 + SYMBOL+8]
xor	edi, dword ptr [rdx + 8*rax + SYMBOL]
xor	r14, qword ptr [8*rdi + SYMBOL]
xor	r14, qword ptr [8*rsi + SYMBOL]
xor	r15, qword ptr [8*rdi + SYMBOL]
xor	r15, qword ptr [8*rdx + SYMBOL]
xor	r15, qword ptr [8*rsi + SYMBOL]
xor	rax, qword ptr [8*rcx + SYMBOL+8]
xor	rax, qword ptr [8*rcx + SYMBOL]
xor	rax, qword ptr [rip + SYMBOL]
xor	rbx, qword ptr [8*r8 + SYMBOL+8]
xor	rbx, qword ptr [8*r8 + SYMBOL]
xor	rbx, qword ptr [8*r9 + SYMBOL+8]
xor	rbx, qword ptr [8*rbp + SYMBOL+8]
xor	rbx, qword ptr [8*rcx + SYMBOL+8]
xor	rbx, qword ptr [8*rdi + SYMBOL+8]
xor	rbx, qword ptr [8*rdx + SYMBOL+8]
xor	rbx, qword ptr [8*rsi + SYMBOL]
xor	rbx, qword ptr [rdi + SYMBOL+8]
xor	rbx, qword ptr [rsi + SYMBOL+8]
xor	rcx, qword ptr [8*r8 + SYMBOL]
xor	rcx, qword ptr [8*rdi + SYMBOL]
xor	rcx, qword ptr [8*rsi + SYMBOL]
xor	rcx, qword ptr [rip + SYMBOL+8]
xor	rsi, qword ptr [8*r15 + SYMBOL+8]
xor	rsi, qword ptr [8*r8 + SYMBOL]
xor	rsi, qword ptr [8*rdi + SYMBOL+8]
xor	rsi, qword ptr [8*rdi + SYMBOL]
xor	rsi, qword ptr [rdi + SYMBOL+8]
