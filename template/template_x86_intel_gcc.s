adc	DWORD PTR SYMBOL+8, 8
adc	DWORD PTR SYMBOL+8, ebx
adc	DWORD PTR SYMBOL+8, edi
adc	DWORD PTR SYMBOL+8, edx
adc	DWORD PTR SYMBOL[8+ebp*8], 8
adc	DWORD PTR SYMBOL[8+edi*8], 8
adc	DWORD PTR SYMBOL[eax+8], 8
adc	DWORD PTR SYMBOL[ebp+8], 8
adc	DWORD PTR SYMBOL[ebp+8], edi
adc	DWORD PTR SYMBOL[ebp+8], edx
adc	DWORD PTR SYMBOL[ebx+8+ebp*8], 8
adc	DWORD PTR SYMBOL[ebx+8], 8
adc	DWORD PTR SYMBOL[ebx+8], ebp
adc	DWORD PTR SYMBOL[ebx+8], edi
adc	DWORD PTR SYMBOL[ebx+8], edx
adc	DWORD PTR SYMBOL[edi+8], 8
adc	DWORD PTR SYMBOL[edi+8], ebx
adc	DWORD PTR SYMBOL[edi+8], edx
adc	DWORD PTR SYMBOL[esi+8], 8
adc	DWORD PTR SYMBOL[esi+8], ebx
adc	DWORD PTR SYMBOL[esi+8], edx
adc	ebp, DWORD PTR SYMBOL[ebx+8]
adc	ebx, DWORD PTR SYMBOL+8
adc	edi, DWORD PTR SYMBOL+8
adc	edi, DWORD PTR SYMBOL[eax+8]
adc	edi, DWORD PTR SYMBOL[ebp+8]
adc	edi, DWORD PTR SYMBOL[ebx+8]
adc	edx, DWORD PTR SYMBOL+8
adc	edx, DWORD PTR SYMBOL[ebx+8]
adc	edx, DWORD PTR SYMBOL[ecx+8]
adc	edx, DWORD PTR SYMBOL[esi+8]
add	DWORD PTR SYMBOL+8, 8
add	DWORD PTR SYMBOL+8, eax
add	DWORD PTR SYMBOL+8, esi
add	DWORD PTR SYMBOL, 8
add	DWORD PTR SYMBOL, eax
add	DWORD PTR SYMBOL, ebx
add	DWORD PTR SYMBOL, edx
add	DWORD PTR SYMBOL, esi
add	DWORD PTR SYMBOL[8+ebp*8], 8
add	DWORD PTR SYMBOL[8+edi*8], 8
add	DWORD PTR SYMBOL[eax], 8
add	DWORD PTR SYMBOL[ebp+8], eax
add	DWORD PTR SYMBOL[ebp+8], esi
add	DWORD PTR SYMBOL[ebp], 8
add	DWORD PTR SYMBOL[ebx+8], 8
add	DWORD PTR SYMBOL[ebx+8], eax
add	DWORD PTR SYMBOL[ebx+8], esi
add	DWORD PTR SYMBOL[ebx+ebp*8], 8
add	DWORD PTR SYMBOL[ebx], 8
add	DWORD PTR SYMBOL[ebx], eax
add	DWORD PTR SYMBOL[ebx], ebp
add	DWORD PTR SYMBOL[ebx], edi
add	DWORD PTR SYMBOL[ebx], edx
add	DWORD PTR SYMBOL[ebx], esi
add	DWORD PTR SYMBOL[ecx], eax
add	DWORD PTR SYMBOL[edi], 8
add	DWORD PTR SYMBOL[edi], eax
add	DWORD PTR SYMBOL[esi], 8
add	DWORD PTR SYMBOL[esi], eax
add	eax, DWORD PTR SYMBOL
add	eax, DWORD PTR SYMBOL[8+edx*8]
add	eax, DWORD PTR SYMBOL[ebp]
add	eax, DWORD PTR SYMBOL[ebx]
add	eax, DWORD PTR SYMBOL[ecx]
add	eax, DWORD PTR SYMBOL[edi]
add	eax, DWORD PTR SYMBOL[edx+8+ecx*8]
add	eax, DWORD PTR SYMBOL[esi]
add	eax, OFFSET FLAT:SYMBOL
add	eax, OFFSET FLAT:SYMBOL+8
add	ebp, DWORD PTR SYMBOL
add	ebp, DWORD PTR SYMBOL[ebx]
add	ebx, DWORD PTR SYMBOL
add	ebx, DWORD PTR SYMBOL[eax]
add	ebx, DWORD PTR SYMBOL[ebp]
add	ebx, DWORD PTR SYMBOL[ecx]
add	ebx, DWORD PTR SYMBOL[edi]
add	ebx, DWORD PTR SYMBOL[esi]
add	ebx, OFFSET FLAT:SYMBOL
add	ecx, DWORD PTR SYMBOL
add	ecx, DWORD PTR SYMBOL[ebx]
add	ecx, DWORD PTR SYMBOL[esi]
add	edi, DWORD PTR SYMBOL
add	edi, DWORD PTR SYMBOL[ebp]
add	edi, DWORD PTR SYMBOL[ebx]
add	edi, DWORD PTR SYMBOL[esi]
add	edx, DWORD PTR SYMBOL
add	edx, DWORD PTR SYMBOL[ebx]
add	edx, DWORD PTR SYMBOL[edi]
add	edx, OFFSET FLAT:SYMBOL
add	edx, OFFSET FLAT:SYMBOL+8
add	esi, DWORD PTR SYMBOL
add	esi, DWORD PTR SYMBOL[eax]
add	esi, DWORD PTR SYMBOL[ebp]
add	esi, DWORD PTR SYMBOL[ebx]
add	esi, DWORD PTR SYMBOL[edi]
add	esi, OFFSET FLAT:SYMBOL
and	BYTE PTR SYMBOL, 8
and	BYTE PTR SYMBOL, al
and	BYTE PTR SYMBOL[eax+ebx], 8
and	BYTE PTR SYMBOL[ebx], 8
and	BYTE PTR SYMBOL[ebx], al
and	BYTE PTR SYMBOL[edi+ebx], 8
and	BYTE PTR SYMBOL[edi], 8
and	BYTE PTR SYMBOL[esi+ebx], 8
and	BYTE PTR SYMBOL[esi], 8
and	DWORD PTR SYMBOL, -8
and	DWORD PTR SYMBOL[eax], -8
and	DWORD PTR SYMBOL[ebx], -8
and	al, BYTE PTR SYMBOL
and	al, BYTE PTR SYMBOL[ebp]
and	al, BYTE PTR SYMBOL[ebx]
and	al, BYTE PTR SYMBOL[ecx]
and	al, BYTE PTR SYMBOL[edi]
and	bl, BYTE PTR SYMBOL
and	cl, BYTE PTR SYMBOL
and	cl, BYTE PTR SYMBOL[ebx]
and	dl, BYTE PTR SYMBOL
and	dl, BYTE PTR SYMBOL[ebx]
and	eax, OFFSET FLAT:SYMBOL
and	ecx, DWORD PTR SYMBOL[ebx+8]
and	edx, DWORD PTR SYMBOL+8
and	edx, DWORD PTR SYMBOL[ebx+8]
call	SYMBOL
call	[DWORD PTR SYMBOL[8+eax*8]]
call	[DWORD PTR SYMBOL[8+ecx*8]]
call	[DWORD PTR SYMBOL[eax]]
call	[DWORD PTR SYMBOL[ebp]]
call	[DWORD PTR SYMBOL[ebx+eax*8]]
call	[DWORD PTR SYMBOL[ebx+ecx*8]]
call	[DWORD PTR SYMBOL[ebx]]
call	[DWORD PTR SYMBOL[ecx]]
call	[DWORD PTR SYMBOL[edi+eax*8]]
call	[DWORD PTR SYMBOL[edi]]
call	[DWORD PTR SYMBOL[edx]]
call	[DWORD PTR SYMBOL[esi]]
call	[DWORD PTR SYMBOL]
cmovb	eax, DWORD PTR SYMBOL+8
cmove	eax, DWORD PTR SYMBOL
cmove	edx, DWORD PTR SYMBOL
cmovne	ebx, DWORD PTR SYMBOL
cmovne	ecx, DWORD PTR SYMBOL
cmovne	edi, DWORD PTR SYMBOL
cmp	BYTE PTR SYMBOL+8, 8
cmp	BYTE PTR SYMBOL+8, al
cmp	BYTE PTR SYMBOL, 8
cmp	BYTE PTR SYMBOL, al
cmp	BYTE PTR SYMBOL, cl
cmp	BYTE PTR SYMBOL, dl
cmp	BYTE PTR SYMBOL[8+eax*8], 8
cmp	BYTE PTR SYMBOL[eax+8+eax], bl
cmp	BYTE PTR SYMBOL[eax+8+eax], cl
cmp	BYTE PTR SYMBOL[eax+8], 8
cmp	BYTE PTR SYMBOL[eax+eax], cl
cmp	BYTE PTR SYMBOL[eax], 8
cmp	BYTE PTR SYMBOL[ebp+8], 8
cmp	BYTE PTR SYMBOL[ebp], 8
cmp	BYTE PTR SYMBOL[ebp], al
cmp	BYTE PTR SYMBOL[ebp], bl
cmp	BYTE PTR SYMBOL[ebx+8+eax*8], 8
cmp	BYTE PTR SYMBOL[ebx+8+eax*8], cl
cmp	BYTE PTR SYMBOL[ebx+8], 8
cmp	BYTE PTR SYMBOL[ebx+8], al
cmp	BYTE PTR SYMBOL[ebx+eax*8], cl
cmp	BYTE PTR SYMBOL[ebx+eax], 8
cmp	BYTE PTR SYMBOL[ebx+ecx], 8
cmp	BYTE PTR SYMBOL[ebx+edx], 8
cmp	BYTE PTR SYMBOL[ebx-8+edx], 8
cmp	BYTE PTR SYMBOL[ebx-8+esi], 8
cmp	BYTE PTR SYMBOL[ebx-8], 8
cmp	BYTE PTR SYMBOL[ebx], 8
cmp	BYTE PTR SYMBOL[ebx], al
cmp	BYTE PTR SYMBOL[ebx], cl
cmp	BYTE PTR SYMBOL[ebx], dl
cmp	BYTE PTR SYMBOL[ecx+8], 8
cmp	BYTE PTR SYMBOL[ecx-8+ebp], al
cmp	BYTE PTR SYMBOL[ecx-8], 8
cmp	BYTE PTR SYMBOL[ecx], 8
cmp	BYTE PTR SYMBOL[edi+8], 8
cmp	BYTE PTR SYMBOL[edi+ebx], 8
cmp	BYTE PTR SYMBOL[edi-8], 8
cmp	BYTE PTR SYMBOL[edi], 8
cmp	BYTE PTR SYMBOL[edi], cl
cmp	BYTE PTR SYMBOL[edi], dl
cmp	BYTE PTR SYMBOL[edx+8+ebx], cl
cmp	BYTE PTR SYMBOL[edx-8], al
cmp	BYTE PTR SYMBOL[edx], 8
cmp	BYTE PTR SYMBOL[esi+8], 8
cmp	BYTE PTR SYMBOL[esi+eax], 8
cmp	BYTE PTR SYMBOL[esi+edx], 8
cmp	BYTE PTR SYMBOL[esi-8], 8
cmp	BYTE PTR SYMBOL[esi], 8
cmp	BYTE PTR SYMBOL[esi], al
cmp	BYTE PTR SYMBOL[esi], bl
cmp	BYTE PTR SYMBOL[esi], cl
cmp	DWORD PTR SYMBOL+8, -8
cmp	DWORD PTR SYMBOL+8, 8
cmp	DWORD PTR SYMBOL+8, eax
cmp	DWORD PTR SYMBOL+8, ebx
cmp	DWORD PTR SYMBOL+8, ecx
cmp	DWORD PTR SYMBOL+8, edx
cmp	DWORD PTR SYMBOL+8, esi
cmp	DWORD PTR SYMBOL, -8
cmp	DWORD PTR SYMBOL, 8
cmp	DWORD PTR SYMBOL, OFFSET FLAT:SYMBOL
cmp	DWORD PTR SYMBOL, OFFSET FLAT:SYMBOL+8
cmp	DWORD PTR SYMBOL, eax
cmp	DWORD PTR SYMBOL, ebp
cmp	DWORD PTR SYMBOL, ebx
cmp	DWORD PTR SYMBOL, ecx
cmp	DWORD PTR SYMBOL, edi
cmp	DWORD PTR SYMBOL, edx
cmp	DWORD PTR SYMBOL, esi
cmp	DWORD PTR SYMBOL[-8+ecx*8], ebp
cmp	DWORD PTR SYMBOL[-8+ecx*8], ebx
cmp	DWORD PTR SYMBOL[-8+ecx*8], esi
cmp	DWORD PTR SYMBOL[8+eax*8], -8
cmp	DWORD PTR SYMBOL[8+eax*8], 8
cmp	DWORD PTR SYMBOL[8+edi*8], 8
cmp	DWORD PTR SYMBOL[8+edx*8], 8
cmp	DWORD PTR SYMBOL[8+esi*8], 8
cmp	DWORD PTR SYMBOL[eax+8], 8
cmp	DWORD PTR SYMBOL[eax], 8
cmp	DWORD PTR SYMBOL[eax], ebx
cmp	DWORD PTR SYMBOL[eax], ecx
cmp	DWORD PTR SYMBOL[eax], edi
cmp	DWORD PTR SYMBOL[eax], edx
cmp	DWORD PTR SYMBOL[eax], esi
cmp	DWORD PTR SYMBOL[ebp+8+eax*8], -8
cmp	DWORD PTR SYMBOL[ebp+8+edx], -8
cmp	DWORD PTR SYMBOL[ebp+8], -8
cmp	DWORD PTR SYMBOL[ebp+8], ebx
cmp	DWORD PTR SYMBOL[ebp], 8
cmp	DWORD PTR SYMBOL[ebp], eax
cmp	DWORD PTR SYMBOL[ebp], ebx
cmp	DWORD PTR SYMBOL[ebp], ecx
cmp	DWORD PTR SYMBOL[ebp], edx
cmp	DWORD PTR SYMBOL[ebp], esi
cmp	DWORD PTR SYMBOL[ebx+8+eax*8], -8
cmp	DWORD PTR SYMBOL[ebx+8+ebp], -8
cmp	DWORD PTR SYMBOL[ebx+8+edx*8], -8
cmp	DWORD PTR SYMBOL[ebx+8], -8
cmp	DWORD PTR SYMBOL[ebx+8], 8
cmp	DWORD PTR SYMBOL[ebx+8], eax
cmp	DWORD PTR SYMBOL[ebx+8], ecx
cmp	DWORD PTR SYMBOL[ebx+8], edi
cmp	DWORD PTR SYMBOL[ebx+8], edx
cmp	DWORD PTR SYMBOL[ebx+8], esi
cmp	DWORD PTR SYMBOL[ebx+eax*8], 8
cmp	DWORD PTR SYMBOL[ebx+ecx*8], 8
cmp	DWORD PTR SYMBOL[ebx+edx*8], 8
cmp	DWORD PTR SYMBOL[ebx-8+ecx*8], eax
cmp	DWORD PTR SYMBOL[ebx], -8
cmp	DWORD PTR SYMBOL[ebx], 8
cmp	DWORD PTR SYMBOL[ebx], eax
cmp	DWORD PTR SYMBOL[ebx], ebp
cmp	DWORD PTR SYMBOL[ebx], ecx
cmp	DWORD PTR SYMBOL[ebx], edi
cmp	DWORD PTR SYMBOL[ebx], edx
cmp	DWORD PTR SYMBOL[ebx], esi
cmp	DWORD PTR SYMBOL[ecx+8], 8
cmp	DWORD PTR SYMBOL[ecx], 8
cmp	DWORD PTR SYMBOL[ecx], eax
cmp	DWORD PTR SYMBOL[edi+8], 8
cmp	DWORD PTR SYMBOL[edi+8], esi
cmp	DWORD PTR SYMBOL[edi], 8
cmp	DWORD PTR SYMBOL[edi], eax
cmp	DWORD PTR SYMBOL[edi], ebp
cmp	DWORD PTR SYMBOL[edi], ebx
cmp	DWORD PTR SYMBOL[edi], ecx
cmp	DWORD PTR SYMBOL[edi], esi
cmp	DWORD PTR SYMBOL[edx], 8
cmp	DWORD PTR SYMBOL[edx], eax
cmp	DWORD PTR SYMBOL[edx], ecx
cmp	DWORD PTR SYMBOL[edx], esi
cmp	DWORD PTR SYMBOL[esi+8], 8
cmp	DWORD PTR SYMBOL[esi], 8
cmp	DWORD PTR SYMBOL[esi], eax
cmp	DWORD PTR [eax+8], OFFSET FLAT:SYMBOL
cmp	DWORD PTR [ebp+8], OFFSET FLAT:SYMBOL
cmp	DWORD PTR [ebp-8], OFFSET FLAT:SYMBOL
cmp	DWORD PTR [ebx+8], OFFSET FLAT:SYMBOL
cmp	DWORD PTR [esi+8], OFFSET FLAT:SYMBOL
cmp	DWORD PTR [esp+8], OFFSET FLAT:SYMBOL
cmp	al, BYTE PTR SYMBOL
cmp	al, BYTE PTR SYMBOL[ebp]
cmp	al, BYTE PTR SYMBOL[ebx]
cmp	bl, BYTE PTR SYMBOL
cmp	bl, BYTE PTR SYMBOL[eax+eax]
cmp	bl, BYTE PTR SYMBOL[ebp+eax]
cmp	bl, BYTE PTR SYMBOL[edi+eax]
cmp	bl, BYTE PTR SYMBOL[edi+edx]
cmp	bl, BYTE PTR SYMBOL[edx]
cmp	bl, BYTE PTR SYMBOL[esi]
cmp	cl, BYTE PTR SYMBOL
cmp	cl, BYTE PTR SYMBOL[ebx+8+eax*8]
cmp	cl, BYTE PTR SYMBOL[ebx]
cmp	cl, BYTE PTR SYMBOL[esi+edx]
cmp	dl, BYTE PTR SYMBOL
cmp	dl, BYTE PTR SYMBOL[eax+8+eax]
cmp	dl, BYTE PTR SYMBOL[eax]
cmp	dl, BYTE PTR SYMBOL[ebx+eax*8]
cmp	dl, BYTE PTR SYMBOL[ebx-8]
cmp	dl, BYTE PTR SYMBOL[ebx]
cmp	dl, BYTE PTR SYMBOL[esi-8+ebx]
cmp	eax, DWORD PTR SYMBOL
cmp	eax, DWORD PTR SYMBOL+8
cmp	eax, DWORD PTR SYMBOL[ebp]
cmp	eax, DWORD PTR SYMBOL[ebx+8]
cmp	eax, DWORD PTR SYMBOL[ebx]
cmp	eax, DWORD PTR SYMBOL[ecx]
cmp	eax, DWORD PTR SYMBOL[edi]
cmp	eax, DWORD PTR SYMBOL[edx]
cmp	eax, DWORD PTR SYMBOL[esi]
cmp	eax, OFFSET FLAT:SYMBOL
cmp	eax, OFFSET FLAT:SYMBOL+8
cmp	ebp, DWORD PTR SYMBOL
cmp	ebp, DWORD PTR SYMBOL[ebx]
cmp	ebp, DWORD PTR SYMBOL[edi]
cmp	ebp, DWORD PTR SYMBOL[esi]
cmp	ebp, OFFSET FLAT:SYMBOL
cmp	ebp, OFFSET FLAT:SYMBOL+8
cmp	ebx, DWORD PTR SYMBOL
cmp	ebx, DWORD PTR SYMBOL[eax]
cmp	ebx, DWORD PTR SYMBOL[ebp]
cmp	ebx, DWORD PTR SYMBOL[ecx]
cmp	ebx, DWORD PTR SYMBOL[edi]
cmp	ebx, DWORD PTR SYMBOL[esi]
cmp	ebx, OFFSET FLAT:SYMBOL
cmp	ebx, OFFSET FLAT:SYMBOL+8
cmp	ecx, DWORD PTR SYMBOL
cmp	ecx, DWORD PTR SYMBOL[eax]
cmp	ecx, DWORD PTR SYMBOL[ebp]
cmp	ecx, DWORD PTR SYMBOL[ebx]
cmp	ecx, DWORD PTR SYMBOL[edi]
cmp	ecx, DWORD PTR SYMBOL[edx]
cmp	ecx, DWORD PTR SYMBOL[esi]
cmp	ecx, OFFSET FLAT:SYMBOL
cmp	edi, DWORD PTR SYMBOL
cmp	edi, DWORD PTR SYMBOL[ebx]
cmp	edi, DWORD PTR SYMBOL[esi]
cmp	edi, OFFSET FLAT:SYMBOL
cmp	edx, DWORD PTR SYMBOL
cmp	edx, DWORD PTR SYMBOL[ebp]
cmp	edx, DWORD PTR SYMBOL[ebx]
cmp	edx, DWORD PTR SYMBOL[ecx]
cmp	edx, DWORD PTR SYMBOL[edi]
cmp	edx, DWORD PTR SYMBOL[esi]
cmp	edx, OFFSET FLAT:SYMBOL
cmp	edx, OFFSET FLAT:SYMBOL+8
cmp	esi, DWORD PTR SYMBOL
cmp	esi, DWORD PTR SYMBOL[eax]
cmp	esi, DWORD PTR SYMBOL[ebp]
cmp	esi, DWORD PTR SYMBOL[ebx]
cmp	esi, DWORD PTR SYMBOL[edi]
cmp	esi, OFFSET FLAT:SYMBOL
cmp	esi, OFFSET FLAT:SYMBOL+8
dec	DWORD PTR SYMBOL
dec	DWORD PTR SYMBOL[ebx]
dec	DWORD PTR SYMBOL[edx]
dec	DWORD PTR SYMBOL[esi]
div	DWORD PTR SYMBOL[8+ebx*8]
div	DWORD PTR SYMBOL[8+ecx*8]
div	DWORD PTR SYMBOL[8+edi*8]
fild	QWORD PTR SYMBOL
fild	QWORD PTR SYMBOL[ebx]
fld	QWORD PTR SYMBOL
fld	QWORD PTR SYMBOL[ebx]
fstp	QWORD PTR SYMBOL
fstp	QWORD PTR SYMBOL[ebx]
imul	eax, DWORD PTR SYMBOL
imul	eax, DWORD PTR SYMBOL, 8
imul	eax, DWORD PTR SYMBOL[ebx], 8
imul	eax, DWORD PTR SYMBOL[ecx], 8
imul	eax, DWORD PTR SYMBOL[esi]
imul	ebx, DWORD PTR SYMBOL
imul	ebx, DWORD PTR SYMBOL, 8
imul	edi, DWORD PTR SYMBOL[ebx]
imul	edi, DWORD PTR SYMBOL[esi]
imul	edx, DWORD PTR SYMBOL
imul	edx, DWORD PTR SYMBOL, 8
imul	edx, DWORD PTR SYMBOL[ebx], 8
imul	edx, DWORD PTR SYMBOL[edi]
imul	esi, DWORD PTR SYMBOL
imul	esi, DWORD PTR SYMBOL[ebx], 8
imul	esi, DWORD PTR SYMBOL[edi]
inc	DWORD PTR SYMBOL
inc	DWORD PTR SYMBOL[eax]
inc	DWORD PTR SYMBOL[ebx]
inc	DWORD PTR SYMBOL[esi]
jmp	SYMBOL
jmp	[DWORD PTR SYMBOL]
lea	eax, 8+SYMBOL
lea	eax, SYMBOL
lea	eax, SYMBOL[8+eax*8]
lea	eax, SYMBOL[eax+8]
lea	eax, SYMBOL[eax+edx*8]
lea	eax, SYMBOL[eax]
lea	eax, SYMBOL[ebp+8]
lea	eax, SYMBOL[ebp+eax]
lea	eax, SYMBOL[ebp]
lea	eax, SYMBOL[ebx+8+eax*8]
lea	eax, SYMBOL[ebx+8]
lea	eax, SYMBOL[ebx+eax*8]
lea	eax, SYMBOL[ebx+eax]
lea	eax, SYMBOL[ebx+ebp]
lea	eax, SYMBOL[ebx+ecx]
lea	eax, SYMBOL[ebx]
lea	eax, SYMBOL[ecx]
lea	eax, SYMBOL[edi+8]
lea	eax, SYMBOL[edi]
lea	eax, SYMBOL[edx+8]
lea	eax, SYMBOL[edx]
lea	eax, SYMBOL[esi+8]
lea	eax, SYMBOL[esi]
lea	ebp, SYMBOL
lea	ebp, SYMBOL[eax]
lea	ebp, SYMBOL[ebp]
lea	ebp, SYMBOL[ebx+8]
lea	ebp, SYMBOL[ebx]
lea	ebp, SYMBOL[edx]
lea	ebx, SYMBOL
lea	ebx, SYMBOL[8+eax*8]
lea	ebx, SYMBOL[eax]
lea	ebx, SYMBOL[ebp]
lea	ebx, SYMBOL[ebx]
lea	ebx, SYMBOL[ecx]
lea	ebx, SYMBOL[edi]
lea	ebx, SYMBOL[edx+8]
lea	ebx, SYMBOL[edx]
lea	ebx, SYMBOL[esi]
lea	ecx, SYMBOL
lea	ecx, SYMBOL[8+ecx*8]
lea	ecx, SYMBOL[8+edx*8]
lea	ecx, SYMBOL[eax]
lea	ecx, SYMBOL[ebp+8]
lea	ecx, SYMBOL[ebp]
lea	ecx, SYMBOL[ebx+8]
lea	ecx, SYMBOL[ebx+eax]
lea	ecx, SYMBOL[ebx+ecx]
lea	ecx, SYMBOL[ebx+edx*8]
lea	ecx, SYMBOL[ebx]
lea	ecx, SYMBOL[ecx]
lea	ecx, SYMBOL[edi]
lea	ecx, SYMBOL[edx]
lea	ecx, SYMBOL[esi]
lea	edi, SYMBOL
lea	edi, SYMBOL[8+eax*8]
lea	edi, SYMBOL[8+edi*8]
lea	edi, SYMBOL[eax+8]
lea	edi, SYMBOL[eax]
lea	edi, SYMBOL[ebp]
lea	edi, SYMBOL[ebx+8]
lea	edi, SYMBOL[ebx+eax*8]
lea	edi, SYMBOL[ebx+eax]
lea	edi, SYMBOL[ebx+ebp]
lea	edi, SYMBOL[ebx]
lea	edi, SYMBOL[ecx]
lea	edi, SYMBOL[edi+8]
lea	edi, SYMBOL[edi]
lea	edi, SYMBOL[edx]
lea	edi, SYMBOL[esi]
lea	edx, SYMBOL
lea	edx, SYMBOL[8+eax*8]
lea	edx, SYMBOL[8+edx*8]
lea	edx, SYMBOL[eax+8]
lea	edx, SYMBOL[eax]
lea	edx, SYMBOL[ebp+8]
lea	edx, SYMBOL[ebp+esi]
lea	edx, SYMBOL[ebp]
lea	edx, SYMBOL[ebx+8]
lea	edx, SYMBOL[ebx+eax*8]
lea	edx, SYMBOL[ebx+edx*8]
lea	edx, SYMBOL[ebx+edx]
lea	edx, SYMBOL[ebx]
lea	edx, SYMBOL[ecx]
lea	edx, SYMBOL[edi+8]
lea	edx, SYMBOL[edi]
lea	edx, SYMBOL[edx+8]
lea	edx, SYMBOL[edx]
lea	edx, SYMBOL[esi]
lea	esi, SYMBOL
lea	esi, SYMBOL[8+eax*8]
lea	esi, SYMBOL[eax]
lea	esi, SYMBOL[ebp+8]
lea	esi, SYMBOL[ebp]
lea	esi, SYMBOL[ebx+8]
lea	esi, SYMBOL[ebx+eax]
lea	esi, SYMBOL[ebx]
lea	esi, SYMBOL[ecx]
lea	esi, SYMBOL[edi]
lea	esi, SYMBOL[edx]
lea	esi, SYMBOL[esi]
mov	BYTE PTR SYMBOL+8, 8
mov	BYTE PTR SYMBOL+8, al
mov	BYTE PTR SYMBOL+8, dl
mov	BYTE PTR SYMBOL, -8
mov	BYTE PTR SYMBOL, 8
mov	BYTE PTR SYMBOL, al
mov	BYTE PTR SYMBOL, bl
mov	BYTE PTR SYMBOL, cl
mov	BYTE PTR SYMBOL, dl
mov	BYTE PTR SYMBOL[8+eax*8], 8
mov	BYTE PTR SYMBOL[eax+8], 8
mov	BYTE PTR SYMBOL[eax+ebx], 8
mov	BYTE PTR SYMBOL[eax+ebx], al
mov	BYTE PTR SYMBOL[eax+ebx], dl
mov	BYTE PTR SYMBOL[eax+edi], al
mov	BYTE PTR SYMBOL[eax+edi], cl
mov	BYTE PTR SYMBOL[eax+edi], dl
mov	BYTE PTR SYMBOL[eax+esi], al
mov	BYTE PTR SYMBOL[eax-8], 8
mov	BYTE PTR SYMBOL[eax-8], cl
mov	BYTE PTR SYMBOL[eax-8], dl
mov	BYTE PTR SYMBOL[eax], 8
mov	BYTE PTR SYMBOL[eax], al
mov	BYTE PTR SYMBOL[eax], dl
mov	BYTE PTR SYMBOL[ebp+8], 8
mov	BYTE PTR SYMBOL[ebp+8], al
mov	BYTE PTR SYMBOL[ebp], -8
mov	BYTE PTR SYMBOL[ebp], 8
mov	BYTE PTR SYMBOL[ebp], al
mov	BYTE PTR SYMBOL[ebx+8+eax*8], 8
mov	BYTE PTR SYMBOL[ebx+8], 8
mov	BYTE PTR SYMBOL[ebx+8], al
mov	BYTE PTR SYMBOL[ebx+8], dl
mov	BYTE PTR SYMBOL[ebx+eax], 8
mov	BYTE PTR SYMBOL[ebx+edi], al
mov	BYTE PTR SYMBOL[ebx+edx], al
mov	BYTE PTR SYMBOL[ebx+esi], al
mov	BYTE PTR SYMBOL[ebx-8+eax], 8
mov	BYTE PTR SYMBOL[ebx-8+esi], 8
mov	BYTE PTR SYMBOL[ebx-8], 8
mov	BYTE PTR SYMBOL[ebx-8], al
mov	BYTE PTR SYMBOL[ebx], -8
mov	BYTE PTR SYMBOL[ebx], 8
mov	BYTE PTR SYMBOL[ebx], al
mov	BYTE PTR SYMBOL[ebx], bl
mov	BYTE PTR SYMBOL[ebx], cl
mov	BYTE PTR SYMBOL[ebx], dl
mov	BYTE PTR SYMBOL[ecx+ebx], al
mov	BYTE PTR SYMBOL[ecx], 8
mov	BYTE PTR SYMBOL[ecx], dl
mov	BYTE PTR SYMBOL[edi+8], 8
mov	BYTE PTR SYMBOL[edi+ebx], al
mov	BYTE PTR SYMBOL[edi-8], 8
mov	BYTE PTR SYMBOL[edi], 8
mov	BYTE PTR SYMBOL[edi], al
mov	BYTE PTR SYMBOL[edi], cl
mov	BYTE PTR SYMBOL[edi], dl
mov	BYTE PTR SYMBOL[edx+8], 8
mov	BYTE PTR SYMBOL[edx+8], al
mov	BYTE PTR SYMBOL[edx+ebx], al
mov	BYTE PTR SYMBOL[edx+ebx], cl
mov	BYTE PTR SYMBOL[edx+ebx], dl
mov	BYTE PTR SYMBOL[edx+edi], dl
mov	BYTE PTR SYMBOL[edx+esi], dl
mov	BYTE PTR SYMBOL[edx-8], al
mov	BYTE PTR SYMBOL[edx-8], cl
mov	BYTE PTR SYMBOL[edx], 8
mov	BYTE PTR SYMBOL[edx], al
mov	BYTE PTR SYMBOL[edx], bl
mov	BYTE PTR SYMBOL[edx], cl
mov	BYTE PTR SYMBOL[edx], dl
mov	BYTE PTR SYMBOL[esi+8], 8
mov	BYTE PTR SYMBOL[esi+ebx], al
mov	BYTE PTR SYMBOL[esi+ebx], cl
mov	BYTE PTR SYMBOL[esi+ebx], dl
mov	BYTE PTR SYMBOL[esi-8], al
mov	BYTE PTR SYMBOL[esi], 8
mov	BYTE PTR SYMBOL[esi], al
mov	BYTE PTR SYMBOL[esi], cl
mov	BYTE PTR SYMBOL[esi], dl
mov	DWORD PTR SYMBOL+8, -8
mov	DWORD PTR SYMBOL+8, 8
mov	DWORD PTR SYMBOL+8, OFFSET FLAT:LOCAL
mov	DWORD PTR SYMBOL+8, OFFSET FLAT:SYMBOL
mov	DWORD PTR SYMBOL+8, eax
mov	DWORD PTR SYMBOL+8, ebp
mov	DWORD PTR SYMBOL+8, ebx
mov	DWORD PTR SYMBOL+8, ecx
mov	DWORD PTR SYMBOL+8, edi
mov	DWORD PTR SYMBOL+8, edx
mov	DWORD PTR SYMBOL+8, esi
mov	DWORD PTR SYMBOL, -8
mov	DWORD PTR SYMBOL, 8
mov	DWORD PTR SYMBOL, OFFSET FLAT:LOCAL
mov	DWORD PTR SYMBOL, OFFSET FLAT:SYMBOL
mov	DWORD PTR SYMBOL, eax
mov	DWORD PTR SYMBOL, ebp
mov	DWORD PTR SYMBOL, ebx
mov	DWORD PTR SYMBOL, ecx
mov	DWORD PTR SYMBOL, edi
mov	DWORD PTR SYMBOL, edx
mov	DWORD PTR SYMBOL, esi
mov	DWORD PTR SYMBOL[-8+edi*8], edi
mov	DWORD PTR SYMBOL[-8+edx*8], edx
mov	DWORD PTR SYMBOL[8+eax*8], 8
mov	DWORD PTR SYMBOL[8+eax*8], ecx
mov	DWORD PTR SYMBOL[8+eax*8], edx
mov	DWORD PTR SYMBOL[8+eax*8], esi
mov	DWORD PTR SYMBOL[8+ebp*8], ebx
mov	DWORD PTR SYMBOL[8+ebp*8], esi
mov	DWORD PTR SYMBOL[8+ecx*8], eax
mov	DWORD PTR SYMBOL[8+ecx*8], edx
mov	DWORD PTR SYMBOL[8+edi*8], eax
mov	DWORD PTR SYMBOL[8+edi*8], ebp
mov	DWORD PTR SYMBOL[8+edi*8], ebx
mov	DWORD PTR SYMBOL[8+edx*8], eax
mov	DWORD PTR SYMBOL[eax+8], -8
mov	DWORD PTR SYMBOL[eax+8], 8
mov	DWORD PTR SYMBOL[eax+8], ebx
mov	DWORD PTR SYMBOL[eax+8], ecx
mov	DWORD PTR SYMBOL[eax+8], edi
mov	DWORD PTR SYMBOL[eax+8], edx
mov	DWORD PTR SYMBOL[eax+8], esi
mov	DWORD PTR SYMBOL[eax+ebp], edi
mov	DWORD PTR SYMBOL[eax+ebx], esi
mov	DWORD PTR SYMBOL[eax-8+ebx], edi
mov	DWORD PTR SYMBOL[eax-8], 8
mov	DWORD PTR SYMBOL[eax], -8
mov	DWORD PTR SYMBOL[eax], 8
mov	DWORD PTR SYMBOL[eax], ebp
mov	DWORD PTR SYMBOL[eax], ebx
mov	DWORD PTR SYMBOL[eax], ecx
mov	DWORD PTR SYMBOL[eax], edi
mov	DWORD PTR SYMBOL[eax], edx
mov	DWORD PTR SYMBOL[eax], esi
mov	DWORD PTR SYMBOL[ebp+8], -8
mov	DWORD PTR SYMBOL[ebp+8], 8
mov	DWORD PTR SYMBOL[ebp+8], eax
mov	DWORD PTR SYMBOL[ebp+8], ebx
mov	DWORD PTR SYMBOL[ebp+8], edi
mov	DWORD PTR SYMBOL[ebp+8], edx
mov	DWORD PTR SYMBOL[ebp+8], esi
mov	DWORD PTR SYMBOL[ebp], -8
mov	DWORD PTR SYMBOL[ebp], 8
mov	DWORD PTR SYMBOL[ebp], eax
mov	DWORD PTR SYMBOL[ebp], ebx
mov	DWORD PTR SYMBOL[ebp], ecx
mov	DWORD PTR SYMBOL[ebp], edi
mov	DWORD PTR SYMBOL[ebp], edx
mov	DWORD PTR SYMBOL[ebp], esi
mov	DWORD PTR SYMBOL[ebx+8+eax*8], ecx
mov	DWORD PTR SYMBOL[ebx+8+eax*8], edi
mov	DWORD PTR SYMBOL[ebx+8+eax*8], edx
mov	DWORD PTR SYMBOL[ebx+8+eax], 8
mov	DWORD PTR SYMBOL[ebx+8+eax], edx
mov	DWORD PTR SYMBOL[ebx+8+ecx*8], edx
mov	DWORD PTR SYMBOL[ebx+8+ecx], eax
mov	DWORD PTR SYMBOL[ebx+8], -8
mov	DWORD PTR SYMBOL[ebx+8], 8
mov	DWORD PTR SYMBOL[ebx+8], eax
mov	DWORD PTR SYMBOL[ebx+8], ebp
mov	DWORD PTR SYMBOL[ebx+8], ecx
mov	DWORD PTR SYMBOL[ebx+8], edi
mov	DWORD PTR SYMBOL[ebx+8], edx
mov	DWORD PTR SYMBOL[ebx+8], esi
mov	DWORD PTR SYMBOL[ebx+eax*8], 8
mov	DWORD PTR SYMBOL[ebx+eax*8], edi
mov	DWORD PTR SYMBOL[ebx+eax*8], edx
mov	DWORD PTR SYMBOL[ebx+eax], edx
mov	DWORD PTR SYMBOL[ebx+ebp*8], eax
mov	DWORD PTR SYMBOL[ebx+ecx*8], eax
mov	DWORD PTR SYMBOL[ebx+edi*8], eax
mov	DWORD PTR SYMBOL[ebx+edx*8], eax
mov	DWORD PTR SYMBOL[ebx-8+ecx*8], ecx
mov	DWORD PTR SYMBOL[ebx-8+edi*8], edi
mov	DWORD PTR SYMBOL[ebx], -8
mov	DWORD PTR SYMBOL[ebx], 8
mov	DWORD PTR SYMBOL[ebx], eax
mov	DWORD PTR SYMBOL[ebx], ebp
mov	DWORD PTR SYMBOL[ebx], ecx
mov	DWORD PTR SYMBOL[ebx], edi
mov	DWORD PTR SYMBOL[ebx], edx
mov	DWORD PTR SYMBOL[ebx], esi
mov	DWORD PTR SYMBOL[ecx+8], -8
mov	DWORD PTR SYMBOL[ecx+8], eax
mov	DWORD PTR SYMBOL[ecx+8], edi
mov	DWORD PTR SYMBOL[ecx+8], edx
mov	DWORD PTR SYMBOL[ecx+ebx], eax
mov	DWORD PTR SYMBOL[ecx], -8
mov	DWORD PTR SYMBOL[ecx], eax
mov	DWORD PTR SYMBOL[ecx], ebx
mov	DWORD PTR SYMBOL[ecx], edi
mov	DWORD PTR SYMBOL[ecx], edx
mov	DWORD PTR SYMBOL[ecx], esi
mov	DWORD PTR SYMBOL[edi+8], 8
mov	DWORD PTR SYMBOL[edi+8], eax
mov	DWORD PTR SYMBOL[edi+8], ebx
mov	DWORD PTR SYMBOL[edi+8], ecx
mov	DWORD PTR SYMBOL[edi+8], edx
mov	DWORD PTR SYMBOL[edi+8], esi
mov	DWORD PTR SYMBOL[edi], -8
mov	DWORD PTR SYMBOL[edi], 8
mov	DWORD PTR SYMBOL[edi], eax
mov	DWORD PTR SYMBOL[edi], ebp
mov	DWORD PTR SYMBOL[edi], ebx
mov	DWORD PTR SYMBOL[edi], ecx
mov	DWORD PTR SYMBOL[edi], edx
mov	DWORD PTR SYMBOL[edi], esi
mov	DWORD PTR SYMBOL[edx+8], eax
mov	DWORD PTR SYMBOL[edx], 8
mov	DWORD PTR SYMBOL[edx], eax
mov	DWORD PTR SYMBOL[edx], ecx
mov	DWORD PTR SYMBOL[edx], esi
mov	DWORD PTR SYMBOL[esi+8+eax], 8
mov	DWORD PTR SYMBOL[esi+8], -8
mov	DWORD PTR SYMBOL[esi+8], 8
mov	DWORD PTR SYMBOL[esi+8], eax
mov	DWORD PTR SYMBOL[esi+8], ebx
mov	DWORD PTR SYMBOL[esi+8], ecx
mov	DWORD PTR SYMBOL[esi+8], edx
mov	DWORD PTR SYMBOL[esi+eax], edx
mov	DWORD PTR SYMBOL[esi], -8
mov	DWORD PTR SYMBOL[esi], 8
mov	DWORD PTR SYMBOL[esi], eax
mov	DWORD PTR SYMBOL[esi], ebx
mov	DWORD PTR SYMBOL[esi], ecx
mov	DWORD PTR SYMBOL[esi], edi
mov	DWORD PTR SYMBOL[esi], edx
mov	DWORD PTR [eax+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [eax+edx*8], OFFSET FLAT:SYMBOL+8
mov	DWORD PTR [ebp+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [ebp-8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [ebp-8], OFFSET FLAT:SYMBOL+8
mov	DWORD PTR [ebx+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [edx+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [edx+eax*8], OFFSET FLAT:SYMBOL+8
mov	DWORD PTR [esi+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [esp+8], OFFSET FLAT:SYMBOL
mov	DWORD PTR [esp], OFFSET FLAT:SYMBOL
mov	WORD PTR SYMBOL+8, 8
mov	WORD PTR SYMBOL+8, ax
mov	WORD PTR SYMBOL, 8
mov	WORD PTR SYMBOL, ax
mov	WORD PTR SYMBOL, cx
mov	WORD PTR SYMBOL, dx
mov	WORD PTR SYMBOL[eax+8], 8
mov	WORD PTR SYMBOL[ebx+8], 8
mov	WORD PTR SYMBOL[ebx], 8
mov	WORD PTR SYMBOL[ebx], ax
mov	WORD PTR SYMBOL[edi], bx
mov	WORD PTR SYMBOL[edx+8], 8
mov	WORD PTR SYMBOL[edx+8], ax
mov	WORD PTR SYMBOL[edx], 8
mov	WORD PTR SYMBOL[edx], ax
mov	WORD PTR SYMBOL[edx], cx
mov	ah, BYTE PTR SYMBOL[ebx]
mov	ah, BYTE PTR SYMBOL[ecx]
mov	ah, BYTE PTR SYMBOL[edi]
mov	al, BYTE PTR SYMBOL
mov	al, BYTE PTR SYMBOL+8
mov	al, BYTE PTR SYMBOL[eax-8]
mov	al, BYTE PTR SYMBOL[eax]
mov	al, BYTE PTR SYMBOL[ebx+8+eax]
mov	al, BYTE PTR SYMBOL[ebx+8]
mov	al, BYTE PTR SYMBOL[ebx+eax]
mov	al, BYTE PTR SYMBOL[ebx+edx]
mov	al, BYTE PTR SYMBOL[ebx]
mov	al, BYTE PTR SYMBOL[ecx]
mov	al, BYTE PTR SYMBOL[edi]
mov	al, BYTE PTR SYMBOL[edx+eax]
mov	al, BYTE PTR SYMBOL[edx]
mov	al, BYTE PTR SYMBOL[esi+8]
mov	al, BYTE PTR SYMBOL[esi]
mov	ax, WORD PTR SYMBOL
mov	ax, WORD PTR SYMBOL[ebx]
mov	bh, BYTE PTR SYMBOL[eax]
mov	bl, BYTE PTR SYMBOL
mov	bl, BYTE PTR SYMBOL[eax-8]
mov	bl, BYTE PTR SYMBOL[eax]
mov	bl, BYTE PTR SYMBOL[ebx]
mov	bl, BYTE PTR SYMBOL[ecx]
mov	bl, BYTE PTR SYMBOL[edi]
mov	bl, BYTE PTR SYMBOL[edx]
mov	bl, BYTE PTR SYMBOL[esi]
mov	cl, BYTE PTR SYMBOL
mov	cl, BYTE PTR SYMBOL+8
mov	cl, BYTE PTR SYMBOL[eax]
mov	cl, BYTE PTR SYMBOL[ebx+8]
mov	cl, BYTE PTR SYMBOL[ebx+ecx]
mov	cl, BYTE PTR SYMBOL[ebx+edi]
mov	cl, BYTE PTR SYMBOL[ebx]
mov	cl, BYTE PTR SYMBOL[ecx]
mov	cl, BYTE PTR SYMBOL[edi]
mov	cl, BYTE PTR SYMBOL[esi]
mov	dl, BYTE PTR SYMBOL
mov	dl, BYTE PTR SYMBOL[eax+8]
mov	dl, BYTE PTR SYMBOL[ebx]
mov	dl, BYTE PTR SYMBOL[ecx]
mov	dl, BYTE PTR SYMBOL[edi]
mov	dl, BYTE PTR SYMBOL[edx-8]
mov	dl, BYTE PTR SYMBOL[edx]
mov	dl, BYTE PTR SYMBOL[esi]
mov	eax, DWORD PTR SYMBOL
mov	eax, DWORD PTR SYMBOL+8
mov	eax, DWORD PTR SYMBOL[8+eax*8]
mov	eax, DWORD PTR SYMBOL[8+ebp*8]
mov	eax, DWORD PTR SYMBOL[8+ebx*8]
mov	eax, DWORD PTR SYMBOL[8+ecx*8]
mov	eax, DWORD PTR SYMBOL[8+edi*8]
mov	eax, DWORD PTR SYMBOL[8+edx*8]
mov	eax, DWORD PTR SYMBOL[8+esi*8]
mov	eax, DWORD PTR SYMBOL[eax+8+edx*8]
mov	eax, DWORD PTR SYMBOL[eax+8]
mov	eax, DWORD PTR SYMBOL[eax+ecx*8]
mov	eax, DWORD PTR SYMBOL[eax+edi*8]
mov	eax, DWORD PTR SYMBOL[eax+edx*8]
mov	eax, DWORD PTR SYMBOL[eax]
mov	eax, DWORD PTR SYMBOL[ebp+8+eax*8]
mov	eax, DWORD PTR SYMBOL[ebp+8]
mov	eax, DWORD PTR SYMBOL[ebp+ecx*8]
mov	eax, DWORD PTR SYMBOL[ebp]
mov	eax, DWORD PTR SYMBOL[ebx+8+eax*8]
mov	eax, DWORD PTR SYMBOL[ebx+8+eax]
mov	eax, DWORD PTR SYMBOL[ebx+8+edx]
mov	eax, DWORD PTR SYMBOL[ebx+8+esi*8]
mov	eax, DWORD PTR SYMBOL[ebx+8+esi]
mov	eax, DWORD PTR SYMBOL[ebx+8]
mov	eax, DWORD PTR SYMBOL[ebx+eax*8]
mov	eax, DWORD PTR SYMBOL[ebx+ebp*8]
mov	eax, DWORD PTR SYMBOL[ebx+ecx*8]
mov	eax, DWORD PTR SYMBOL[ebx+edi]
mov	eax, DWORD PTR SYMBOL[ebx+edx*8]
mov	eax, DWORD PTR SYMBOL[ebx]
mov	eax, DWORD PTR SYMBOL[ecx+8+eax*8]
mov	eax, DWORD PTR SYMBOL[ecx+8]
mov	eax, DWORD PTR SYMBOL[ecx]
mov	eax, DWORD PTR SYMBOL[edi+8]
mov	eax, DWORD PTR SYMBOL[edi+eax*8]
mov	eax, DWORD PTR SYMBOL[edi+esi*8]
mov	eax, DWORD PTR SYMBOL[edi]
mov	eax, DWORD PTR SYMBOL[edx+8]
mov	eax, DWORD PTR SYMBOL[edx+eax*8]
mov	eax, DWORD PTR SYMBOL[edx]
mov	eax, DWORD PTR SYMBOL[esi+8+ebx*8]
mov	eax, DWORD PTR SYMBOL[esi+8]
mov	eax, DWORD PTR SYMBOL[esi+eax*8]
mov	eax, DWORD PTR SYMBOL[esi+ebp*8]
mov	eax, DWORD PTR SYMBOL[esi]
mov	eax, OFFSET FLAT:SYMBOL
mov	eax, OFFSET FLAT:SYMBOL+8
mov	ebp, DWORD PTR SYMBOL
mov	ebp, DWORD PTR SYMBOL+8
mov	ebp, DWORD PTR SYMBOL[8+eax*8]
mov	ebp, DWORD PTR SYMBOL[8+edi*8]
mov	ebp, DWORD PTR SYMBOL[8+edx*8]
mov	ebp, DWORD PTR SYMBOL[8+esi*8]
mov	ebp, DWORD PTR SYMBOL[eax]
mov	ebp, DWORD PTR SYMBOL[ebp]
mov	ebp, DWORD PTR SYMBOL[ebx+8+eax*8]
mov	ebp, DWORD PTR SYMBOL[ebx+8]
mov	ebp, DWORD PTR SYMBOL[ebx+eax*8]
mov	ebp, DWORD PTR SYMBOL[ebx]
mov	ebp, DWORD PTR SYMBOL[ecx+8]
mov	ebp, DWORD PTR SYMBOL[ecx+eax*8]
mov	ebp, DWORD PTR SYMBOL[ecx]
mov	ebp, DWORD PTR SYMBOL[edi]
mov	ebp, DWORD PTR SYMBOL[edx]
mov	ebp, DWORD PTR SYMBOL[esi+8+eax*8]
mov	ebp, DWORD PTR SYMBOL[esi]
mov	ebp, OFFSET FLAT:SYMBOL
mov	ebp, OFFSET FLAT:SYMBOL+8
mov	ebx, DWORD PTR SYMBOL
mov	ebx, DWORD PTR SYMBOL+8
mov	ebx, DWORD PTR SYMBOL[8+eax*8]
mov	ebx, DWORD PTR SYMBOL[8+ebx*8]
mov	ebx, DWORD PTR SYMBOL[8+ecx*8]
mov	ebx, DWORD PTR SYMBOL[8+edi*8]
mov	ebx, DWORD PTR SYMBOL[8+edx*8]
mov	ebx, DWORD PTR SYMBOL[eax+8]
mov	ebx, DWORD PTR SYMBOL[eax]
mov	ebx, DWORD PTR SYMBOL[ebp+8]
mov	ebx, DWORD PTR SYMBOL[ebp]
mov	ebx, DWORD PTR SYMBOL[ebx+8]
mov	ebx, DWORD PTR SYMBOL[ebx]
mov	ebx, DWORD PTR SYMBOL[ecx+8+ebx*8]
mov	ebx, DWORD PTR SYMBOL[ecx+8]
mov	ebx, DWORD PTR SYMBOL[ecx]
mov	ebx, DWORD PTR SYMBOL[edi+8]
mov	ebx, DWORD PTR SYMBOL[edi]
mov	ebx, DWORD PTR SYMBOL[edx+8+ebx*8]
mov	ebx, DWORD PTR SYMBOL[edx+ecx*8]
mov	ebx, DWORD PTR SYMBOL[edx]
mov	ebx, DWORD PTR SYMBOL[esi+8]
mov	ebx, DWORD PTR SYMBOL[esi]
mov	ebx, OFFSET FLAT:SYMBOL
mov	ebx, OFFSET FLAT:SYMBOL+8
mov	ecx, DWORD PTR SYMBOL
mov	ecx, DWORD PTR SYMBOL+8
mov	ecx, DWORD PTR SYMBOL[8+eax*8]
mov	ecx, DWORD PTR SYMBOL[8+ebp*8]
mov	ecx, DWORD PTR SYMBOL[8+ecx*8]
mov	ecx, DWORD PTR SYMBOL[8+edx*8]
mov	ecx, DWORD PTR SYMBOL[8+esi*8]
mov	ecx, DWORD PTR SYMBOL[eax+8]
mov	ecx, DWORD PTR SYMBOL[eax]
mov	ecx, DWORD PTR SYMBOL[ebp+8]
mov	ecx, DWORD PTR SYMBOL[ebp]
mov	ecx, DWORD PTR SYMBOL[ebx+8+eax]
mov	ecx, DWORD PTR SYMBOL[ebx+8+ecx*8]
mov	ecx, DWORD PTR SYMBOL[ebx+8]
mov	ecx, DWORD PTR SYMBOL[ebx+eax*8]
mov	ecx, DWORD PTR SYMBOL[ebx+ecx*8]
mov	ecx, DWORD PTR SYMBOL[ebx+edx*8]
mov	ecx, DWORD PTR SYMBOL[ebx]
mov	ecx, DWORD PTR SYMBOL[ecx+8]
mov	ecx, DWORD PTR SYMBOL[ecx]
mov	ecx, DWORD PTR SYMBOL[edi+8]
mov	ecx, DWORD PTR SYMBOL[edi]
mov	ecx, DWORD PTR SYMBOL[edx]
mov	ecx, DWORD PTR SYMBOL[esi]
mov	ecx, OFFSET FLAT:SYMBOL
mov	ecx, OFFSET FLAT:SYMBOL+8
mov	edi, DWORD PTR SYMBOL
mov	edi, DWORD PTR SYMBOL+8
mov	edi, DWORD PTR SYMBOL[8+eax*8]
mov	edi, DWORD PTR SYMBOL[8+ebp*8]
mov	edi, DWORD PTR SYMBOL[8+ebx*8]
mov	edi, DWORD PTR SYMBOL[8+ecx*8]
mov	edi, DWORD PTR SYMBOL[8+edi*8]
mov	edi, DWORD PTR SYMBOL[8+edx*8]
mov	edi, DWORD PTR SYMBOL[8+esi*8]
mov	edi, DWORD PTR SYMBOL[eax+8]
mov	edi, DWORD PTR SYMBOL[eax+ebx]
mov	edi, DWORD PTR SYMBOL[eax]
mov	edi, DWORD PTR SYMBOL[ebp+8]
mov	edi, DWORD PTR SYMBOL[ebp]
mov	edi, DWORD PTR SYMBOL[ebx+8]
mov	edi, DWORD PTR SYMBOL[ebx+eax*8]
mov	edi, DWORD PTR SYMBOL[ebx+ebp*8]
mov	edi, DWORD PTR SYMBOL[ebx+esi*8]
mov	edi, DWORD PTR SYMBOL[ebx]
mov	edi, DWORD PTR SYMBOL[ecx+8]
mov	edi, DWORD PTR SYMBOL[ecx]
mov	edi, DWORD PTR SYMBOL[edi+8]
mov	edi, DWORD PTR SYMBOL[edi]
mov	edi, DWORD PTR SYMBOL[edx+8]
mov	edi, DWORD PTR SYMBOL[esi+8]
mov	edi, DWORD PTR SYMBOL[esi+eax*8]
mov	edi, DWORD PTR SYMBOL[esi]
mov	edi, OFFSET FLAT:SYMBOL
mov	edi, OFFSET FLAT:SYMBOL+8
mov	edi, OFFSET FLAT:SYMBOL-8
mov	edx, DWORD PTR SYMBOL
mov	edx, DWORD PTR SYMBOL+8
mov	edx, DWORD PTR SYMBOL[8+eax*8]
mov	edx, DWORD PTR SYMBOL[8+ebp*8]
mov	edx, DWORD PTR SYMBOL[8+ebx*8]
mov	edx, DWORD PTR SYMBOL[8+ecx*8]
mov	edx, DWORD PTR SYMBOL[8+edi*8]
mov	edx, DWORD PTR SYMBOL[8+edx*8]
mov	edx, DWORD PTR SYMBOL[8+esi*8]
mov	edx, DWORD PTR SYMBOL[eax+8]
mov	edx, DWORD PTR SYMBOL[eax+edx*8]
mov	edx, DWORD PTR SYMBOL[eax]
mov	edx, DWORD PTR SYMBOL[ebp+8]
mov	edx, DWORD PTR SYMBOL[ebp+esi*8]
mov	edx, DWORD PTR SYMBOL[ebp]
mov	edx, DWORD PTR SYMBOL[ebx+8+eax*8]
mov	edx, DWORD PTR SYMBOL[ebx+8+ecx*8]
mov	edx, DWORD PTR SYMBOL[ebx+8+edx*8]
mov	edx, DWORD PTR SYMBOL[ebx+8]
mov	edx, DWORD PTR SYMBOL[ebx+eax*8]
mov	edx, DWORD PTR SYMBOL[ebx+ecx*8]
mov	edx, DWORD PTR SYMBOL[ebx+edi*8]
mov	edx, DWORD PTR SYMBOL[ebx+edx*8]
mov	edx, DWORD PTR SYMBOL[ebx]
mov	edx, DWORD PTR SYMBOL[ecx+8]
mov	edx, DWORD PTR SYMBOL[ecx+edx*8]
mov	edx, DWORD PTR SYMBOL[ecx]
mov	edx, DWORD PTR SYMBOL[edi+8]
mov	edx, DWORD PTR SYMBOL[edi+edx*8]
mov	edx, DWORD PTR SYMBOL[edi]
mov	edx, DWORD PTR SYMBOL[edx]
mov	edx, DWORD PTR SYMBOL[esi+8]
mov	edx, DWORD PTR SYMBOL[esi+eax*8]
mov	edx, DWORD PTR SYMBOL[esi+ebp*8]
mov	edx, DWORD PTR SYMBOL[esi]
mov	edx, OFFSET FLAT:SYMBOL
mov	edx, OFFSET FLAT:SYMBOL+8
mov	esi, DWORD PTR SYMBOL
mov	esi, DWORD PTR SYMBOL+8
mov	esi, DWORD PTR SYMBOL[8+eax*8]
mov	esi, DWORD PTR SYMBOL[8+ebx*8]
mov	esi, DWORD PTR SYMBOL[8+ecx*8]
mov	esi, DWORD PTR SYMBOL[8+edi*8]
mov	esi, DWORD PTR SYMBOL[8+edx*8]
mov	esi, DWORD PTR SYMBOL[8+esi*8]
mov	esi, DWORD PTR SYMBOL[eax+8]
mov	esi, DWORD PTR SYMBOL[eax]
mov	esi, DWORD PTR SYMBOL[ebp+8]
mov	esi, DWORD PTR SYMBOL[ebp]
mov	esi, DWORD PTR SYMBOL[ebx+8+eax*8]
mov	esi, DWORD PTR SYMBOL[ebx+8+eax]
mov	esi, DWORD PTR SYMBOL[ebx+8]
mov	esi, DWORD PTR SYMBOL[ebx+eax*8]
mov	esi, DWORD PTR SYMBOL[ebx+edx]
mov	esi, DWORD PTR SYMBOL[ebx]
mov	esi, DWORD PTR SYMBOL[ecx+eax*8]
mov	esi, DWORD PTR SYMBOL[ecx]
mov	esi, DWORD PTR SYMBOL[edi+8]
mov	esi, DWORD PTR SYMBOL[edi+eax*8]
mov	esi, DWORD PTR SYMBOL[edi]
mov	esi, DWORD PTR SYMBOL[edx+8+ebx*8]
mov	esi, DWORD PTR SYMBOL[edx+ecx*8]
mov	esi, DWORD PTR SYMBOL[edx]
mov	esi, DWORD PTR SYMBOL[esi]
mov	esi, OFFSET FLAT:SYMBOL
mov	esi, OFFSET FLAT:SYMBOL+8
movsx	eax, BYTE PTR SYMBOL
movsx	eax, BYTE PTR SYMBOL[eax+ebx]
movsx	eax, BYTE PTR SYMBOL[eax+ecx]
movsx	eax, BYTE PTR SYMBOL[eax+edi]
movsx	eax, BYTE PTR SYMBOL[eax-8+ecx]
movsx	eax, BYTE PTR SYMBOL[eax-8]
movsx	eax, BYTE PTR SYMBOL[eax]
movsx	eax, BYTE PTR SYMBOL[ebp+eax]
movsx	eax, BYTE PTR SYMBOL[ebp-8+ecx]
movsx	eax, BYTE PTR SYMBOL[ebp]
movsx	eax, BYTE PTR SYMBOL[ebx+eax]
movsx	eax, BYTE PTR SYMBOL[ebx+ecx]
movsx	eax, BYTE PTR SYMBOL[ebx]
movsx	eax, BYTE PTR SYMBOL[ecx+eax]
movsx	eax, BYTE PTR SYMBOL[ecx]
movsx	eax, BYTE PTR SYMBOL[edi+8+eax]
movsx	eax, BYTE PTR SYMBOL[edi+eax]
movsx	eax, BYTE PTR SYMBOL[edi+ecx]
movsx	eax, BYTE PTR SYMBOL[edi+edx]
movsx	eax, BYTE PTR SYMBOL[edi]
movsx	eax, BYTE PTR SYMBOL[edx]
movsx	eax, BYTE PTR SYMBOL[esi+ebx]
movsx	eax, BYTE PTR SYMBOL[esi]
movsx	ebp, BYTE PTR SYMBOL
movsx	ebp, BYTE PTR SYMBOL[eax+8]
movsx	ebp, BYTE PTR SYMBOL[eax]
movsx	ebp, BYTE PTR SYMBOL[ebx]
movsx	ebp, BYTE PTR SYMBOL[ecx-8]
movsx	ebp, BYTE PTR SYMBOL[edx]
movsx	ebx, BYTE PTR SYMBOL
movsx	ebx, BYTE PTR SYMBOL[eax+ebx]
movsx	ebx, BYTE PTR SYMBOL[eax]
movsx	ebx, BYTE PTR SYMBOL[ebp+eax]
movsx	ebx, BYTE PTR SYMBOL[ebp-8+ecx]
movsx	ebx, BYTE PTR SYMBOL[ebp]
movsx	ebx, BYTE PTR SYMBOL[ebx-8+ecx]
movsx	ebx, BYTE PTR SYMBOL[ebx]
movsx	ebx, BYTE PTR SYMBOL[ecx+edx]
movsx	ebx, BYTE PTR SYMBOL[edi+edx]
movsx	ebx, BYTE PTR SYMBOL[edi]
movsx	ebx, BYTE PTR SYMBOL[edx]
movsx	ebx, WORD PTR SYMBOL[edx+8+ebx*8]
movsx	ebx, WORD PTR SYMBOL[edx+ebx*8]
movsx	ecx, BYTE PTR SYMBOL
movsx	ecx, BYTE PTR SYMBOL[eax+ecx]
movsx	ecx, BYTE PTR SYMBOL[eax+edi]
movsx	ecx, BYTE PTR SYMBOL[eax+esi]
movsx	ecx, BYTE PTR SYMBOL[eax]
movsx	ecx, BYTE PTR SYMBOL[ebp+ebx]
movsx	ecx, BYTE PTR SYMBOL[ebp+edx]
movsx	ecx, BYTE PTR SYMBOL[ebx+eax]
movsx	ecx, BYTE PTR SYMBOL[ebx+ecx]
movsx	ecx, BYTE PTR SYMBOL[ebx+edx]
movsx	ecx, BYTE PTR SYMBOL[ebx]
movsx	ecx, BYTE PTR SYMBOL[ecx-8+edi]
movsx	ecx, BYTE PTR SYMBOL[ecx]
movsx	ecx, BYTE PTR SYMBOL[edi+ebx]
movsx	ecx, BYTE PTR SYMBOL[edi+edx]
movsx	ecx, BYTE PTR SYMBOL[edi]
movsx	ecx, BYTE PTR SYMBOL[edx]
movsx	ecx, BYTE PTR SYMBOL[esi+ebx]
movsx	ecx, BYTE PTR SYMBOL[esi+ecx]
movsx	ecx, BYTE PTR SYMBOL[esi+edx]
movsx	ecx, WORD PTR SYMBOL[eax+eax]
movsx	ecx, WORD PTR SYMBOL[ebx+ecx*8]
movsx	edi, BYTE PTR SYMBOL
movsx	edi, BYTE PTR SYMBOL[eax]
movsx	edi, BYTE PTR SYMBOL[ebp+eax]
movsx	edi, BYTE PTR SYMBOL[ebp]
movsx	edi, BYTE PTR SYMBOL[ebx+eax]
movsx	edi, BYTE PTR SYMBOL[ebx]
movsx	edi, BYTE PTR SYMBOL[edi+eax]
movsx	edi, BYTE PTR SYMBOL[edx]
movsx	edi, BYTE PTR SYMBOL[esi]
movsx	edx, BYTE PTR SYMBOL
movsx	edx, BYTE PTR SYMBOL[eax+ebp]
movsx	edx, BYTE PTR SYMBOL[eax+ebx]
movsx	edx, BYTE PTR SYMBOL[eax+edi]
movsx	edx, BYTE PTR SYMBOL[eax]
movsx	edx, BYTE PTR SYMBOL[ebp+edi]
movsx	edx, BYTE PTR SYMBOL[ebx+eax]
movsx	edx, BYTE PTR SYMBOL[ebx+ecx]
movsx	edx, BYTE PTR SYMBOL[ebx+edx]
movsx	edx, BYTE PTR SYMBOL[ebx]
movsx	edx, BYTE PTR SYMBOL[ecx-8]
movsx	edx, BYTE PTR SYMBOL[edi+ecx]
movsx	edx, BYTE PTR SYMBOL[edi-8+ecx]
movsx	edx, BYTE PTR SYMBOL[edi]
movsx	edx, BYTE PTR SYMBOL[edx-8]
movsx	edx, BYTE PTR SYMBOL[edx]
movsx	edx, BYTE PTR SYMBOL[esi+eax]
movsx	edx, BYTE PTR SYMBOL[esi+edx]
movsx	edx, BYTE PTR SYMBOL[esi-8+ecx]
movsx	edx, BYTE PTR SYMBOL[esi]
movsx	edx, WORD PTR SYMBOL[ebx+edx*8]
movsx	edx, WORD PTR SYMBOL[ecx+edx*8]
movsx	edx, WORD PTR SYMBOL[edx+8+edx]
movsx	edx, WORD PTR SYMBOL[edx+edx]
movsx	esi, BYTE PTR SYMBOL
movsx	esi, BYTE PTR SYMBOL[eax]
movsx	esi, BYTE PTR SYMBOL[ebp+edi]
movsx	esi, BYTE PTR SYMBOL[ebx]
movsx	esi, BYTE PTR SYMBOL[ecx]
movsx	esi, BYTE PTR SYMBOL[edi+ecx]
movsx	esi, BYTE PTR SYMBOL[edx]
movsx	esi, BYTE PTR SYMBOL[esi]
movzx	eax, BYTE PTR SYMBOL
movzx	eax, BYTE PTR SYMBOL+8
movzx	eax, BYTE PTR SYMBOL[eax+8+eax]
movzx	eax, BYTE PTR SYMBOL[eax+8]
movzx	eax, BYTE PTR SYMBOL[eax+eax]
movzx	eax, BYTE PTR SYMBOL[eax+ecx]
movzx	eax, BYTE PTR SYMBOL[eax-8]
movzx	eax, BYTE PTR SYMBOL[eax]
movzx	eax, BYTE PTR SYMBOL[ebp+8]
movzx	eax, BYTE PTR SYMBOL[ebp+eax]
movzx	eax, BYTE PTR SYMBOL[ebp]
movzx	eax, BYTE PTR SYMBOL[ebx+8+eax*8]
movzx	eax, BYTE PTR SYMBOL[ebx+8]
movzx	eax, BYTE PTR SYMBOL[ebx+eax*8]
movzx	eax, BYTE PTR SYMBOL[ebx+eax]
movzx	eax, BYTE PTR SYMBOL[ebx+ecx]
movzx	eax, BYTE PTR SYMBOL[ebx+edx]
movzx	eax, BYTE PTR SYMBOL[ebx]
movzx	eax, BYTE PTR SYMBOL[ecx+eax]
movzx	eax, BYTE PTR SYMBOL[ecx+ebx]
movzx	eax, BYTE PTR SYMBOL[ecx+edi]
movzx	eax, BYTE PTR SYMBOL[ecx]
movzx	eax, BYTE PTR SYMBOL[edi]
movzx	eax, BYTE PTR SYMBOL[edx+eax]
movzx	eax, BYTE PTR SYMBOL[edx]
movzx	eax, BYTE PTR SYMBOL[esi+8]
movzx	eax, BYTE PTR SYMBOL[esi+ebx]
movzx	eax, BYTE PTR SYMBOL[esi]
movzx	eax, WORD PTR SYMBOL
movzx	eax, WORD PTR SYMBOL[eax+8+eax]
movzx	eax, WORD PTR SYMBOL[eax+eax]
movzx	eax, WORD PTR SYMBOL[eax+edx*8]
movzx	eax, WORD PTR SYMBOL[ebx]
movzx	eax, WORD PTR SYMBOL[edi+eax*8]
movzx	eax, WORD PTR SYMBOL[edx+edx]
movzx	ebp, BYTE PTR SYMBOL
movzx	ebp, BYTE PTR SYMBOL+8
movzx	ebp, BYTE PTR SYMBOL[eax]
movzx	ebp, BYTE PTR SYMBOL[ebp]
movzx	ebp, BYTE PTR SYMBOL[ebx+ebp]
movzx	ebp, BYTE PTR SYMBOL[ebx]
movzx	ebp, BYTE PTR SYMBOL[esi]
movzx	ebx, BYTE PTR SYMBOL
movzx	ebx, BYTE PTR SYMBOL+8
movzx	ebx, BYTE PTR SYMBOL[eax+8]
movzx	ebx, BYTE PTR SYMBOL[eax]
movzx	ebx, BYTE PTR SYMBOL[ebp]
movzx	ebx, BYTE PTR SYMBOL[ebx+eax]
movzx	ebx, BYTE PTR SYMBOL[ebx+ecx]
movzx	ebx, BYTE PTR SYMBOL[ebx]
movzx	ebx, BYTE PTR SYMBOL[ecx+ebp]
movzx	ebx, BYTE PTR SYMBOL[ecx]
movzx	ebx, BYTE PTR SYMBOL[edi+8]
movzx	ebx, BYTE PTR SYMBOL[edi]
movzx	ebx, BYTE PTR SYMBOL[esi]
movzx	ebx, WORD PTR SYMBOL[edx+8+eax*8]
movzx	ebx, WORD PTR SYMBOL[edx+eax*8]
movzx	ecx, BYTE PTR SYMBOL
movzx	ecx, BYTE PTR SYMBOL+8
movzx	ecx, BYTE PTR SYMBOL[8+ecx*8]
movzx	ecx, BYTE PTR SYMBOL[eax+ebx]
movzx	ecx, BYTE PTR SYMBOL[eax+ecx]
movzx	ecx, BYTE PTR SYMBOL[eax]
movzx	ecx, BYTE PTR SYMBOL[ebp]
movzx	ecx, BYTE PTR SYMBOL[ebx+eax]
movzx	ecx, BYTE PTR SYMBOL[ebx+ecx]
movzx	ecx, BYTE PTR SYMBOL[ebx-8+esi]
movzx	ecx, BYTE PTR SYMBOL[ebx]
movzx	ecx, BYTE PTR SYMBOL[ecx]
movzx	ecx, BYTE PTR SYMBOL[edi+ebp]
movzx	ecx, BYTE PTR SYMBOL[edi+esi]
movzx	ecx, BYTE PTR SYMBOL[edi]
movzx	ecx, BYTE PTR SYMBOL[edx+8]
movzx	ecx, BYTE PTR SYMBOL[edx]
movzx	ecx, BYTE PTR SYMBOL[esi+ebp]
movzx	ecx, BYTE PTR SYMBOL[esi+ebx]
movzx	ecx, BYTE PTR SYMBOL[esi+edi]
movzx	ecx, BYTE PTR SYMBOL[esi]
movzx	ecx, WORD PTR SYMBOL[eax+eax]
movzx	ecx, WORD PTR SYMBOL[ebx+edx*8]
movzx	ecx, WORD PTR SYMBOL[edx+8+ecx*8]
movzx	ecx, WORD PTR SYMBOL[edx+edx]
movzx	edi, BYTE PTR SYMBOL
movzx	edi, BYTE PTR SYMBOL+8
movzx	edi, BYTE PTR SYMBOL[eax+8]
movzx	edi, BYTE PTR SYMBOL[eax]
movzx	edi, BYTE PTR SYMBOL[ebp]
movzx	edi, BYTE PTR SYMBOL[ebx+ecx]
movzx	edi, BYTE PTR SYMBOL[ebx+edi]
movzx	edi, BYTE PTR SYMBOL[ebx+esi]
movzx	edi, BYTE PTR SYMBOL[ebx-8]
movzx	edi, BYTE PTR SYMBOL[ebx]
movzx	edi, BYTE PTR SYMBOL[ecx]
movzx	edi, BYTE PTR SYMBOL[edi]
movzx	edi, BYTE PTR SYMBOL[edx]
movzx	edi, BYTE PTR SYMBOL[esi]
movzx	edx, BYTE PTR SYMBOL
movzx	edx, BYTE PTR SYMBOL+8
movzx	edx, BYTE PTR SYMBOL[8+eax*8]
movzx	edx, BYTE PTR SYMBOL[8+ebp*8]
movzx	edx, BYTE PTR SYMBOL[eax+edx]
movzx	edx, BYTE PTR SYMBOL[eax]
movzx	edx, BYTE PTR SYMBOL[ebp+edx]
movzx	edx, BYTE PTR SYMBOL[ebp]
movzx	edx, BYTE PTR SYMBOL[ebx+8+eax*8]
movzx	edx, BYTE PTR SYMBOL[ebx+8+edx*8]
movzx	edx, BYTE PTR SYMBOL[ebx+8]
movzx	edx, BYTE PTR SYMBOL[ebx+eax]
movzx	edx, BYTE PTR SYMBOL[ebx+ecx]
movzx	edx, BYTE PTR SYMBOL[ebx+edi]
movzx	edx, BYTE PTR SYMBOL[ebx+edx]
movzx	edx, BYTE PTR SYMBOL[ebx+esi]
movzx	edx, BYTE PTR SYMBOL[ebx]
movzx	edx, BYTE PTR SYMBOL[ecx]
movzx	edx, BYTE PTR SYMBOL[edi+8]
movzx	edx, BYTE PTR SYMBOL[edi]
movzx	edx, BYTE PTR SYMBOL[edx-8]
movzx	edx, BYTE PTR SYMBOL[edx]
movzx	edx, BYTE PTR SYMBOL[esi+8]
movzx	edx, BYTE PTR SYMBOL[esi+ebx]
movzx	edx, BYTE PTR SYMBOL[esi+edx]
movzx	edx, BYTE PTR SYMBOL[esi]
movzx	edx, WORD PTR SYMBOL
movzx	edx, WORD PTR SYMBOL[eax+8+eax]
movzx	edx, WORD PTR SYMBOL[eax+8+edx*8]
movzx	edx, WORD PTR SYMBOL[eax+eax]
movzx	edx, WORD PTR SYMBOL[ebx+ecx*8]
movzx	edx, WORD PTR SYMBOL[ebx]
movzx	edx, WORD PTR SYMBOL[ecx+edx*8]
movzx	edx, WORD PTR SYMBOL[edx+8+edx]
movzx	edx, WORD PTR SYMBOL[edx+edx]
movzx	edx, WORD PTR SYMBOL[edx]
movzx	esi, BYTE PTR SYMBOL
movzx	esi, BYTE PTR SYMBOL+8
movzx	esi, BYTE PTR SYMBOL[ebp]
movzx	esi, BYTE PTR SYMBOL[ebx+eax]
movzx	esi, BYTE PTR SYMBOL[ebx+ecx]
movzx	esi, BYTE PTR SYMBOL[ebx]
movzx	esi, BYTE PTR SYMBOL[ecx+ebx]
movzx	esi, BYTE PTR SYMBOL[ecx]
movzx	esi, BYTE PTR SYMBOL[edi+8]
movzx	esi, BYTE PTR SYMBOL[edi-8]
movzx	esi, BYTE PTR SYMBOL[edi]
movzx	esi, BYTE PTR SYMBOL[edx]
movzx	esi, BYTE PTR SYMBOL[esi+ecx]
neg	DWORD PTR SYMBOL+8
neg	DWORD PTR SYMBOL[ebp+8]
neg	DWORD PTR SYMBOL[ebx+8]
or	BYTE PTR SYMBOL+8, 8
or	BYTE PTR SYMBOL, al
or	BYTE PTR SYMBOL, cl
or	BYTE PTR SYMBOL, dl
or	BYTE PTR SYMBOL[eax+ebx], 8
or	BYTE PTR SYMBOL[eax+ebx], dl
or	BYTE PTR SYMBOL[eax], 8
or	BYTE PTR SYMBOL[eax], dl
or	BYTE PTR SYMBOL[ebp], cl
or	BYTE PTR SYMBOL[ebx+8], 8
or	BYTE PTR SYMBOL[ebx], al
or	BYTE PTR SYMBOL[ebx], cl
or	BYTE PTR SYMBOL[ebx], dl
or	BYTE PTR SYMBOL[edi], al
or	BYTE PTR SYMBOL[esi+ebx], al
or	BYTE PTR SYMBOL[esi], al
or	DWORD PTR SYMBOL, 8
or	DWORD PTR SYMBOL, eax
or	DWORD PTR SYMBOL[eax], 8
or	DWORD PTR SYMBOL[ebx], 8
or	DWORD PTR SYMBOL[ebx], eax
or	DWORD PTR SYMBOL[edi], eax
or	al, BYTE PTR SYMBOL
or	al, BYTE PTR SYMBOL[ebx]
or	bl, BYTE PTR SYMBOL
or	cl, BYTE PTR SYMBOL
or	dl, BYTE PTR SYMBOL
or	dl, BYTE PTR SYMBOL[ebx]
or	eax, DWORD PTR SYMBOL
or	eax, DWORD PTR SYMBOL+8
or	eax, DWORD PTR SYMBOL[8+edx*8]
or	eax, DWORD PTR SYMBOL[ebp+8]
or	eax, DWORD PTR SYMBOL[ebx+8]
or	eax, DWORD PTR SYMBOL[ebx]
or	eax, DWORD PTR SYMBOL[edx+ecx*8]
or	eax, DWORD PTR SYMBOL[esi+8]
or	ebp, DWORD PTR SYMBOL[ebx+eax*8]
or	ebx, DWORD PTR SYMBOL+8
or	ebx, DWORD PTR SYMBOL[eax+8]
or	ebx, DWORD PTR SYMBOL[esi+8]
or	ecx, DWORD PTR SYMBOL
or	ecx, DWORD PTR SYMBOL+8
or	ecx, DWORD PTR SYMBOL[eax]
or	ecx, DWORD PTR SYMBOL[ebx+8]
or	ecx, DWORD PTR SYMBOL[edi+8]
or	ecx, DWORD PTR SYMBOL[esi+8]
or	ecx, DWORD PTR SYMBOL[esi]
or	edi, DWORD PTR SYMBOL[8+eax*8]
or	edx, DWORD PTR SYMBOL[8+ecx*8]
or	edx, DWORD PTR SYMBOL[ebx+8+ecx*8]
or	esi, DWORD PTR SYMBOL[8+eax*8]
push	DWORD PTR SYMBOL
push	DWORD PTR SYMBOL+8
push	DWORD PTR SYMBOL[8+eax*8]
push	DWORD PTR SYMBOL[8+ebp*8]
push	DWORD PTR SYMBOL[8+edi*8]
push	DWORD PTR SYMBOL[eax+8]
push	DWORD PTR SYMBOL[eax+edx*8]
push	DWORD PTR SYMBOL[eax]
push	DWORD PTR SYMBOL[ebp+8]
push	DWORD PTR SYMBOL[ebp]
push	DWORD PTR SYMBOL[ebx+8+eax*8]
push	DWORD PTR SYMBOL[ebx+8+ebp*8]
push	DWORD PTR SYMBOL[ebx+8]
push	DWORD PTR SYMBOL[ebx+eax*8]
push	DWORD PTR SYMBOL[ebx+ebp*8]
push	DWORD PTR SYMBOL[ebx+ecx*8]
push	DWORD PTR SYMBOL[ebx]
push	DWORD PTR SYMBOL[ecx+8]
push	DWORD PTR SYMBOL[ecx+eax*8]
push	DWORD PTR SYMBOL[ecx]
push	DWORD PTR SYMBOL[edi+8]
push	DWORD PTR SYMBOL[edi+eax*8]
push	DWORD PTR SYMBOL[edi]
push	DWORD PTR SYMBOL[edx]
push	DWORD PTR SYMBOL[esi+8]
push	DWORD PTR SYMBOL[esi+eax*8]
push	DWORD PTR SYMBOL[esi]
push	OFFSET FLAT:SYMBOL
push	OFFSET FLAT:SYMBOL+8
rep	SYMBOL
sbb	eax, DWORD PTR SYMBOL+8
sbb	eax, DWORD PTR SYMBOL[ebx+8]
sbb	eax, DWORD PTR SYMBOL[edi+8]
sbb	eax, DWORD PTR SYMBOL[esi+8]
sbb	ecx, DWORD PTR SYMBOL+8
sbb	edi, DWORD PTR SYMBOL+8
sbb	edi, DWORD PTR SYMBOL[ebx+8]
sbb	edx, DWORD PTR SYMBOL+8
sbb	edx, DWORD PTR SYMBOL[ebx+8]
sbb	edx, DWORD PTR SYMBOL[esi+8]
sbb	esi, DWORD PTR SYMBOL+8
sbb	esi, DWORD PTR SYMBOL[ebx+8]
seta	BYTE PTR SYMBOL
seta	BYTE PTR SYMBOL[ebx]
sete	BYTE PTR SYMBOL
sete	BYTE PTR SYMBOL[eax]
sete	BYTE PTR SYMBOL[ebx]
sete	BYTE PTR SYMBOL[edi]
sete	BYTE PTR SYMBOL[edx]
setne	BYTE PTR SYMBOL
setne	BYTE PTR SYMBOL[ebx]
setne	BYTE PTR SYMBOL[edi]
sub	DWORD PTR SYMBOL, 8
sub	DWORD PTR SYMBOL, eax
sub	DWORD PTR SYMBOL[ebx], 8
sub	DWORD PTR SYMBOL[ebx], eax
sub	DWORD PTR SYMBOL[edi], 8
sub	DWORD PTR SYMBOL[esi], 8
sub	eax, DWORD PTR SYMBOL
sub	eax, DWORD PTR SYMBOL+8
sub	eax, DWORD PTR SYMBOL[ebp]
sub	eax, DWORD PTR SYMBOL[ebx+8]
sub	eax, DWORD PTR SYMBOL[ebx]
sub	eax, DWORD PTR SYMBOL[ecx]
sub	eax, DWORD PTR SYMBOL[edi]
sub	eax, DWORD PTR SYMBOL[edx]
sub	eax, DWORD PTR SYMBOL[esi]
sub	eax, OFFSET FLAT:SYMBOL
sub	ebx, DWORD PTR SYMBOL
sub	ebx, DWORD PTR SYMBOL[edi]
sub	ebx, DWORD PTR SYMBOL[esi]
sub	ebx, OFFSET FLAT:SYMBOL
sub	ecx, DWORD PTR SYMBOL
sub	ecx, DWORD PTR SYMBOL+8
sub	ecx, DWORD PTR SYMBOL[edi]
sub	edi, DWORD PTR SYMBOL
sub	edi, DWORD PTR SYMBOL[ebx]
sub	edx, DWORD PTR SYMBOL
sub	edx, DWORD PTR SYMBOL+8
sub	edx, DWORD PTR SYMBOL[eax]
sub	edx, DWORD PTR SYMBOL[ebx]
sub	edx, DWORD PTR SYMBOL[ecx]
sub	edx, OFFSET FLAT:SYMBOL
sub	esi, DWORD PTR SYMBOL
sub	esi, DWORD PTR SYMBOL[8+edi*8]
sub	esi, DWORD PTR SYMBOL[ebx]
test	BYTE PTR SYMBOL+8, 8
test	BYTE PTR SYMBOL, 8
test	BYTE PTR SYMBOL[eax+8], 8
test	BYTE PTR SYMBOL[ebp+8], 8
test	BYTE PTR SYMBOL[ebp], 8
test	BYTE PTR SYMBOL[ebx+8], 8
test	BYTE PTR SYMBOL[ebx], 8
test	BYTE PTR SYMBOL[edi+8], 8
test	BYTE PTR SYMBOL[edi], 8
test	BYTE PTR SYMBOL[esi+8], 8
test	DWORD PTR SYMBOL, -8
test	DWORD PTR SYMBOL, 8
test	DWORD PTR SYMBOL[eax], 8
test	DWORD PTR SYMBOL[ebx], -8
test	DWORD PTR SYMBOL[ebx], 8
xor	al, BYTE PTR SYMBOL
xor	al, BYTE PTR SYMBOL[ebp]
xor	al, BYTE PTR SYMBOL[ebx]
xor	al, BYTE PTR SYMBOL[esi]
xor	eax, DWORD PTR SYMBOL
xor	eax, DWORD PTR SYMBOL[8+ebp*8]
xor	eax, DWORD PTR SYMBOL[8+ebx*8]
xor	eax, DWORD PTR SYMBOL[8+ecx*8]
xor	eax, DWORD PTR SYMBOL[8+edi*8]
xor	eax, DWORD PTR SYMBOL[8+edx*8]
xor	eax, DWORD PTR SYMBOL[8+esi*8]
xor	eax, DWORD PTR SYMBOL[ebx]
xor	ebx, DWORD PTR SYMBOL+8
xor	ebx, DWORD PTR SYMBOL[8+eax*8]
xor	ebx, DWORD PTR SYMBOL[8+edx*8]
xor	ebx, DWORD PTR SYMBOL[8+esi*8]
xor	ecx, DWORD PTR SYMBOL+8
xor	ecx, DWORD PTR SYMBOL[8+ebx*8]
xor	ecx, DWORD PTR SYMBOL[8+edx*8]
xor	ecx, DWORD PTR SYMBOL[8+esi*8]
xor	edi, DWORD PTR SYMBOL[8+ebx*8]
xor	edi, DWORD PTR SYMBOL[8+ecx*8]
xor	edi, DWORD PTR SYMBOL[8+edx*8]
xor	edx, DWORD PTR SYMBOL+8
xor	edx, DWORD PTR SYMBOL[8+eax*8]
xor	edx, DWORD PTR SYMBOL[8+ebx*8]
xor	edx, DWORD PTR SYMBOL[8+edi*8]
xor	edx, DWORD PTR SYMBOL[8+esi*8]
xor	edx, DWORD PTR SYMBOL[ebx+8]
xor	esi, DWORD PTR SYMBOL[8+ebx*8]
xor	esi, DWORD PTR SYMBOL[8+ecx*8]
xor	esi, DWORD PTR SYMBOL[8+edx*8]
