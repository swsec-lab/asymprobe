adc	dword ptr [8*ebp + SYMBOL-8], 8
adc	dword ptr [8*edi + SYMBOL-8], 8
adc	dword ptr [SYMBOL+8], 8
adc	dword ptr [SYMBOL+8], eax
adc	dword ptr [SYMBOL+8], ebp
adc	dword ptr [SYMBOL+8], ebx
adc	dword ptr [SYMBOL+8], ecx
adc	dword ptr [SYMBOL+8], edi
adc	dword ptr [SYMBOL+8], edx
adc	dword ptr [SYMBOL+8], esi
adc	dword ptr [eax + SYMBOL+8], 8
adc	dword ptr [eax + SYMBOL+8], edx
adc	dword ptr [ebp + SYMBOL+8], 8
adc	dword ptr [ebx + 8*eax + SYMBOL-8], 8
adc	dword ptr [ebx + 8*edi + SYMBOL-8], 8
adc	dword ptr [ebx + SYMBOL+8], 8
adc	dword ptr [ebx + SYMBOL+8], eax
adc	dword ptr [ebx + SYMBOL+8], ebp
adc	dword ptr [ebx + SYMBOL+8], ecx
adc	dword ptr [ebx + SYMBOL+8], edi
adc	dword ptr [ebx + SYMBOL+8], edx
adc	dword ptr [ebx + SYMBOL+8], esi
adc	dword ptr [ecx + SYMBOL+8], 8
adc	dword ptr [edi + SYMBOL+8], 8
adc	dword ptr [edi + SYMBOL+8], ecx
adc	dword ptr [edx + SYMBOL+8], 8
adc	eax, dword ptr [SYMBOL+8]
adc	eax, dword ptr [ebp + SYMBOL+8]
adc	ebp, dword ptr [SYMBOL+8]
adc	ebp, dword ptr [ebx + SYMBOL+8]
adc	ebp, dword ptr [edi + SYMBOL+8]
adc	ebx, dword ptr [SYMBOL+8]
adc	ebx, dword ptr [eax + SYMBOL+8]
adc	ecx, dword ptr [SYMBOL+8]
adc	ecx, dword ptr [ebx + SYMBOL+8]
adc	ecx, dword ptr [edi + SYMBOL+8]
adc	edi, dword ptr [SYMBOL+8]
adc	edi, dword ptr [ebx + SYMBOL+8]
adc	edx, dword ptr [SYMBOL+8]
adc	edx, dword ptr [ebx + SYMBOL+8]
adc	esi, dword ptr [SYMBOL+8]
adc	esi, dword ptr [ebx + SYMBOL+8]
add	dword ptr [8*ebp + SYMBOL-8], 8
add	dword ptr [8*edi + SYMBOL-8], 8
add	dword ptr [SYMBOL+8], 8
add	dword ptr [SYMBOL+8], eax
add	dword ptr [SYMBOL+8], ecx
add	dword ptr [SYMBOL+8], edx
add	dword ptr [SYMBOL], 8
add	dword ptr [SYMBOL], eax
add	dword ptr [SYMBOL], ebp
add	dword ptr [SYMBOL], ebx
add	dword ptr [SYMBOL], ecx
add	dword ptr [SYMBOL], edi
add	dword ptr [SYMBOL], edx
add	dword ptr [SYMBOL], esi
add	dword ptr [eax + SYMBOL], 8
add	dword ptr [ebp + SYMBOL+8], 8
add	dword ptr [ebp + SYMBOL], 8
add	dword ptr [ebp + SYMBOL], eax
add	dword ptr [ebx + 8*eax + SYMBOL-8], 8
add	dword ptr [ebx + 8*edi + SYMBOL-8], 8
add	dword ptr [ebx + SYMBOL+8], 8
add	dword ptr [ebx + SYMBOL+8], eax
add	dword ptr [ebx + SYMBOL+8], ebp
add	dword ptr [ebx + SYMBOL+8], ecx
add	dword ptr [ebx + SYMBOL+8], edx
add	dword ptr [ebx + SYMBOL+8], esi
add	dword ptr [ebx + SYMBOL], 8
add	dword ptr [ebx + SYMBOL], eax
add	dword ptr [ebx + SYMBOL], ebp
add	dword ptr [ebx + SYMBOL], ecx
add	dword ptr [ebx + SYMBOL], edi
add	dword ptr [ebx + SYMBOL], edx
add	dword ptr [ebx + SYMBOL], esi
add	dword ptr [ecx + SYMBOL], 8
add	dword ptr [edi + SYMBOL+8], 8
add	dword ptr [edi + SYMBOL], 8
add	dword ptr [edi + SYMBOL], eax
add	dword ptr [edx + SYMBOL], 8
add	eax, dword ptr [8*edx + SYMBOL+8]
add	eax, dword ptr [SYMBOL+8]
add	eax, dword ptr [SYMBOL]
add	eax, dword ptr [ebp + SYMBOL]
add	eax, dword ptr [ebx + SYMBOL+8]
add	eax, dword ptr [ebx + SYMBOL]
add	eax, dword ptr [ecx + 8*esi + SYMBOL+8]
add	eax, dword ptr [ecx + SYMBOL+8]
add	eax, dword ptr [ecx + SYMBOL]
add	eax, dword ptr [edi + SYMBOL]
add	eax, dword ptr [edx + SYMBOL+8]
add	eax, dword ptr [edx + SYMBOL]
add	eax, offset SYMBOL
add	eax, offset SYMBOL+8
add	eax, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	ebp, dword ptr [SYMBOL]
add	ebp, dword ptr [eax + SYMBOL]
add	ebp, dword ptr [ebx + SYMBOL]
add	ebp, dword ptr [ecx + SYMBOL]
add	ebp, dword ptr [edi + SYMBOL]
add	ebp, dword ptr [edx + SYMBOL]
add	ebp, offset SYMBOL
add	ebp, offset SYMBOL-8
add	ebp, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	ebx, dword ptr [SYMBOL]
add	ebx, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	ecx, dword ptr [SYMBOL+8]
add	ecx, dword ptr [SYMBOL]
add	ecx, dword ptr [eax + SYMBOL]
add	ecx, dword ptr [ebp + SYMBOL]
add	ecx, dword ptr [ebx + SYMBOL]
add	ecx, dword ptr [edx + SYMBOL+8]
add	ecx, dword ptr [edx + SYMBOL]
add	ecx, dword ptr [esi + SYMBOL]
add	ecx, offset SYMBOL
add	ecx, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	edi, dword ptr [SYMBOL]
add	edi, dword ptr [ebp + SYMBOL]
add	edi, dword ptr [ebx + SYMBOL]
add	edi, offset SYMBOL
add	edi, offset SYMBOL+8
add	edi, offset SYMBOL-8
add	edi, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	edx, dword ptr [SYMBOL+8]
add	edx, dword ptr [SYMBOL]
add	edx, dword ptr [eax + SYMBOL]
add	edx, dword ptr [ebp + SYMBOL]
add	edx, dword ptr [ebx + SYMBOL]
add	edx, dword ptr [ecx + SYMBOL]
add	edx, offset SYMBOL
add	edx, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
add	esi, dword ptr [SYMBOL]
add	esi, dword ptr [eax + SYMBOL]
add	esi, dword ptr [ebp + SYMBOL]
add	esi, dword ptr [ebx + SYMBOL]
add	esi, dword ptr [edi + SYMBOL]
add	esi, dword ptr [edx + SYMBOL+8]
add	esi, dword ptr [edx + SYMBOL]
add	esi, offset SYMBOL
add	esi, offset SYMBOL+8
add	esi, offset SYMBOL-8
add	esi, offset _GLOBAL_OFFSET_TABLE_+(LOCAL-SYMBOL)
and	al, byte ptr [SYMBOL]
and	al, byte ptr [ebx + SYMBOL]
and	al, byte ptr [edi + SYMBOL]
and	bl, byte ptr [SYMBOL]
and	bl, byte ptr [esi + SYMBOL]
and	byte ptr [SYMBOL+8], -8
and	byte ptr [SYMBOL], -8
and	byte ptr [ebx + SYMBOL+8], -8
and	byte ptr [ebx + SYMBOL], -8
and	byte ptr [ecx + SYMBOL], -8
and	ch, byte ptr [ebx + SYMBOL]
and	cl, byte ptr [SYMBOL]
and	cl, byte ptr [ebx + SYMBOL]
and	cl, byte ptr [edi + SYMBOL]
and	dl, byte ptr [SYMBOL]
and	dl, byte ptr [ebx + SYMBOL]
and	dl, byte ptr [edi + SYMBOL]
and	eax, dword ptr [SYMBOL+8]
and	eax, dword ptr [ebx + SYMBOL+8]
and	ebp, dword ptr [ebx + SYMBOL+8]
and	ecx, dword ptr [SYMBOL+8]
and	ecx, dword ptr [ebx + SYMBOL+8]
and	edi, dword ptr [SYMBOL+8]
and	edi, dword ptr [ebx + SYMBOL+8]
and	esi, dword ptr [SYMBOL+8]
and	esi, dword ptr [ebx + SYMBOL+8]
bt	dword ptr [SYMBOL], 8
bt	dword ptr [ebx + SYMBOL], 8
bt	dword ptr [edi + SYMBOL], 8
call	SYMBOL
call	dword ptr [8*eax + SYMBOL]
call	dword ptr [SYMBOL]
call	dword ptr [eax + SYMBOL]
call	dword ptr [ebx + 8*eax + SYMBOL]
call	dword ptr [ebx + SYMBOL]
call	dword ptr [edi + SYMBOL]
call	dword ptr [esi + SYMBOL]
cmp	al, byte ptr [SYMBOL+8]
cmp	al, byte ptr [SYMBOL]
cmp	al, byte ptr [ebp + SYMBOL]
cmp	al, byte ptr [ebx + SYMBOL+8]
cmp	al, byte ptr [ecx + SYMBOL]
cmp	bh, byte ptr [eax + eax + SYMBOL-8]
cmp	bh, byte ptr [eax + eax + SYMBOL]
cmp	bh, byte ptr [ecx + SYMBOL+8]
cmp	bl, byte ptr [SYMBOL]
cmp	bl, byte ptr [eax + SYMBOL]
cmp	bl, byte ptr [eax + eax + SYMBOL+8]
cmp	bl, byte ptr [eax + eax + SYMBOL-8]
cmp	bl, byte ptr [ebp + SYMBOL]
cmp	bl, byte ptr [ecx + SYMBOL+8]
cmp	bl, byte ptr [edi + SYMBOL]
cmp	byte ptr [8*eax + SYMBOL], 8
cmp	byte ptr [8*edi + SYMBOL+8], 8
cmp	byte ptr [8*edx + SYMBOL+8], 8
cmp	byte ptr [8*esi + SYMBOL+8], 8
cmp	byte ptr [SYMBOL+8], 8
cmp	byte ptr [SYMBOL], 8
cmp	byte ptr [eax + SYMBOL+8], 8
cmp	byte ptr [eax + SYMBOL], 8
cmp	byte ptr [eax + SYMBOL], bl
cmp	byte ptr [eax + ecx + SYMBOL], 8
cmp	byte ptr [ebp + SYMBOL], 8
cmp	byte ptr [ebp + SYMBOL], dl
cmp	byte ptr [ebp + eax + SYMBOL], 8
cmp	byte ptr [ebp + ebx + SYMBOL], 8
cmp	byte ptr [ebp + ecx + SYMBOL], 8
cmp	byte ptr [ebp + edx + SYMBOL], 8
cmp	byte ptr [ebp + esi + SYMBOL], 8
cmp	byte ptr [ebx + 8*edi + SYMBOL+8], 8
cmp	byte ptr [ebx + 8*edx + SYMBOL+8], 8
cmp	byte ptr [ebx + 8*esi + SYMBOL+8], 8
cmp	byte ptr [ebx + SYMBOL+8], 8
cmp	byte ptr [ebx + SYMBOL-8], dl
cmp	byte ptr [ebx + SYMBOL], 8
cmp	byte ptr [ebx + SYMBOL], dl
cmp	byte ptr [ebx + eax + SYMBOL], 8
cmp	byte ptr [ebx + ebp + SYMBOL-8], al
cmp	byte ptr [ebx + ecx + SYMBOL], 8
cmp	byte ptr [ebx + ecx + SYMBOL], dh
cmp	byte ptr [ebx + edi + SYMBOL-8], 8
cmp	byte ptr [ebx + edi + SYMBOL], 8
cmp	byte ptr [ebx + edi + SYMBOL], ch
cmp	byte ptr [ebx + edx + SYMBOL], 8
cmp	byte ptr [ebx + edx + SYMBOL], al
cmp	byte ptr [ebx + esi + SYMBOL], 8
cmp	byte ptr [ecx + SYMBOL], 8
cmp	byte ptr [ecx + SYMBOL], al
cmp	byte ptr [ecx + SYMBOL], bh
cmp	byte ptr [ecx + SYMBOL], dh
cmp	byte ptr [ecx + SYMBOL], dl
cmp	byte ptr [ecx + eax + SYMBOL], 8
cmp	byte ptr [ecx + ebp + SYMBOL], al
cmp	byte ptr [ecx + edx + SYMBOL], 8
cmp	byte ptr [edi + SYMBOL+8], 8
cmp	byte ptr [edi + SYMBOL-8], 8
cmp	byte ptr [edi + SYMBOL], 8
cmp	byte ptr [edi + eax + SYMBOL], 8
cmp	byte ptr [edi + ebp + SYMBOL], 8
cmp	byte ptr [edi + ebp + SYMBOL], al
cmp	byte ptr [edi + ebx + SYMBOL], 8
cmp	byte ptr [edi + ebx + SYMBOL], cl
cmp	byte ptr [edi + ecx + SYMBOL], 8
cmp	byte ptr [edi + edx + SYMBOL], al
cmp	byte ptr [edi + esi + SYMBOL], 8
cmp	byte ptr [edx + SYMBOL], 8
cmp	byte ptr [edx + SYMBOL], bl
cmp	byte ptr [edx + ecx + SYMBOL], 8
cmp	byte ptr [edx + ecx + SYMBOL], al
cmp	byte ptr [esi + SYMBOL+8], 8
cmp	byte ptr [esi + SYMBOL-8], 8
cmp	byte ptr [esi + SYMBOL], 8
cmp	byte ptr [esi + SYMBOL], ch
cmp	byte ptr [esi + SYMBOL], cl
cmp	byte ptr [esi + ebp + SYMBOL-8], 8
cmp	byte ptr [esi + ebp + SYMBOL], 8
cmp	byte ptr [esi + ebx + SYMBOL-8], 8
cmp	byte ptr [esi + ecx + SYMBOL], 8
cmp	byte ptr [esi + ecx + SYMBOL], bh
cmp	byte ptr [esi + edx + SYMBOL], 8
cmp	byte ptr [esi + edx + SYMBOL], bl
cmp	cl, byte ptr [SYMBOL]
cmp	cl, byte ptr [eax + SYMBOL]
cmp	cl, byte ptr [ebx + SYMBOL]
cmp	dl, byte ptr [SYMBOL]
cmp	dl, byte ptr [ebx + SYMBOL]
cmp	dl, byte ptr [ecx + SYMBOL]
cmp	dword ptr [8*eax + SYMBOL+8], 8
cmp	dword ptr [8*eax + SYMBOL], 8
cmp	dword ptr [8*ebp + SYMBOL], 8
cmp	dword ptr [8*edi + SYMBOL], 8
cmp	dword ptr [8*esi + SYMBOL], 8
cmp	dword ptr [SYMBOL+8], 8
cmp	dword ptr [SYMBOL+8], eax
cmp	dword ptr [SYMBOL+8], ebp
cmp	dword ptr [SYMBOL+8], ecx
cmp	dword ptr [SYMBOL+8], edx
cmp	dword ptr [SYMBOL+8], esi
cmp	dword ptr [SYMBOL], -8
cmp	dword ptr [SYMBOL], 8
cmp	dword ptr [SYMBOL], eax
cmp	dword ptr [SYMBOL], ebp
cmp	dword ptr [SYMBOL], ebx
cmp	dword ptr [SYMBOL], ecx
cmp	dword ptr [SYMBOL], edi
cmp	dword ptr [SYMBOL], edx
cmp	dword ptr [SYMBOL], esi
cmp	dword ptr [SYMBOL], offset SYMBOL
cmp	dword ptr [SYMBOL], offset SYMBOL+8
cmp	dword ptr [eax + 8*ecx + SYMBOL], 8
cmp	dword ptr [eax + 8*edi + SYMBOL], 8
cmp	dword ptr [eax + 8], offset SYMBOL
cmp	dword ptr [eax + SYMBOL+8], 8
cmp	dword ptr [eax + SYMBOL+8], ecx
cmp	dword ptr [eax + SYMBOL], -8
cmp	dword ptr [eax + SYMBOL], 8
cmp	dword ptr [eax + SYMBOL], ebp
cmp	dword ptr [eax + SYMBOL], ebx
cmp	dword ptr [eax + SYMBOL], ecx
cmp	dword ptr [eax + SYMBOL], edx
cmp	dword ptr [ebp + 8], offset SYMBOL
cmp	dword ptr [ebp + SYMBOL+8], 8
cmp	dword ptr [ebp + SYMBOL+8], eax
cmp	dword ptr [ebp + SYMBOL+8], edx
cmp	dword ptr [ebp + SYMBOL], 8
cmp	dword ptr [ebp + SYMBOL], eax
cmp	dword ptr [ebx + 8*eax + SYMBOL+8], 8
cmp	dword ptr [ebx + 8*ebp + SYMBOL], 8
cmp	dword ptr [ebx + 8*edx + SYMBOL+8], 8
cmp	dword ptr [ebx + 8*esi + SYMBOL], 8
cmp	dword ptr [ebx + SYMBOL+8], 8
cmp	dword ptr [ebx + SYMBOL+8], eax
cmp	dword ptr [ebx + SYMBOL+8], ecx
cmp	dword ptr [ebx + SYMBOL+8], edi
cmp	dword ptr [ebx + SYMBOL+8], edx
cmp	dword ptr [ebx + SYMBOL], -8
cmp	dword ptr [ebx + SYMBOL], 8
cmp	dword ptr [ebx + SYMBOL], eax
cmp	dword ptr [ebx + SYMBOL], ebp
cmp	dword ptr [ebx + SYMBOL], ecx
cmp	dword ptr [ebx + SYMBOL], edi
cmp	dword ptr [ebx + SYMBOL], edx
cmp	dword ptr [ebx + SYMBOL], esi
cmp	dword ptr [ecx + 8*edi + SYMBOL], 8
cmp	dword ptr [ecx + 8], offset SYMBOL
cmp	dword ptr [ecx + SYMBOL], 8
cmp	dword ptr [ecx + SYMBOL], ebp
cmp	dword ptr [edi + SYMBOL+8], 8
cmp	dword ptr [edi + SYMBOL+8], edx
cmp	dword ptr [edi + SYMBOL], 8
cmp	dword ptr [edi + SYMBOL], ecx
cmp	dword ptr [edx + SYMBOL], 8
cmp	dword ptr [edx + SYMBOL], eax
cmp	dword ptr [esi + 8], offset SYMBOL
cmp	dword ptr [esi + SYMBOL+8], eax
cmp	dword ptr [esi + SYMBOL], 8
cmp	dword ptr [esp + 8], offset SYMBOL
cmp	dword ptr [esp], offset SYMBOL
cmp	dword ptr [esp], offset SYMBOL+8
cmp	eax, dword ptr [8*ecx + SYMBOL]
cmp	eax, dword ptr [SYMBOL+8]
cmp	eax, dword ptr [SYMBOL]
cmp	eax, dword ptr [ebp + SYMBOL]
cmp	eax, dword ptr [ebx + SYMBOL+8]
cmp	eax, dword ptr [ebx + SYMBOL]
cmp	eax, dword ptr [ecx + 8*edx + SYMBOL]
cmp	eax, dword ptr [ecx + SYMBOL+8]
cmp	eax, dword ptr [ecx + SYMBOL]
cmp	eax, dword ptr [edi + SYMBOL]
cmp	eax, dword ptr [esi + SYMBOL]
cmp	eax, offset SYMBOL
cmp	eax, offset SYMBOL+8
cmp	ebp, dword ptr [SYMBOL]
cmp	ebp, dword ptr [eax + SYMBOL]
cmp	ebp, dword ptr [ebx + SYMBOL]
cmp	ebp, offset SYMBOL
cmp	ebp, offset SYMBOL+8
cmp	ebx, dword ptr [SYMBOL]
cmp	ebx, offset SYMBOL+8
cmp	ecx, dword ptr [SYMBOL+8]
cmp	ecx, dword ptr [SYMBOL]
cmp	ecx, dword ptr [eax + SYMBOL]
cmp	ecx, dword ptr [ebp + SYMBOL]
cmp	ecx, dword ptr [ebx + SYMBOL+8]
cmp	ecx, dword ptr [ebx + SYMBOL]
cmp	ecx, dword ptr [edi + SYMBOL]
cmp	ecx, dword ptr [edx + SYMBOL+8]
cmp	ecx, dword ptr [edx + SYMBOL]
cmp	ecx, dword ptr [esi + SYMBOL+8]
cmp	ecx, dword ptr [esi + SYMBOL]
cmp	ecx, offset SYMBOL
cmp	ecx, offset SYMBOL+8
cmp	edi, dword ptr [SYMBOL]
cmp	edi, dword ptr [eax + SYMBOL]
cmp	edi, dword ptr [ebp + SYMBOL]
cmp	edi, dword ptr [ebx + SYMBOL]
cmp	edi, offset SYMBOL
cmp	edi, offset SYMBOL+8
cmp	edx, dword ptr [SYMBOL]
cmp	edx, dword ptr [ebp + SYMBOL]
cmp	edx, dword ptr [ebx + SYMBOL]
cmp	edx, dword ptr [edi + SYMBOL]
cmp	edx, dword ptr [esi + SYMBOL+8]
cmp	edx, dword ptr [esi + SYMBOL]
cmp	edx, offset SYMBOL
cmp	esi, dword ptr [8*ebp + SYMBOL-8]
cmp	esi, dword ptr [8*edi + SYMBOL-8]
cmp	esi, dword ptr [SYMBOL]
cmp	esi, dword ptr [eax + SYMBOL]
cmp	esi, dword ptr [ebx + SYMBOL]
cmp	esi, dword ptr [ecx + 8*edi + SYMBOL-8]
cmp	esi, dword ptr [edi + SYMBOL]
cmp	esi, dword ptr [edx + 8*ecx + SYMBOL-8]
cmp	esi, offset SYMBOL
dec	dword ptr [SYMBOL]
dec	dword ptr [eax + SYMBOL]
dec	dword ptr [ebx + SYMBOL]
div	dword ptr [8*ecx + SYMBOL]
div	dword ptr [8*edi + SYMBOL]
div	dword ptr [8*esi + SYMBOL]
div	dword ptr [SYMBOL]
div	dword ptr [ebx + 8*ecx + SYMBOL]
div	dword ptr [ebx + 8*edi + SYMBOL]
div	dword ptr [ebx + 8*esi + SYMBOL]
div	dword ptr [ecx + 8*esi + SYMBOL]
div	dword ptr [ecx + SYMBOL]
fld	qword ptr [SYMBOL]
fld	qword ptr [eax + SYMBOL]
fld	qword ptr [ebx + SYMBOL]
fstp	qword ptr [SYMBOL]
fstp	qword ptr [eax + SYMBOL]
fstp	qword ptr [ebx + SYMBOL]
idiv	dword ptr [SYMBOL]
idiv	dword ptr [ecx + SYMBOL]
idiv	dword ptr [esi + SYMBOL]
imul	eax, dword ptr [SYMBOL]
imul	eax, dword ptr [SYMBOL], 8
imul	eax, dword ptr [eax + SYMBOL], 8
imul	eax, dword ptr [ebx + SYMBOL]
imul	eax, dword ptr [ebx + SYMBOL], 8
imul	ebp, dword ptr [SYMBOL], -8
imul	ecx, dword ptr [SYMBOL]
imul	ecx, dword ptr [SYMBOL], 8
imul	ecx, dword ptr [eax + SYMBOL]
imul	ecx, dword ptr [eax + SYMBOL], 8
imul	ecx, dword ptr [ebx + SYMBOL], 8
imul	ecx, dword ptr [ecx + SYMBOL], 8
imul	edi, dword ptr [SYMBOL], 8
imul	edi, dword ptr [ebx + SYMBOL], 8
imul	edx, dword ptr [eax + SYMBOL], 8
imul	edx, dword ptr [ecx + SYMBOL]
imul	esi, dword ptr [SYMBOL]
imul	esi, dword ptr [ebx + SYMBOL]
inc	dword ptr [SYMBOL]
inc	dword ptr [eax + SYMBOL]
inc	dword ptr [ebx + SYMBOL]
jmp	SYMBOL
jne	SYMBOL
lea	eax, [8*eax + SYMBOL+8]
lea	eax, [8*eax + SYMBOL]
lea	eax, [8*ebp + SYMBOL]
lea	eax, [8*ecx + SYMBOL]
lea	eax, [8*edi + SYMBOL]
lea	eax, [8*edx + SYMBOL+8]
lea	eax, [SYMBOL]
lea	eax, [eax + SYMBOL+8]
lea	eax, [eax + SYMBOL]
lea	eax, [eax + ecx + SYMBOL]
lea	eax, [ebp + SYMBOL+8]
lea	eax, [ebp + SYMBOL]
lea	eax, [ebx + 8*edx + SYMBOL]
lea	eax, [ebx + SYMBOL+8]
lea	eax, [ebx + SYMBOL]
lea	eax, [ecx + SYMBOL]
lea	eax, [edi + SYMBOL]
lea	eax, [edx + SYMBOL]
lea	eax, [esi + SYMBOL+8]
lea	eax, [esi + SYMBOL]
lea	ebp, [8*ecx + SYMBOL]
lea	ebp, [eax + SYMBOL]
lea	ebp, [ebp + SYMBOL]
lea	ebp, [ebx + SYMBOL+8]
lea	ebp, [ebx + SYMBOL]
lea	ebp, [ecx + SYMBOL]
lea	ebp, [edx + SYMBOL+8]
lea	ebp, [edx + SYMBOL-8]
lea	ebp, [esi + SYMBOL]
lea	ebx, [8*esi + SYMBOL+8]
lea	ebx, [SYMBOL]
lea	ebx, [eax + SYMBOL]
lea	ebx, [ebx + SYMBOL]
lea	ebx, [ecx + SYMBOL]
lea	ebx, [edi + SYMBOL]
lea	ecx, [SYMBOL]
lea	ecx, [eax + SYMBOL+8]
lea	ecx, [eax + SYMBOL]
lea	ecx, [ebp + SYMBOL+8]
lea	ecx, [ebp + SYMBOL]
lea	ecx, [ebx + SYMBOL+8]
lea	ecx, [ebx + SYMBOL]
lea	ecx, [ecx + SYMBOL+8]
lea	ecx, [ecx + SYMBOL]
lea	ecx, [ecx + edx + SYMBOL]
lea	ecx, [edi + SYMBOL+8]
lea	ecx, [edi + SYMBOL]
lea	ecx, [edx + SYMBOL+8]
lea	ecx, [edx + SYMBOL]
lea	ecx, [esi + SYMBOL+8]
lea	ecx, [esi + SYMBOL]
lea	edi, [8*edx + SYMBOL]
lea	edi, [SYMBOL]
lea	edi, [eax + SYMBOL+8]
lea	edi, [eax + SYMBOL]
lea	edi, [ebp + SYMBOL+8]
lea	edi, [ebp + SYMBOL]
lea	edi, [ebx + SYMBOL+8]
lea	edi, [ebx + SYMBOL]
lea	edi, [ecx + SYMBOL]
lea	edi, [edi + SYMBOL]
lea	edi, [edx + SYMBOL]
lea	edi, [esi + SYMBOL]
lea	edx, [8*esi + SYMBOL]
lea	edx, [SYMBOL]
lea	edx, [eax + SYMBOL+8]
lea	edx, [eax + SYMBOL]
lea	edx, [ebp + SYMBOL+8]
lea	edx, [ebp + SYMBOL]
lea	edx, [ebx + SYMBOL+8]
lea	edx, [ebx + SYMBOL]
lea	edx, [ecx + SYMBOL]
lea	edx, [edi + SYMBOL]
lea	edx, [edx + SYMBOL+8]
lea	edx, [edx + SYMBOL]
lea	edx, [esi + SYMBOL+8]
lea	edx, [esi + SYMBOL]
lea	esi, [8*eax + SYMBOL]
lea	esi, [8*edi + SYMBOL+8]
lea	esi, [SYMBOL]
lea	esi, [eax + SYMBOL+8]
lea	esi, [eax + SYMBOL-8]
lea	esi, [eax + SYMBOL]
lea	esi, [ebp + SYMBOL]
lea	esi, [ebx + SYMBOL+8]
lea	esi, [ebx + SYMBOL]
lea	esi, [ecx + SYMBOL-8]
lea	esi, [ecx + SYMBOL]
lea	esi, [edi + SYMBOL]
lea	esi, [edx + SYMBOL+8]
lea	esi, [esi + SYMBOL+8]
lea	esi, [esi + SYMBOL]
mov	ah, byte ptr [SYMBOL]
mov	ah, byte ptr [ebp + SYMBOL]
mov	ah, byte ptr [ebx + SYMBOL]
mov	ah, byte ptr [ebx + ecx + SYMBOL]
mov	ah, byte ptr [ecx + SYMBOL]
mov	al, byte ptr [8*eax + SYMBOL]
mov	al, byte ptr [SYMBOL+8]
mov	al, byte ptr [SYMBOL]
mov	al, byte ptr [eax + SYMBOL-8]
mov	al, byte ptr [eax + SYMBOL]
mov	al, byte ptr [eax + ebp + SYMBOL]
mov	al, byte ptr [eax + ebx + SYMBOL]
mov	al, byte ptr [eax + ecx + SYMBOL]
mov	al, byte ptr [eax + edi + SYMBOL-8]
mov	al, byte ptr [ebp + SYMBOL]
mov	al, byte ptr [ebp + eax + SYMBOL]
mov	al, byte ptr [ebx + SYMBOL+8]
mov	al, byte ptr [ebx + SYMBOL]
mov	al, byte ptr [ebx + eax + SYMBOL+8]
mov	al, byte ptr [ebx + eax + SYMBOL]
mov	al, byte ptr [ebx + ecx + SYMBOL]
mov	al, byte ptr [ecx + SYMBOL]
mov	al, byte ptr [edi + SYMBOL]
mov	al, byte ptr [edi + ebx + SYMBOL]
mov	al, byte ptr [edi + ecx + SYMBOL]
mov	al, byte ptr [edx + SYMBOL]
mov	al, byte ptr [esi + SYMBOL+8]
mov	al, byte ptr [esi + SYMBOL]
mov	bh, byte ptr [SYMBOL]
mov	bh, byte ptr [eax + SYMBOL]
mov	bh, byte ptr [eax + ebp + SYMBOL]
mov	bh, byte ptr [eax + edx + SYMBOL]
mov	bh, byte ptr [eax + esi + SYMBOL]
mov	bh, byte ptr [ebp + SYMBOL]
mov	bh, byte ptr [edx + SYMBOL]
mov	bl, byte ptr [SYMBOL+8]
mov	bl, byte ptr [SYMBOL]
mov	bl, byte ptr [eax + SYMBOL+8]
mov	bl, byte ptr [eax + SYMBOL]
mov	bl, byte ptr [eax + edx + SYMBOL]
mov	bl, byte ptr [eax + esi + SYMBOL]
mov	bl, byte ptr [ebx + SYMBOL]
mov	bl, byte ptr [ebx + eax + SYMBOL]
mov	bl, byte ptr [ecx + SYMBOL]
mov	bl, byte ptr [ecx + ebx + SYMBOL]
mov	bl, byte ptr [edi + 8*ebx + SYMBOL]
mov	bl, byte ptr [edi + ebx + SYMBOL]
mov	bl, byte ptr [edx + SYMBOL]
mov	bl, byte ptr [esi + SYMBOL+8]
mov	bl, byte ptr [esi + ebx + SYMBOL]
mov	byte ptr [8*eax + SYMBOL], 8
mov	byte ptr [8*eax + SYMBOL], cl
mov	byte ptr [SYMBOL+8], 8
mov	byte ptr [SYMBOL+8], al
mov	byte ptr [SYMBOL+8], bh
mov	byte ptr [SYMBOL+8], bl
mov	byte ptr [SYMBOL+8], cl
mov	byte ptr [SYMBOL+8], dl
mov	byte ptr [SYMBOL], 8
mov	byte ptr [SYMBOL], ah
mov	byte ptr [SYMBOL], al
mov	byte ptr [SYMBOL], bl
mov	byte ptr [SYMBOL], ch
mov	byte ptr [SYMBOL], cl
mov	byte ptr [SYMBOL], dh
mov	byte ptr [SYMBOL], dl
mov	byte ptr [eax + SYMBOL+8], 8
mov	byte ptr [eax + SYMBOL+8], cl
mov	byte ptr [eax + SYMBOL+8], dl
mov	byte ptr [eax + SYMBOL], 8
mov	byte ptr [eax + SYMBOL], al
mov	byte ptr [eax + SYMBOL], cl
mov	byte ptr [eax + SYMBOL], dl
mov	byte ptr [eax + ecx + SYMBOL], 8
mov	byte ptr [eax + ecx + SYMBOL], dl
mov	byte ptr [eax + edx + SYMBOL], bl
mov	byte ptr [ebp + SYMBOL+8], 8
mov	byte ptr [ebp + SYMBOL], 8
mov	byte ptr [ebp + SYMBOL], al
mov	byte ptr [ebp + SYMBOL], bl
mov	byte ptr [ebp + SYMBOL], cl
mov	byte ptr [ebp + SYMBOL], dl
mov	byte ptr [ebp + ebx + SYMBOL], 8
mov	byte ptr [ebp + edx + SYMBOL], 8
mov	byte ptr [ebp + esi + SYMBOL], 8
mov	byte ptr [ebx + SYMBOL+8], 8
mov	byte ptr [ebx + SYMBOL+8], al
mov	byte ptr [ebx + SYMBOL+8], cl
mov	byte ptr [ebx + SYMBOL+8], dl
mov	byte ptr [ebx + SYMBOL], 8
mov	byte ptr [ebx + SYMBOL], ah
mov	byte ptr [ebx + SYMBOL], al
mov	byte ptr [ebx + SYMBOL], bl
mov	byte ptr [ebx + SYMBOL], ch
mov	byte ptr [ebx + SYMBOL], cl
mov	byte ptr [ebx + SYMBOL], dh
mov	byte ptr [ebx + SYMBOL], dl
mov	byte ptr [ebx + eax + SYMBOL], 8
mov	byte ptr [ebx + eax + SYMBOL], cl
mov	byte ptr [ebx + ebp + SYMBOL], 8
mov	byte ptr [ebx + ebp + SYMBOL], al
mov	byte ptr [ebx + ecx + SYMBOL], dl
mov	byte ptr [ebx + edi + SYMBOL-8], 8
mov	byte ptr [ebx + edi + SYMBOL], cl
mov	byte ptr [ebx + edx + SYMBOL], 8
mov	byte ptr [ebx + esi + SYMBOL-8], 8
mov	byte ptr [ebx + esi + SYMBOL], 8
mov	byte ptr [ecx + SYMBOL+8], 8
mov	byte ptr [ecx + SYMBOL+8], dl
mov	byte ptr [ecx + SYMBOL], 8
mov	byte ptr [ecx + SYMBOL], al
mov	byte ptr [ecx + SYMBOL], dl
mov	byte ptr [ecx + eax + SYMBOL], dl
mov	byte ptr [edi + SYMBOL+8], al
mov	byte ptr [edi + SYMBOL-8], 8
mov	byte ptr [edi + SYMBOL], 8
mov	byte ptr [edi + SYMBOL], al
mov	byte ptr [edi + SYMBOL], dl
mov	byte ptr [edx + SYMBOL], 8
mov	byte ptr [edx + SYMBOL], al
mov	byte ptr [edx + SYMBOL], bl
mov	byte ptr [esi + SYMBOL+8], 8
mov	byte ptr [esi + SYMBOL+8], al
mov	byte ptr [esi + SYMBOL+8], cl
mov	byte ptr [esi + SYMBOL+8], dl
mov	byte ptr [esi + SYMBOL-8], 8
mov	byte ptr [esi + SYMBOL], 8
mov	byte ptr [esi + SYMBOL], al
mov	byte ptr [esi + SYMBOL], cl
mov	byte ptr [esi + SYMBOL], dl
mov	byte ptr [esi + ebp + SYMBOL-8], 8
mov	ch, byte ptr [SYMBOL]
mov	ch, byte ptr [ebx + SYMBOL+8]
mov	ch, byte ptr [ebx + SYMBOL]
mov	ch, byte ptr [ebx + ecx + SYMBOL]
mov	ch, byte ptr [ebx + esi + SYMBOL]
mov	ch, byte ptr [ecx + SYMBOL]
mov	ch, byte ptr [edi + SYMBOL]
mov	ch, byte ptr [esi + SYMBOL]
mov	ch, byte ptr [esi + edi + SYMBOL]
mov	cl, byte ptr [8*eax + SYMBOL]
mov	cl, byte ptr [SYMBOL]
mov	cl, byte ptr [eax + SYMBOL+8]
mov	cl, byte ptr [eax + SYMBOL]
mov	cl, byte ptr [eax + ebp + SYMBOL]
mov	cl, byte ptr [eax + ecx + SYMBOL]
mov	cl, byte ptr [eax + edi + SYMBOL]
mov	cl, byte ptr [ebp + SYMBOL]
mov	cl, byte ptr [ebp + ecx + SYMBOL]
mov	cl, byte ptr [ebx + SYMBOL]
mov	cl, byte ptr [ebx + eax + SYMBOL]
mov	cl, byte ptr [ebx + ecx + SYMBOL]
mov	cl, byte ptr [ebx + edi + SYMBOL]
mov	cl, byte ptr [ecx + SYMBOL]
mov	cl, byte ptr [ecx + ebx + SYMBOL]
mov	cl, byte ptr [ecx + edi + SYMBOL]
mov	cl, byte ptr [ecx + edx + SYMBOL]
mov	cl, byte ptr [edi + SYMBOL]
mov	cl, byte ptr [edi + ebp + SYMBOL]
mov	cl, byte ptr [edi + ecx + SYMBOL]
mov	cl, byte ptr [edi + edx + SYMBOL]
mov	cl, byte ptr [edi + esi + SYMBOL]
mov	cl, byte ptr [edx + SYMBOL]
mov	cl, byte ptr [edx + ecx + SYMBOL]
mov	cl, byte ptr [esi + SYMBOL]
mov	cl, byte ptr [esi + edi + SYMBOL]
mov	dh, byte ptr [ebx + SYMBOL+8]
mov	dh, byte ptr [ebx + SYMBOL]
mov	dh, byte ptr [edi + eax + SYMBOL]
mov	dh, byte ptr [edi + ebp + SYMBOL]
mov	dh, byte ptr [edi + ebx + SYMBOL]
mov	dl, byte ptr [8*eax + SYMBOL]
mov	dl, byte ptr [SYMBOL+8]
mov	dl, byte ptr [SYMBOL]
mov	dl, byte ptr [eax + SYMBOL]
mov	dl, byte ptr [eax + ecx + SYMBOL]
mov	dl, byte ptr [eax + edx + SYMBOL]
mov	dl, byte ptr [ebp + ebx + SYMBOL]
mov	dl, byte ptr [ebp + edx + SYMBOL]
mov	dl, byte ptr [ebx + SYMBOL+8]
mov	dl, byte ptr [ebx + SYMBOL]
mov	dl, byte ptr [ebx + eax + SYMBOL]
mov	dl, byte ptr [ebx + edx + SYMBOL]
mov	dl, byte ptr [ecx + SYMBOL]
mov	dl, byte ptr [ecx + edx + SYMBOL]
mov	dl, byte ptr [edi + SYMBOL]
mov	dl, byte ptr [edi + eax + SYMBOL]
mov	dl, byte ptr [edi + ebx + SYMBOL]
mov	dl, byte ptr [edx + SYMBOL]
mov	dl, byte ptr [edx + ecx + SYMBOL]
mov	dword ptr [8*eax + SYMBOL+8], ecx
mov	dword ptr [8*eax + SYMBOL-8], ecx
mov	dword ptr [8*eax + SYMBOL-8], edx
mov	dword ptr [8*eax + SYMBOL], 8
mov	dword ptr [8*eax + SYMBOL], ecx
mov	dword ptr [8*eax + SYMBOL], esi
mov	dword ptr [8*ebp + SYMBOL+8], ecx
mov	dword ptr [8*ebp + SYMBOL-8], esi
mov	dword ptr [8*ebp + SYMBOL], eax
mov	dword ptr [8*ebx + SYMBOL+8], ecx
mov	dword ptr [8*ebx + SYMBOL], eax
mov	dword ptr [8*edi + SYMBOL+8], ecx
mov	dword ptr [8*edi + SYMBOL-8], esi
mov	dword ptr [8*edi + SYMBOL], eax
mov	dword ptr [8*edx + SYMBOL+8], esi
mov	dword ptr [SYMBOL+8], -8
mov	dword ptr [SYMBOL+8], 8
mov	dword ptr [SYMBOL+8], eax
mov	dword ptr [SYMBOL+8], ebp
mov	dword ptr [SYMBOL+8], ebx
mov	dword ptr [SYMBOL+8], ecx
mov	dword ptr [SYMBOL+8], edi
mov	dword ptr [SYMBOL+8], edx
mov	dword ptr [SYMBOL+8], esi
mov	dword ptr [SYMBOL+8], offset LOCAL
mov	dword ptr [SYMBOL+8], offset SYMBOL
mov	dword ptr [SYMBOL+8], offset SYMBOL+8
mov	dword ptr [SYMBOL], -8
mov	dword ptr [SYMBOL], 8
mov	dword ptr [SYMBOL], eax
mov	dword ptr [SYMBOL], ebp
mov	dword ptr [SYMBOL], ebx
mov	dword ptr [SYMBOL], ecx
mov	dword ptr [SYMBOL], edi
mov	dword ptr [SYMBOL], edx
mov	dword ptr [SYMBOL], esi
mov	dword ptr [SYMBOL], offset LOCAL
mov	dword ptr [SYMBOL], offset SYMBOL
mov	dword ptr [eax + 8*ecx + SYMBOL+8], edx
mov	dword ptr [eax + 8*ecx + SYMBOL], 8
mov	dword ptr [eax + 8*ecx + SYMBOL], edx
mov	dword ptr [eax + 8*ecx], offset SYMBOL
mov	dword ptr [eax + 8*ecx], offset SYMBOL+8
mov	dword ptr [eax + 8*edx], offset SYMBOL
mov	dword ptr [eax + 8*edx], offset SYMBOL+8
mov	dword ptr [eax + 8*esi], offset SYMBOL+8
mov	dword ptr [eax + 8], offset SYMBOL
mov	dword ptr [eax + 8], offset SYMBOL+8
mov	dword ptr [eax + SYMBOL+8], -8
mov	dword ptr [eax + SYMBOL+8], 8
mov	dword ptr [eax + SYMBOL+8], ebx
mov	dword ptr [eax + SYMBOL+8], ecx
mov	dword ptr [eax + SYMBOL+8], edi
mov	dword ptr [eax + SYMBOL+8], edx
mov	dword ptr [eax + SYMBOL+8], esi
mov	dword ptr [eax + SYMBOL], -8
mov	dword ptr [eax + SYMBOL], 8
mov	dword ptr [eax + SYMBOL], ebp
mov	dword ptr [eax + SYMBOL], ebx
mov	dword ptr [eax + SYMBOL], ecx
mov	dword ptr [eax + SYMBOL], edi
mov	dword ptr [eax + SYMBOL], edx
mov	dword ptr [eax + SYMBOL], esi
mov	dword ptr [eax - 8], offset SYMBOL
mov	dword ptr [eax], offset SYMBOL
mov	dword ptr [eax], offset SYMBOL+8
mov	dword ptr [ebp + 8*ebp + SYMBOL+8], offset LOCAL
mov	dword ptr [ebp + 8], offset SYMBOL
mov	dword ptr [ebp + SYMBOL+8], 8
mov	dword ptr [ebp + SYMBOL+8], eax
mov	dword ptr [ebp + SYMBOL+8], ecx
mov	dword ptr [ebp + SYMBOL+8], edx
mov	dword ptr [ebp + SYMBOL], 8
mov	dword ptr [ebp + SYMBOL], eax
mov	dword ptr [ebp + SYMBOL], ebx
mov	dword ptr [ebp + SYMBOL], ecx
mov	dword ptr [ebp + SYMBOL], edi
mov	dword ptr [ebp + SYMBOL], edx
mov	dword ptr [ebp + SYMBOL], esi
mov	dword ptr [ebp - 8], offset SYMBOL
mov	dword ptr [ebx + 8*eax + SYMBOL+8], ecx
mov	dword ptr [ebx + 8*eax + SYMBOL-8], ecx
mov	dword ptr [ebx + 8*eax + SYMBOL-8], edx
mov	dword ptr [ebx + 8*eax + SYMBOL], esi
mov	dword ptr [ebx + 8*ebp + SYMBOL+8], eax
mov	dword ptr [ebx + 8*ebp + SYMBOL+8], ecx
mov	dword ptr [ebx + 8*ebp + SYMBOL], eax
mov	dword ptr [ebx + 8*edi + SYMBOL+8], eax
mov	dword ptr [ebx + 8*edi + SYMBOL-8], eax
mov	dword ptr [ebx + 8*edi + SYMBOL], eax
mov	dword ptr [ebx + 8*edx + SYMBOL+8], esi
mov	dword ptr [ebx + 8], offset SYMBOL
mov	dword ptr [ebx + SYMBOL+8], -8
mov	dword ptr [ebx + SYMBOL+8], 8
mov	dword ptr [ebx + SYMBOL+8], eax
mov	dword ptr [ebx + SYMBOL+8], ebp
mov	dword ptr [ebx + SYMBOL+8], ecx
mov	dword ptr [ebx + SYMBOL+8], edi
mov	dword ptr [ebx + SYMBOL+8], edx
mov	dword ptr [ebx + SYMBOL+8], esi
mov	dword ptr [ebx + SYMBOL], -8
mov	dword ptr [ebx + SYMBOL], 8
mov	dword ptr [ebx + SYMBOL], eax
mov	dword ptr [ebx + SYMBOL], ebp
mov	dword ptr [ebx + SYMBOL], ecx
mov	dword ptr [ebx + SYMBOL], edi
mov	dword ptr [ebx + SYMBOL], edx
mov	dword ptr [ebx + SYMBOL], esi
mov	dword ptr [ebx + edi + 8], offset SYMBOL
mov	dword ptr [ebx - 8], offset SYMBOL
mov	dword ptr [ecx + 8*edi + SYMBOL-8], esi
mov	dword ptr [ecx + 8], offset SYMBOL
mov	dword ptr [ecx + SYMBOL+8], eax
mov	dword ptr [ecx + SYMBOL+8], edi
mov	dword ptr [ecx + SYMBOL+8], edx
mov	dword ptr [ecx + SYMBOL], 8
mov	dword ptr [ecx + SYMBOL], eax
mov	dword ptr [ecx + SYMBOL], ebp
mov	dword ptr [ecx + SYMBOL], ebx
mov	dword ptr [ecx + SYMBOL], edx
mov	dword ptr [ecx + SYMBOL], esi
mov	dword ptr [ecx - 8], offset SYMBOL
mov	dword ptr [edi + 8], offset SYMBOL
mov	dword ptr [edi + SYMBOL+8], eax
mov	dword ptr [edi + SYMBOL+8], ecx
mov	dword ptr [edi + SYMBOL+8], edx
mov	dword ptr [edi + SYMBOL], 8
mov	dword ptr [edi + SYMBOL], eax
mov	dword ptr [edi + SYMBOL], ebp
mov	dword ptr [edi + SYMBOL], ecx
mov	dword ptr [edi + SYMBOL], edx
mov	dword ptr [edi + SYMBOL], esi
mov	dword ptr [edi + ebx + 8], offset SYMBOL
mov	dword ptr [edi - 8], offset SYMBOL
mov	dword ptr [edi], offset SYMBOL
mov	dword ptr [edx + 8*ecx + SYMBOL-8], esi
mov	dword ptr [edx + 8], offset SYMBOL
mov	dword ptr [edx + SYMBOL+8], eax
mov	dword ptr [edx + SYMBOL+8], ecx
mov	dword ptr [edx + SYMBOL+8], esi
mov	dword ptr [edx + SYMBOL], eax
mov	dword ptr [edx + SYMBOL], ebp
mov	dword ptr [edx + SYMBOL], ebx
mov	dword ptr [edx + SYMBOL], ecx
mov	dword ptr [edx + SYMBOL], esi
mov	dword ptr [esi + 8*ebp + SYMBOL-8], edi
mov	dword ptr [esi + 8], offset SYMBOL
mov	dword ptr [esi + SYMBOL+8], eax
mov	dword ptr [esi + SYMBOL+8], ecx
mov	dword ptr [esi + SYMBOL+8], edi
mov	dword ptr [esi + SYMBOL], 8
mov	dword ptr [esi + SYMBOL], eax
mov	dword ptr [esi + SYMBOL], ebp
mov	dword ptr [esi + SYMBOL], ecx
mov	dword ptr [esi + SYMBOL], edi
mov	dword ptr [esi + SYMBOL], edx
mov	dword ptr [esp + 8], offset SYMBOL
mov	dword ptr [esp], offset SYMBOL
mov	dword ptr [esp], offset SYMBOL+8
mov	eax, dword ptr [8*eax + SYMBOL+8]
mov	eax, dword ptr [8*eax + SYMBOL]
mov	eax, dword ptr [8*ebp + SYMBOL-8]
mov	eax, dword ptr [8*ebx + SYMBOL+8]
mov	eax, dword ptr [8*edi + SYMBOL+8]
mov	eax, dword ptr [8*edi + SYMBOL-8]
mov	eax, dword ptr [8*edi + SYMBOL]
mov	eax, dword ptr [8*edx + SYMBOL+8]
mov	eax, dword ptr [8*esi + SYMBOL+8]
mov	eax, dword ptr [8*esi + SYMBOL]
mov	eax, dword ptr [SYMBOL+8]
mov	eax, dword ptr [SYMBOL]
mov	eax, dword ptr [eax + 8*ecx + SYMBOL+8]
mov	eax, dword ptr [eax + 8*ecx + SYMBOL]
mov	eax, dword ptr [eax + 8*edi + SYMBOL+8]
mov	eax, dword ptr [eax + SYMBOL+8]
mov	eax, dword ptr [eax + SYMBOL]
mov	eax, dword ptr [ebp + 8*eax + SYMBOL+8]
mov	eax, dword ptr [ebp + 8*eax + SYMBOL]
mov	eax, dword ptr [ebp + 8*edx + SYMBOL+8]
mov	eax, dword ptr [ebp + SYMBOL+8]
mov	eax, dword ptr [ebp + SYMBOL]
mov	eax, dword ptr [ebx + 8*eax + SYMBOL+8]
mov	eax, dword ptr [ebx + 8*eax + SYMBOL]
mov	eax, dword ptr [ebx + 8*edx + SYMBOL+8]
mov	eax, dword ptr [ebx + 8*esi + SYMBOL]
mov	eax, dword ptr [ebx + SYMBOL+8]
mov	eax, dword ptr [ebx + SYMBOL]
mov	eax, dword ptr [ecx + 8*eax + SYMBOL+8]
mov	eax, dword ptr [ecx + 8*eax + SYMBOL]
mov	eax, dword ptr [ecx + 8*edi + SYMBOL-8]
mov	eax, dword ptr [ecx + 8*edi + SYMBOL]
mov	eax, dword ptr [ecx + SYMBOL+8]
mov	eax, dword ptr [ecx + SYMBOL]
mov	eax, dword ptr [edi + 8*eax + SYMBOL+8]
mov	eax, dword ptr [edi + 8*eax + SYMBOL]
mov	eax, dword ptr [edi + SYMBOL+8]
mov	eax, dword ptr [edi + SYMBOL]
mov	eax, dword ptr [edx + 8*eax + SYMBOL+8]
mov	eax, dword ptr [edx + 8*eax + SYMBOL]
mov	eax, dword ptr [edx + 8*ecx + SYMBOL-8]
mov	eax, dword ptr [edx + 8*ecx + SYMBOL]
mov	eax, dword ptr [edx + SYMBOL+8]
mov	eax, dword ptr [edx + SYMBOL]
mov	eax, dword ptr [esi + 8*eax + SYMBOL]
mov	eax, dword ptr [esi + SYMBOL+8]
mov	eax, dword ptr [esi + SYMBOL]
mov	eax, offset SYMBOL
mov	eax, offset SYMBOL+8
mov	ebp, dword ptr [8*eax + SYMBOL+8]
mov	ebp, dword ptr [8*eax + SYMBOL]
mov	ebp, dword ptr [8*edi + SYMBOL]
mov	ebp, dword ptr [SYMBOL+8]
mov	ebp, dword ptr [SYMBOL]
mov	ebp, dword ptr [eax + SYMBOL]
mov	ebp, dword ptr [ebp + 8*eax + SYMBOL]
mov	ebp, dword ptr [ebp + SYMBOL+8]
mov	ebp, dword ptr [ebp + SYMBOL]
mov	ebp, dword ptr [ebx + 8*eax + SYMBOL+8]
mov	ebp, dword ptr [ebx + 8*eax + SYMBOL]
mov	ebp, dword ptr [ebx + 8*edx + SYMBOL]
mov	ebp, dword ptr [ebx + SYMBOL+8]
mov	ebp, dword ptr [ebx + SYMBOL]
mov	ebp, dword ptr [ebx + eax + SYMBOL]
mov	ebp, dword ptr [ebx + ebp + SYMBOL+8]
mov	ebp, dword ptr [ecx + SYMBOL]
mov	ebp, dword ptr [edi + SYMBOL+8]
mov	ebp, dword ptr [edi + SYMBOL]
mov	ebp, dword ptr [edx + SYMBOL]
mov	ebp, dword ptr [esi + SYMBOL+8]
mov	ebp, offset SYMBOL
mov	ebp, offset SYMBOL+8
mov	ebx, dword ptr [8*eax + SYMBOL]
mov	ebx, dword ptr [8*edi + SYMBOL]
mov	ebx, dword ptr [8*edx + SYMBOL]
mov	ebx, dword ptr [SYMBOL+8]
mov	ebx, dword ptr [SYMBOL]
mov	ebx, dword ptr [eax + 8*ecx + SYMBOL]
mov	ebx, dword ptr [eax + SYMBOL+8]
mov	ebx, dword ptr [eax + SYMBOL]
mov	ebx, dword ptr [ebp + SYMBOL+8]
mov	ebx, dword ptr [ebp + SYMBOL]
mov	ebx, dword ptr [ebx + SYMBOL]
mov	ebx, dword ptr [ecx + SYMBOL]
mov	ebx, dword ptr [edi + 8*eax + SYMBOL]
mov	ebx, dword ptr [edi + SYMBOL+8]
mov	ebx, dword ptr [edi + SYMBOL]
mov	ebx, dword ptr [edx + SYMBOL]
mov	ebx, dword ptr [esi + SYMBOL+8]
mov	ebx, dword ptr [esi + SYMBOL]
mov	ebx, offset SYMBOL
mov	ebx, offset SYMBOL+8
mov	ecx, dword ptr [8*eax + SYMBOL-8]
mov	ecx, dword ptr [8*eax + SYMBOL]
mov	ecx, dword ptr [8*ecx + SYMBOL+8]
mov	ecx, dword ptr [8*ecx + SYMBOL]
mov	ecx, dword ptr [8*edi + SYMBOL-8]
mov	ecx, dword ptr [SYMBOL+8]
mov	ecx, dword ptr [SYMBOL]
mov	ecx, dword ptr [eax + 8*ecx + SYMBOL+8]
mov	ecx, dword ptr [eax + 8*ecx + SYMBOL]
mov	ecx, dword ptr [eax + SYMBOL+8]
mov	ecx, dword ptr [eax + SYMBOL]
mov	ecx, dword ptr [ebp + SYMBOL+8]
mov	ecx, dword ptr [ebp + SYMBOL]
mov	ecx, dword ptr [ebx + 8*eax + SYMBOL-8]
mov	ecx, dword ptr [ebx + 8*eax + SYMBOL]
mov	ecx, dword ptr [ebx + 8*ecx + SYMBOL]
mov	ecx, dword ptr [ebx + 8*edi + SYMBOL-8]
mov	ecx, dword ptr [ebx + 8*edi + SYMBOL]
mov	ecx, dword ptr [ebx + SYMBOL+8]
mov	ecx, dword ptr [ebx + SYMBOL]
mov	ecx, dword ptr [ecx + 8*eax + SYMBOL]
mov	ecx, dword ptr [ecx + SYMBOL+8]
mov	ecx, dword ptr [ecx + SYMBOL]
mov	ecx, dword ptr [edi + SYMBOL+8]
mov	ecx, dword ptr [edi + SYMBOL]
mov	ecx, dword ptr [edx + 8*ecx + SYMBOL]
mov	ecx, dword ptr [edx + SYMBOL+8]
mov	ecx, dword ptr [edx + SYMBOL]
mov	ecx, dword ptr [esi + 8*ebp + SYMBOL-8]
mov	ecx, dword ptr [esi + SYMBOL+8]
mov	ecx, dword ptr [esi + SYMBOL]
mov	ecx, offset SYMBOL
mov	ecx, offset SYMBOL+8
mov	edi, dword ptr [8*eax + SYMBOL-8]
mov	edi, dword ptr [8*eax + SYMBOL]
mov	edi, dword ptr [8*edx + SYMBOL]
mov	edi, dword ptr [SYMBOL+8]
mov	edi, dword ptr [SYMBOL]
mov	edi, dword ptr [eax + 8*ecx + SYMBOL-8]
mov	edi, dword ptr [eax + SYMBOL+8]
mov	edi, dword ptr [eax + SYMBOL]
mov	edi, dword ptr [ebp + 8*edx + SYMBOL]
mov	edi, dword ptr [ebp + SYMBOL+8]
mov	edi, dword ptr [ebp + SYMBOL]
mov	edi, dword ptr [ebx + 8*eax + SYMBOL]
mov	edi, dword ptr [ebx + 8*edi + SYMBOL]
mov	edi, dword ptr [ebx + 8*edx + SYMBOL]
mov	edi, dword ptr [ebx + SYMBOL+8]
mov	edi, dword ptr [ebx + SYMBOL]
mov	edi, dword ptr [ebx + eax + SYMBOL]
mov	edi, dword ptr [ebx + edi + SYMBOL+8]
mov	edi, dword ptr [ecx + SYMBOL]
mov	edi, dword ptr [edi + SYMBOL+8]
mov	edi, dword ptr [edi + SYMBOL]
mov	edi, dword ptr [edx + SYMBOL]
mov	edi, dword ptr [esi + SYMBOL+8]
mov	edi, dword ptr [esi + SYMBOL]
mov	edi, offset SYMBOL
mov	edi, offset SYMBOL+8
mov	edx, dword ptr [8*eax + SYMBOL-8]
mov	edx, dword ptr [8*eax + SYMBOL]
mov	edx, dword ptr [8*ebx + SYMBOL]
mov	edx, dword ptr [8*ecx + SYMBOL]
mov	edx, dword ptr [8*edi + SYMBOL]
mov	edx, dword ptr [8*edx + SYMBOL+8]
mov	edx, dword ptr [8*esi + SYMBOL]
mov	edx, dword ptr [SYMBOL+8]
mov	edx, dword ptr [SYMBOL]
mov	edx, dword ptr [eax + 8*ecx + SYMBOL-8]
mov	edx, dword ptr [eax + 8*ecx + SYMBOL]
mov	edx, dword ptr [eax + 8*edx + SYMBOL+8]
mov	edx, dword ptr [eax + 8*edx + SYMBOL]
mov	edx, dword ptr [eax + SYMBOL+8]
mov	edx, dword ptr [eax + SYMBOL]
mov	edx, dword ptr [ebp + SYMBOL+8]
mov	edx, dword ptr [ebp + SYMBOL]
mov	edx, dword ptr [ebx + 8*eax + SYMBOL-8]
mov	edx, dword ptr [ebx + 8*eax + SYMBOL]
mov	edx, dword ptr [ebx + 8*esi + SYMBOL]
mov	edx, dword ptr [ebx + SYMBOL+8]
mov	edx, dword ptr [ebx + SYMBOL]
mov	edx, dword ptr [ecx + 8*edx + SYMBOL]
mov	edx, dword ptr [ecx + SYMBOL+8]
mov	edx, dword ptr [ecx + SYMBOL]
mov	edx, dword ptr [edi + SYMBOL+8]
mov	edx, dword ptr [edi + SYMBOL]
mov	edx, dword ptr [edx + 8*eax + SYMBOL]
mov	edx, dword ptr [edx + 8*ebp + SYMBOL]
mov	edx, dword ptr [edx + SYMBOL+8]
mov	edx, dword ptr [edx + SYMBOL]
mov	edx, dword ptr [esi + SYMBOL+8]
mov	edx, dword ptr [esi + SYMBOL]
mov	edx, offset SYMBOL
mov	edx, offset SYMBOL+8
mov	esi, dword ptr [8*eax + SYMBOL-8]
mov	esi, dword ptr [8*eax + SYMBOL]
mov	esi, dword ptr [8*ebp + SYMBOL]
mov	esi, dword ptr [8*ebx + SYMBOL]
mov	esi, dword ptr [8*ecx + SYMBOL+8]
mov	esi, dword ptr [8*edx + SYMBOL]
mov	esi, dword ptr [8*esi + SYMBOL+8]
mov	esi, dword ptr [8*esi + SYMBOL]
mov	esi, dword ptr [SYMBOL+8]
mov	esi, dword ptr [SYMBOL]
mov	esi, dword ptr [eax + 8*ecx + SYMBOL+8]
mov	esi, dword ptr [eax + 8*ecx + SYMBOL-8]
mov	esi, dword ptr [eax + 8*edx + SYMBOL]
mov	esi, dword ptr [eax + SYMBOL+8]
mov	esi, dword ptr [eax + SYMBOL]
mov	esi, dword ptr [ebp + SYMBOL+8]
mov	esi, dword ptr [ebp + SYMBOL]
mov	esi, dword ptr [ebx + 8*eax + SYMBOL]
mov	esi, dword ptr [ebx + 8*ebp + SYMBOL]
mov	esi, dword ptr [ebx + 8*esi + SYMBOL]
mov	esi, dword ptr [ebx + SYMBOL+8]
mov	esi, dword ptr [ebx + SYMBOL]
mov	esi, dword ptr [ebx + eax + SYMBOL]
mov	esi, dword ptr [ebx + esi + SYMBOL+8]
mov	esi, dword ptr [ecx + 8*eax + SYMBOL]
mov	esi, dword ptr [ecx + 8*ebx + SYMBOL+8]
mov	esi, dword ptr [ecx + 8*esi + SYMBOL+8]
mov	esi, dword ptr [ecx + SYMBOL+8]
mov	esi, dword ptr [ecx + SYMBOL]
mov	esi, dword ptr [ecx + eax + SYMBOL+8]
mov	esi, dword ptr [ecx + ebx + SYMBOL+8]
mov	esi, dword ptr [edi + SYMBOL]
mov	esi, dword ptr [edx + SYMBOL+8]
mov	esi, dword ptr [edx + SYMBOL]
mov	esi, dword ptr [esi + SYMBOL+8]
mov	esi, dword ptr [esi + SYMBOL]
mov	esi, offset SYMBOL
mov	esi, offset SYMBOL+8
mov	word ptr [SYMBOL+8], 8
mov	word ptr [SYMBOL], 8
mov	word ptr [eax + SYMBOL], 8
mov	word ptr [ebp + SYMBOL+8], 8
mov	word ptr [ebx + SYMBOL+8], 8
mov	word ptr [ebx + SYMBOL], 8
movsx	eax, byte ptr [8*eax + SYMBOL]
movsx	eax, byte ptr [SYMBOL]
movsx	eax, byte ptr [eax + SYMBOL]
movsx	eax, byte ptr [eax + ecx + SYMBOL]
movsx	eax, byte ptr [eax + edi + SYMBOL]
movsx	eax, byte ptr [ebp + SYMBOL]
movsx	eax, byte ptr [ebp + eax + SYMBOL]
movsx	eax, byte ptr [ebx + SYMBOL]
movsx	eax, byte ptr [ebx + eax + SYMBOL]
movsx	eax, byte ptr [ebx + ebp + SYMBOL]
movsx	eax, byte ptr [ebx + edi + SYMBOL]
movsx	eax, byte ptr [ebx + esi + SYMBOL]
movsx	eax, byte ptr [ecx + SYMBOL]
movsx	eax, byte ptr [ecx + eax + SYMBOL]
movsx	eax, byte ptr [edi + SYMBOL]
movsx	eax, byte ptr [edi + ebp + SYMBOL]
movsx	eax, byte ptr [edi + esi + SYMBOL]
movsx	eax, byte ptr [edx + SYMBOL]
movsx	eax, byte ptr [edx + eax + SYMBOL]
movsx	eax, byte ptr [esi + SYMBOL]
movsx	eax, byte ptr [esi + eax + SYMBOL]
movsx	eax, word ptr [8*eax + SYMBOL+8]
movsx	eax, word ptr [eax + 8*ecx + SYMBOL+8]
movsx	ebp, byte ptr [ebp + SYMBOL]
movsx	ebx, byte ptr [eax + SYMBOL]
movsx	ebx, byte ptr [ebx + SYMBOL]
movsx	ebx, byte ptr [edx + SYMBOL]
movsx	ecx, byte ptr [8*eax + SYMBOL]
movsx	ecx, byte ptr [8*ecx + SYMBOL+8]
movsx	ecx, byte ptr [8*ecx + SYMBOL]
movsx	ecx, byte ptr [SYMBOL]
movsx	ecx, byte ptr [eax + SYMBOL]
movsx	ecx, byte ptr [eax + ecx + SYMBOL]
movsx	ecx, byte ptr [ebp + SYMBOL]
movsx	ecx, byte ptr [ebx + SYMBOL]
movsx	ecx, byte ptr [ebx + eax + SYMBOL]
movsx	ecx, byte ptr [ebx + ecx + SYMBOL]
movsx	ecx, byte ptr [ebx + edx + SYMBOL]
movsx	ecx, byte ptr [ebx + esi + SYMBOL]
movsx	ecx, byte ptr [ecx + 8*edx + SYMBOL+8]
movsx	ecx, byte ptr [ecx + 8*edx + SYMBOL]
movsx	ecx, byte ptr [ecx + SYMBOL]
movsx	ecx, byte ptr [ecx + eax + SYMBOL]
movsx	ecx, byte ptr [ecx + edx + SYMBOL]
movsx	ecx, byte ptr [edi + SYMBOL]
movsx	ecx, byte ptr [edi + eax + SYMBOL]
movsx	ecx, byte ptr [edi + ecx + SYMBOL]
movsx	ecx, byte ptr [edi + edx + SYMBOL]
movsx	ecx, byte ptr [edx + SYMBOL]
movsx	ecx, byte ptr [esi + SYMBOL]
movsx	edi, byte ptr [ebx + eax + SYMBOL]
movsx	edi, byte ptr [ebx + edi + SYMBOL]
movsx	edi, byte ptr [ebx + edx + SYMBOL]
movsx	edx, byte ptr [8*eax + SYMBOL]
movsx	edx, byte ptr [SYMBOL]
movsx	edx, byte ptr [eax + SYMBOL]
movsx	edx, byte ptr [eax + ecx + SYMBOL]
movsx	edx, byte ptr [ebx + SYMBOL]
movsx	edx, byte ptr [ebx + eax + SYMBOL]
movsx	edx, byte ptr [ebx + ecx + SYMBOL-8]
movsx	edx, byte ptr [ebx + ecx + SYMBOL]
movsx	edx, byte ptr [ebx + edx + SYMBOL]
movsx	edx, byte ptr [ebx + esi + SYMBOL]
movsx	edx, byte ptr [ecx + SYMBOL-8]
movsx	edx, byte ptr [edi + ecx + SYMBOL-8]
movsx	edx, byte ptr [edi + edx + SYMBOL]
movsx	edx, byte ptr [edx + SYMBOL]
movsx	esi, byte ptr [eax + SYMBOL]
movsx	esi, byte ptr [ebx + ecx + SYMBOL]
movsx	esi, byte ptr [ecx + SYMBOL]
movsx	esi, byte ptr [edi + SYMBOL]
movsx	esi, byte ptr [esi + SYMBOL]
movzx	eax, byte ptr [8*eax + SYMBOL]
movzx	eax, byte ptr [SYMBOL+8]
movzx	eax, byte ptr [SYMBOL]
movzx	eax, byte ptr [eax + SYMBOL+8]
movzx	eax, byte ptr [eax + SYMBOL-8]
movzx	eax, byte ptr [eax + SYMBOL]
movzx	eax, byte ptr [eax + ebp + SYMBOL]
movzx	eax, byte ptr [eax + ebx + SYMBOL]
movzx	eax, byte ptr [eax + ecx + SYMBOL-8]
movzx	eax, byte ptr [eax + ecx + SYMBOL]
movzx	eax, byte ptr [eax + edi + SYMBOL-8]
movzx	eax, byte ptr [eax + edi + SYMBOL]
movzx	eax, byte ptr [eax + edx + SYMBOL]
movzx	eax, byte ptr [eax + esi + SYMBOL]
movzx	eax, byte ptr [ebp + SYMBOL]
movzx	eax, byte ptr [ebp + eax + SYMBOL]
movzx	eax, byte ptr [ebp + ecx + SYMBOL]
movzx	eax, byte ptr [ebx + SYMBOL+8]
movzx	eax, byte ptr [ebx + SYMBOL]
movzx	eax, byte ptr [ebx + eax + SYMBOL+8]
movzx	eax, byte ptr [ebx + eax + SYMBOL]
movzx	eax, byte ptr [ebx + ebp + SYMBOL-8]
movzx	eax, byte ptr [ebx + ebp + SYMBOL]
movzx	eax, byte ptr [ebx + ecx + SYMBOL]
movzx	eax, byte ptr [ebx + edi + SYMBOL-8]
movzx	eax, byte ptr [ebx + edi + SYMBOL]
movzx	eax, byte ptr [ecx + SYMBOL]
movzx	eax, byte ptr [ecx + eax + SYMBOL]
movzx	eax, byte ptr [edi + SYMBOL]
movzx	eax, byte ptr [edi + eax + SYMBOL]
movzx	eax, byte ptr [edx + SYMBOL]
movzx	eax, byte ptr [edx + eax + SYMBOL]
movzx	eax, byte ptr [edx + edi + SYMBOL]
movzx	eax, byte ptr [edx + esi + SYMBOL]
movzx	eax, byte ptr [esi + SYMBOL+8]
movzx	eax, byte ptr [esi + SYMBOL]
movzx	eax, byte ptr [esi + eax + SYMBOL]
movzx	eax, word ptr [eax + 8*ecx + SYMBOL]
movzx	eax, word ptr [eax + eax + SYMBOL+8]
movzx	eax, word ptr [edx + 8*eax + SYMBOL+8]
movzx	eax, word ptr [edx + 8*eax + SYMBOL]
movzx	ebp, byte ptr [SYMBOL]
movzx	ebp, byte ptr [eax + edx + SYMBOL]
movzx	ebp, byte ptr [ebp + SYMBOL]
movzx	ebp, byte ptr [ebx + SYMBOL+8]
movzx	ebp, byte ptr [ebx + SYMBOL]
movzx	ebp, byte ptr [ecx + SYMBOL]
movzx	ebp, byte ptr [edi + SYMBOL+8]
movzx	ebp, byte ptr [edx + SYMBOL]
movzx	ebp, byte ptr [esi + eax + SYMBOL]
movzx	ebp, word ptr [ecx + 8*ebp + SYMBOL]
movzx	ebx, byte ptr [SYMBOL+8]
movzx	ebx, byte ptr [SYMBOL]
movzx	ebx, byte ptr [eax + SYMBOL+8]
movzx	ebx, byte ptr [eax + SYMBOL]
movzx	ebx, byte ptr [eax + esi + SYMBOL]
movzx	ebx, byte ptr [ebp + ecx + SYMBOL]
movzx	ebx, byte ptr [ebx + SYMBOL]
movzx	ebx, byte ptr [ebx + eax + SYMBOL]
movzx	ebx, byte ptr [ecx + SYMBOL+8]
movzx	ebx, byte ptr [ecx + SYMBOL]
movzx	ebx, byte ptr [ecx + ebx + SYMBOL]
movzx	ebx, byte ptr [edi + 8*ebx + SYMBOL]
movzx	ebx, byte ptr [edi + SYMBOL]
movzx	ebx, byte ptr [edi + ebx + SYMBOL]
movzx	ebx, byte ptr [edx + SYMBOL]
movzx	ebx, byte ptr [edx + ebx + SYMBOL]
movzx	ebx, byte ptr [edx + ecx + SYMBOL]
movzx	ebx, byte ptr [esi + SYMBOL+8]
movzx	ebx, byte ptr [esi + SYMBOL]
movzx	ebx, word ptr [ecx + 8*ebx + SYMBOL]
movzx	ecx, byte ptr [8*ecx + SYMBOL]
movzx	ecx, byte ptr [SYMBOL+8]
movzx	ecx, byte ptr [SYMBOL]
movzx	ecx, byte ptr [eax + SYMBOL+8]
movzx	ecx, byte ptr [eax + SYMBOL]
movzx	ecx, byte ptr [eax + ebp + SYMBOL]
movzx	ecx, byte ptr [eax + ecx + SYMBOL]
movzx	ecx, byte ptr [eax + edi + SYMBOL]
movzx	ecx, byte ptr [ebp + SYMBOL]
movzx	ecx, byte ptr [ebp + eax + SYMBOL]
movzx	ecx, byte ptr [ebp + ecx + SYMBOL]
movzx	ecx, byte ptr [ebp + edx + SYMBOL]
movzx	ecx, byte ptr [ebx + SYMBOL+8]
movzx	ecx, byte ptr [ebx + SYMBOL-8]
movzx	ecx, byte ptr [ebx + SYMBOL]
movzx	ecx, byte ptr [ebx + eax + SYMBOL+8]
movzx	ecx, byte ptr [ebx + eax + SYMBOL]
movzx	ecx, byte ptr [ebx + ecx + SYMBOL]
movzx	ecx, byte ptr [ebx + edi + SYMBOL]
movzx	ecx, byte ptr [ebx + edx + SYMBOL]
movzx	ecx, byte ptr [ebx + esi + SYMBOL]
movzx	ecx, byte ptr [ecx + SYMBOL-8]
movzx	ecx, byte ptr [ecx + SYMBOL]
movzx	ecx, byte ptr [ecx + eax + SYMBOL]
movzx	ecx, byte ptr [ecx + ebx + SYMBOL-8]
movzx	ecx, byte ptr [ecx + ebx + SYMBOL]
movzx	ecx, byte ptr [ecx + edi + SYMBOL]
movzx	ecx, byte ptr [ecx + edx + SYMBOL]
movzx	ecx, byte ptr [edi + SYMBOL-8]
movzx	ecx, byte ptr [edi + SYMBOL]
movzx	ecx, byte ptr [edi + eax + SYMBOL]
movzx	ecx, byte ptr [edi + ebp + SYMBOL]
movzx	ecx, byte ptr [edi + ebx + SYMBOL]
movzx	ecx, byte ptr [edi + ecx + SYMBOL]
movzx	ecx, byte ptr [edx + SYMBOL]
movzx	ecx, byte ptr [edx + ecx + SYMBOL]
movzx	ecx, byte ptr [edx + edi + SYMBOL]
movzx	ecx, byte ptr [esi + SYMBOL]
movzx	ecx, byte ptr [esi + ecx + SYMBOL]
movzx	ecx, word ptr [ecx + ecx + SYMBOL+8]
movzx	ecx, word ptr [edx + 8*ecx + SYMBOL]
movzx	edi, byte ptr [SYMBOL+8]
movzx	edi, byte ptr [SYMBOL]
movzx	edi, byte ptr [eax + SYMBOL]
movzx	edi, byte ptr [eax + edx + SYMBOL]
movzx	edi, byte ptr [ebp + edi + SYMBOL]
movzx	edi, byte ptr [ebx + SYMBOL+8]
movzx	edi, byte ptr [ebx + SYMBOL]
movzx	edx, byte ptr [SYMBOL+8]
movzx	edx, byte ptr [SYMBOL]
movzx	edx, byte ptr [eax + SYMBOL+8]
movzx	edx, byte ptr [eax + SYMBOL]
movzx	edx, byte ptr [eax + edx + SYMBOL]
movzx	edx, byte ptr [ebp + SYMBOL+8]
movzx	edx, byte ptr [ebp + SYMBOL]
movzx	edx, byte ptr [ebp + eax + SYMBOL]
movzx	edx, byte ptr [ebp + ebx + SYMBOL]
movzx	edx, byte ptr [ebp + edi + SYMBOL]
movzx	edx, byte ptr [ebp + edx + SYMBOL]
movzx	edx, byte ptr [ebx + SYMBOL+8]
movzx	edx, byte ptr [ebx + SYMBOL]
movzx	edx, byte ptr [ebx + ebp + SYMBOL]
movzx	edx, byte ptr [ebx + edx + SYMBOL]
movzx	edx, byte ptr [ecx + SYMBOL+8]
movzx	edx, byte ptr [ecx + SYMBOL]
movzx	edx, byte ptr [ecx + edx + SYMBOL]
movzx	edx, byte ptr [edi + SYMBOL]
movzx	edx, byte ptr [edi + eax + SYMBOL]
movzx	edx, byte ptr [edi + edx + SYMBOL]
movzx	edx, byte ptr [edx + SYMBOL]
movzx	edx, byte ptr [edx + ebp + SYMBOL]
movzx	edx, byte ptr [edx + ecx + SYMBOL]
movzx	edx, byte ptr [esi + SYMBOL+8]
movzx	edx, byte ptr [esi + SYMBOL]
movzx	edx, byte ptr [esi + edx + SYMBOL]
movzx	edx, word ptr [eax + 8*edx + SYMBOL+8]
movzx	edx, word ptr [ecx + 8*ebx + SYMBOL]
movzx	edx, word ptr [ecx + 8*edx + SYMBOL+8]
movzx	esi, byte ptr [SYMBOL]
movzx	esi, byte ptr [eax + ecx + SYMBOL]
movzx	esi, byte ptr [ebp + SYMBOL]
movzx	esi, byte ptr [ebx + SYMBOL+8]
movzx	esi, byte ptr [ebx + SYMBOL]
movzx	esi, byte ptr [ebx + ebp + SYMBOL]
movzx	esi, byte ptr [ebx + edi + SYMBOL]
movzx	esi, byte ptr [edx + esi + SYMBOL]
movzx	esi, byte ptr [esi + SYMBOL]
movzx	esi, word ptr [eax + 8*edx + SYMBOL+8]
neg	dword ptr [SYMBOL+8]
neg	dword ptr [ebx + SYMBOL+8]
or	ah, byte ptr [ebx + SYMBOL]
or	al, byte ptr [SYMBOL+8]
or	al, byte ptr [SYMBOL]
or	al, byte ptr [ebx + SYMBOL+8]
or	al, byte ptr [ebx + SYMBOL]
or	al, byte ptr [ecx + SYMBOL]
or	al, byte ptr [edi + SYMBOL]
or	al, byte ptr [esi + SYMBOL]
or	bh, byte ptr [SYMBOL]
or	bl, byte ptr [SYMBOL]
or	byte ptr [SYMBOL+8], -8
or	byte ptr [SYMBOL+8], 8
or	byte ptr [SYMBOL], 8
or	byte ptr [SYMBOL], al
or	byte ptr [SYMBOL], ch
or	byte ptr [SYMBOL], cl
or	byte ptr [ebx + SYMBOL+8], -8
or	byte ptr [ebx + SYMBOL+8], 8
or	byte ptr [ebx + SYMBOL], 8
or	byte ptr [ebx + SYMBOL], al
or	byte ptr [ebx + SYMBOL], ch
or	byte ptr [ebx + SYMBOL], cl
or	byte ptr [edi + SYMBOL+8], 8
or	byte ptr [edi + SYMBOL], al
or	byte ptr [edi + SYMBOL], cl
or	ch, byte ptr [ebx + SYMBOL]
or	cl, byte ptr [SYMBOL]
or	cl, byte ptr [ebp + SYMBOL]
or	cl, byte ptr [ebx + SYMBOL]
or	cl, byte ptr [esi + SYMBOL]
or	dl, byte ptr [SYMBOL]
or	dl, byte ptr [ebx + SYMBOL]
or	dword ptr [SYMBOL], eax
or	dword ptr [ebx + SYMBOL], eax
or	eax, dword ptr [SYMBOL+8]
or	eax, dword ptr [SYMBOL]
or	eax, dword ptr [ebx + SYMBOL+8]
or	eax, dword ptr [ebx + SYMBOL]
or	eax, dword ptr [ecx + SYMBOL+8]
or	eax, dword ptr [ecx + SYMBOL]
or	eax, dword ptr [edi + SYMBOL+8]
or	eax, dword ptr [edx + SYMBOL+8]
or	ebp, dword ptr [SYMBOL]
or	ebp, dword ptr [ebx + 8*eax + SYMBOL]
or	ebp, dword ptr [ebx + SYMBOL]
or	ebp, dword ptr [edi + SYMBOL]
or	ebx, dword ptr [8*eax + SYMBOL]
or	ecx, dword ptr [SYMBOL]
or	ecx, dword ptr [eax + SYMBOL]
or	ecx, dword ptr [ebp + SYMBOL+8]
or	ecx, dword ptr [ebx + SYMBOL]
or	ecx, dword ptr [edi + SYMBOL]
or	ecx, dword ptr [esi + SYMBOL+8]
or	ecx, dword ptr [esi + SYMBOL]
or	edi, dword ptr [ebx + SYMBOL]
or	edx, dword ptr [SYMBOL+8]
or	edx, dword ptr [SYMBOL]
or	edx, dword ptr [eax + SYMBOL+8]
or	edx, dword ptr [ebp + SYMBOL+8]
or	edx, dword ptr [ebx + 8*eax + SYMBOL]
or	edx, dword ptr [ebx + SYMBOL+8]
or	edx, dword ptr [ebx + SYMBOL]
or	edx, dword ptr [esi + SYMBOL+8]
push	dword ptr [8*eax + SYMBOL]
push	dword ptr [8*edi + SYMBOL+8]
push	dword ptr [8*edi + SYMBOL-8]
push	dword ptr [8*edx + SYMBOL]
push	dword ptr [SYMBOL+8]
push	dword ptr [SYMBOL]
push	dword ptr [eax + 8*ebp + SYMBOL-8]
push	dword ptr [eax + 8*edi + SYMBOL]
push	dword ptr [eax + 8*esi + SYMBOL]
push	dword ptr [eax + SYMBOL+8]
push	dword ptr [eax + SYMBOL]
push	dword ptr [ebp + SYMBOL]
push	dword ptr [ebx + 8*eax + SYMBOL]
push	dword ptr [ebx + 8*edi + SYMBOL+8]
push	dword ptr [ebx + 8*edi + SYMBOL-8]
push	dword ptr [ebx + 8*edx + SYMBOL]
push	dword ptr [ebx + SYMBOL+8]
push	dword ptr [ebx + SYMBOL]
push	dword ptr [ecx + SYMBOL]
push	dword ptr [edi + SYMBOL]
push	dword ptr [edx + 8*ebx + SYMBOL]
push	dword ptr [esi + SYMBOL+8]
push	dword ptr [esi + SYMBOL]
push	offset SYMBOL
push	offset SYMBOL+8
rep	SYMBOL es:[edi], [esi]
rep	SYMBOL es:[edi], eax
sbb	dword ptr [SYMBOL+8], 8
sbb	dword ptr [ebx + SYMBOL+8], 8
sbb	eax, dword ptr [SYMBOL+8]
sbb	eax, dword ptr [ebx + SYMBOL+8]
sbb	eax, dword ptr [edi + SYMBOL+8]
sbb	ebp, dword ptr [ebx + SYMBOL+8]
sbb	ecx, dword ptr [SYMBOL+8]
sbb	ecx, dword ptr [ebx + SYMBOL+8]
sbb	ecx, dword ptr [edi + SYMBOL+8]
sbb	edi, dword ptr [SYMBOL+8]
sbb	edi, dword ptr [eax + SYMBOL+8]
sbb	edi, dword ptr [ebx + SYMBOL+8]
sbb	esi, dword ptr [SYMBOL+8]
sbb	esi, dword ptr [ebx + SYMBOL+8]
setae	byte ptr [SYMBOL]
setae	byte ptr [ebx + SYMBOL]
setae	byte ptr [esi + SYMBOL]
sete	byte ptr [SYMBOL]
sete	byte ptr [eax + SYMBOL]
sete	byte ptr [ebx + SYMBOL]
sete	byte ptr [edi + SYMBOL]
sete	byte ptr [esi + SYMBOL+8]
sete	byte ptr [esi + SYMBOL]
setne	byte ptr [SYMBOL]
setne	byte ptr [eax + SYMBOL]
setne	byte ptr [ebp + SYMBOL]
setne	byte ptr [ebx + SYMBOL]
setns	byte ptr [SYMBOL]
setns	byte ptr [eax + SYMBOL]
setns	byte ptr [ebx + SYMBOL]
sub	dword ptr [SYMBOL], 8
sub	dword ptr [ebx + SYMBOL], 8
sub	eax, dword ptr [SYMBOL+8]
sub	eax, dword ptr [SYMBOL]
sub	eax, dword ptr [ebp + SYMBOL+8]
sub	eax, dword ptr [ebx + SYMBOL+8]
sub	eax, dword ptr [ebx + SYMBOL]
sub	eax, dword ptr [ecx + SYMBOL]
sub	eax, dword ptr [edx + SYMBOL]
sub	ebp, dword ptr [SYMBOL]
sub	ebx, dword ptr [SYMBOL]
sub	ecx, dword ptr [SYMBOL]
sub	ecx, dword ptr [eax + SYMBOL]
sub	ecx, dword ptr [ebp + SYMBOL]
sub	ecx, dword ptr [ebx + SYMBOL]
sub	ecx, dword ptr [edx + SYMBOL]
sub	ecx, dword ptr [esi + SYMBOL]
sub	edi, dword ptr [SYMBOL]
sub	edi, dword ptr [ebx + SYMBOL]
sub	edx, dword ptr [SYMBOL+8]
sub	edx, dword ptr [SYMBOL]
sub	edx, dword ptr [eax + SYMBOL]
sub	edx, dword ptr [ebp + SYMBOL+8]
sub	edx, dword ptr [ebx + SYMBOL+8]
sub	esi, dword ptr [SYMBOL]
sub	esi, dword ptr [ebx + SYMBOL]
test	byte ptr [8*eax + SYMBOL], 8
test	byte ptr [8*ecx + SYMBOL], 8
test	byte ptr [SYMBOL+8], -8
test	byte ptr [SYMBOL+8], 8
test	byte ptr [SYMBOL], 8
test	byte ptr [SYMBOL], al
test	byte ptr [eax + SYMBOL+8], 8
test	byte ptr [eax + SYMBOL], 8
test	byte ptr [eax + ecx + SYMBOL], 8
test	byte ptr [ebp + SYMBOL+8], 8
test	byte ptr [ebx + SYMBOL+8], -8
test	byte ptr [ebx + SYMBOL+8], 8
test	byte ptr [ebx + SYMBOL], 8
test	byte ptr [ebx + SYMBOL], al
test	byte ptr [ecx + SYMBOL+8], 8
test	byte ptr [ecx + SYMBOL], 8
test	byte ptr [ecx + edx + SYMBOL], 8
test	byte ptr [edi + SYMBOL+8], -8
test	byte ptr [edi + SYMBOL+8], 8
test	byte ptr [edi + SYMBOL], 8
test	byte ptr [esi + SYMBOL+8], 8
test	dword ptr [SYMBOL], -8
test	dword ptr [SYMBOL], 8
test	dword ptr [ebx + SYMBOL], -8
test	dword ptr [edi + SYMBOL], 8
vpexpandd	zmm1 {k1} {SYMBOL}, zmm1
vpexpandd	zmm2 {k1} {SYMBOL}, zmm2
xor	al, byte ptr [SYMBOL]
xor	al, byte ptr [ebx + SYMBOL]
xor	byte ptr [eax + SYMBOL+8], 8
xor	eax, dword ptr [8*ecx + SYMBOL+8]
xor	eax, dword ptr [8*ecx + SYMBOL]
xor	eax, dword ptr [SYMBOL+8]
xor	eax, dword ptr [ebx + 8*ecx + SYMBOL+8]
xor	eax, dword ptr [ebx + SYMBOL+8]
xor	eax, dword ptr [ecx + 8*edx + SYMBOL+8]
xor	ebp, dword ptr [8*eax + SYMBOL+8]
xor	ebp, dword ptr [8*ecx + SYMBOL+8]
xor	ebp, dword ptr [8*ecx + SYMBOL]
xor	ebp, dword ptr [8*edi + SYMBOL+8]
xor	ebp, dword ptr [8*edi + SYMBOL]
xor	ebp, dword ptr [8*edx + SYMBOL+8]
xor	ebp, dword ptr [8*esi + SYMBOL]
xor	ebp, dword ptr [eax + SYMBOL+8]
xor	ebp, dword ptr [ebx + 8*ecx + SYMBOL+8]
xor	ebp, dword ptr [ebx + 8*ecx + SYMBOL]
xor	ebp, dword ptr [ebx + ecx + SYMBOL+8]
xor	ebp, dword ptr [edx + SYMBOL+8]
xor	ebx, dword ptr [8*eax + SYMBOL+8]
xor	ebx, dword ptr [8*ebp + SYMBOL+8]
xor	ebx, dword ptr [8*ebp + SYMBOL]
xor	ebx, dword ptr [8*ecx + SYMBOL+8]
xor	ebx, dword ptr [8*edi + SYMBOL+8]
xor	ebx, dword ptr [8*edi + SYMBOL]
xor	ebx, dword ptr [8*edx + SYMBOL+8]
xor	ebx, dword ptr [8*edx + SYMBOL]
xor	ebx, dword ptr [8*esi + SYMBOL+8]
xor	ebx, dword ptr [SYMBOL+8]
xor	ebx, dword ptr [eax + SYMBOL+8]
xor	ebx, dword ptr [edi + 8*eax + SYMBOL]
xor	ecx, dword ptr [8*eax + SYMBOL]
xor	ecx, dword ptr [SYMBOL+8]
xor	ecx, dword ptr [SYMBOL]
xor	ecx, dword ptr [ebx + SYMBOL+8]
xor	ecx, dword ptr [ebx + SYMBOL]
xor	edi, dword ptr [8*ebp + SYMBOL+8]
xor	edi, dword ptr [8*ebx + SYMBOL+8]
xor	edi, dword ptr [8*ebx + SYMBOL]
xor	edi, dword ptr [8*ecx + SYMBOL+8]
xor	edi, dword ptr [8*ecx + SYMBOL]
xor	edi, dword ptr [8*edx + SYMBOL+8]
xor	edi, dword ptr [8*esi + SYMBOL+8]
xor	edi, dword ptr [ebx + 8*eax + SYMBOL+8]
xor	edi, dword ptr [ebx + 8*ecx + SYMBOL+8]
xor	edi, dword ptr [ebx + 8*ecx + SYMBOL]
xor	edi, dword ptr [ebx + SYMBOL+8]
xor	edi, dword ptr [ebx + eax + SYMBOL+8]
xor	edi, dword ptr [ecx + SYMBOL+8]
xor	edi, dword ptr [edx + SYMBOL+8]
xor	edx, dword ptr [SYMBOL+8]
xor	edx, dword ptr [SYMBOL]
xor	edx, dword ptr [ebx + 8*eax + SYMBOL+8]
xor	edx, dword ptr [ebx + SYMBOL+8]
xor	edx, dword ptr [ebx + SYMBOL]
xor	esi, dword ptr [8*eax + SYMBOL+8]
xor	esi, dword ptr [8*eax + SYMBOL]
xor	esi, dword ptr [8*ebp + SYMBOL]
xor	esi, dword ptr [8*ebx + SYMBOL]
xor	esi, dword ptr [8*edi + SYMBOL]
xor	esi, dword ptr [8*edx + SYMBOL+8]
xor	esi, dword ptr [8*edx + SYMBOL]
xor	esi, dword ptr [SYMBOL]
xor	esi, dword ptr [eax + SYMBOL+8]
xor	esi, dword ptr [ebx + 8*eax + SYMBOL+8]
xor	esi, dword ptr [ebx + 8*eax + SYMBOL]
xor	esi, dword ptr [ebx + 8*edx + SYMBOL+8]
xor	esi, dword ptr [ebx + SYMBOL]
xor	esi, dword ptr [ebx + eax + SYMBOL+8]
