"""
Architecture-specific register sets and ASM keywords for assembly normalization.

Structure per architecture:
  _<ARCH>_REGISTERS  — physical registers only
  _<ARCH>_MODIFIERS  — assembler keywords used as operand modifiers (shift types,
                        relocation operators, size specifiers, etc.)

ARCH_REGISTERS maps arch name → registers | modifiers (the full "not-a-symbol" set).
"""

# ---------------------------------------------------------------------------
# x86 / x86-64
# ---------------------------------------------------------------------------
_X86_REGISTERS = {
    'rax', 'rbx', 'rcx', 'rdx', 'rsi', 'rdi', 'rsp', 'rbp',
    'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'esp', 'ebp',
    'ax',  'bx',  'cx',  'dx',  'si',  'di',  'sp',  'bp',
    'al',  'bl',  'cl',  'dl',  'ah',  'bh',  'ch',  'dh',
    'sil', 'dil', 'spl', 'bpl',
    'rip', 'eip', 'ip',
    *(f'r{i}'  for i in range(8, 16)),
    *(f'r{i}d' for i in range(8, 16)),
    *(f'r{i}w' for i in range(8, 16)),
    *(f'r{i}b' for i in range(8, 16)),
    *(f'xmm{i}' for i in range(16)),
    *(f'ymm{i}' for i in range(16)),
    *(f'zmm{i}' for i in range(32)),
    *(f'k{i}'   for i in range(8)),
    *(f'mm{i}'  for i in range(8)),
    'st', *(f'st({i})' for i in range(8)),
    'cs', 'ds', 'es', 'fs', 'gs', 'ss',
}

# ---------------------------------------------------------------------------
# ARM (32-bit)
# ---------------------------------------------------------------------------
_ARM_REGISTERS = {
    *(f'r{i}' for i in range(16)),
    'sp', 'lr', 'pc', 'fp', 'ip', 'sl', 'sb',
    *(f's{i}' for i in range(32)),
    *(f'd{i}' for i in range(32)),
    *(f'q{i}' for i in range(16)),
    'cpsr', 'spsr', 'apsr',
}

_ARM_MODIFIERS = {
    # shift types used as keywords in operands: ldr r1, [r9, r5, lsl #4]
    'lsl', 'lsr', 'asr', 'asl', 'ror', 'rrx',
}

# ---------------------------------------------------------------------------
# AArch64
# ---------------------------------------------------------------------------
_AARCH64_REGISTERS = {
    *(f'x{i}' for i in range(31)), 'xzr', 'sp', 'lr', 'pc',
    *(f'w{i}' for i in range(31)), 'wzr', 'wsp',
    *(f'v{i}' for i in range(32)),
    *(f'q{i}' for i in range(32)),
    *(f'd{i}' for i in range(32)),
    *(f's{i}' for i in range(32)),
    *(f'h{i}' for i in range(32)),
    *(f'b{i}' for i in range(32)),
    'nzcv', 'fpcr', 'fpsr', 'daif',
}

_AARCH64_MODIFIERS = {
    # shift types: ldr x1, [x0, x7, lsl 3]
    'lsl', 'lsr', 'asr', 'ror',
    # extend types
    'uxtb', 'uxth', 'uxtw', 'uxtx',
    'sxtb', 'sxth', 'sxtw', 'sxtx',
}

# AArch64 relocation modifiers (:lo12:symbol, :got:symbol, ...)
# Used separately in normalize_instruction for the :modifier:symbol pattern.
AARCH64_RELOC_MODIFIERS = {
    'lo12',
    'got', 'got_lo12',
    'gottprel', 'gottprel_lo12',
    'tlsdesc', 'tlsdesc_lo12',
    'pg_hi21', 'pg_hi21_nc',
    'abs_g0', 'abs_g0_nc',
    'abs_g1', 'abs_g1_nc',
    'abs_g2', 'abs_g2_nc',
    'abs_g3',
    'dtprel_lo12', 'dtprel_lo12_nc', 'dtprel_hi12',
    'tprel_lo12',  'tprel_lo12_nc',  'tprel_hi12',
}

# ---------------------------------------------------------------------------
# MIPS / MIPS64
# GAS uses $-prefixed registers ($t0, $f0, ...).
# _IDENT_RE skips '$', so we match the bare name after it.
# ---------------------------------------------------------------------------
_MIPS_REGISTERS = {
    'zero', 'at', 'v0', 'v1',
    *(f'a{i}' for i in range(4)),
    *(f't{i}' for i in range(10)),
    *(f's{i}' for i in range(9)),       # s0-s7, s8=fp
    'k0', 'k1', 'gp', 'sp', 'fp', 'ra',
    *(f'f{i}' for i in range(32)),
    'hi', 'lo',
    *(f'fcc{i}' for i in range(8)),     # floating-point condition code registers
}

# GAS uses %-prefixed relocation operators: %got_ofst(symbol), %hi(symbol), ...
# _IDENT_RE skips '%', so we match the bare name after it.

# Common modifiers shared by both MIPS32 and MIPS64
MIPS_RELOC_MODIFIERS = {
    'hi', 'lo',
    'got_hi', 'got_lo',
    'got_ofst', 'got_disp', 'got_page',
    'gp_rel',
    'call16',
    'call_hi', 'call_lo',
    'higher', 'highest',
    'dtprel_hi', 'dtprel_lo',
    'tprel_hi', 'tprel_lo',
    'pcrel_hi', 'pcrel_lo',
    'neg',
}

# MIPS32-only modifiers
MIPS32_RELOC_MODIFIERS = MIPS_RELOC_MODIFIERS | {
    'got',      # lw $20,%got(__stack_chk_guard)($28)
}

# ---------------------------------------------------------------------------
# RISC-V 64 relocation modifiers  (%hi, %lo, %pcrel_hi, ...)
# GAS uses %-prefixed relocation operators: %hi(symbol), %lo(symbol), ...
# _IDENT_RE skips '%', so we match the bare name after it.
# ---------------------------------------------------------------------------
RISCV64_RELOC_MODIFIERS = {
    'hi', 'lo',
    'pcrel_hi', 'pcrel_lo',
    'got_pcrel_hi',
    'tprel_hi', 'tprel_lo', 'tprel_add',
    'tls_got_pcrel_hi', 'tls_ie_pcrel_hi',
}

# ---------------------------------------------------------------------------
# PowerPC64
# ---------------------------------------------------------------------------
_POWERPC64_REGISTERS = {
    *(f'r{i}'  for i in range(32)),
    *(f'f{i}'  for i in range(32)),
    *(f'v{i}'  for i in range(32)),
    *(f'vr{i}' for i in range(32)),
    *(f'vs{i}' for i in range(64)),
    *(f'cr{i}' for i in range(8)),
    'lr', 'ctr', 'xer', 'msr',
}

# ---------------------------------------------------------------------------
# RISC-V 64
# ---------------------------------------------------------------------------
_RISCV64_REGISTERS = {
    *(f'x{i}' for i in range(32)),
    'zero', 'ra', 'sp', 'gp', 'tp', 'fp',
    *(f't{i}'  for i in range(7)),
    *(f's{i}'  for i in range(12)),
    *(f'a{i}'  for i in range(8)),
    *(f'f{i}'  for i in range(32)),
    *(f'ft{i}' for i in range(12)),
    *(f'fs{i}' for i in range(12)),
    *(f'fa{i}' for i in range(8)),
}

# ---------------------------------------------------------------------------
# M68K
# GAS uses %-prefixed registers (%d0, %a0, ...).
# _IDENT_RE skips '%', so we match the bare name after it.
# ---------------------------------------------------------------------------
_M68K_REGISTERS = {
    *(f'd{i}' for i in range(8)),   # data registers
    *(f'a{i}' for i in range(8)),   # address registers (a7 = sp)
    'sp', 'fp', 'pc', 'sr', 'ccr',
    *(f'fp{i}' for i in range(8)),  # floating-point registers
    'fpcr', 'fpsr', 'fpiar',
}

_M68K_MODIFIERS = {
    # size specifiers — two forms:
    #   dot  form: reg.l / reg.w / reg.b  → matched as one token by _IDENT_RE
    #              (handled in replace_ident by stripping suffix before lookup)
    #   colon form: reg:w / reg:l / reg:b → ':' breaks the token, size is separate
    'l', 'w', 'b',
}

# ---------------------------------------------------------------------------
# S390X
# GAS uses %-prefixed registers (%r0, %f0, ...).
# _IDENT_RE skips '%', so we match the bare name after it.
# ---------------------------------------------------------------------------
_S390X_REGISTERS = {
    *(f'r{i}' for i in range(16)),
    *(f'f{i}' for i in range(16)),
    *(f'a{i}' for i in range(16)),
    *(f'v{i}' for i in range(32)),
}

# ---------------------------------------------------------------------------
# SPARC64
# GAS uses %-prefixed registers (%g0, %o0, ...).
# _IDENT_RE skips '%', so we match the bare name after it.
# ---------------------------------------------------------------------------
_SPARC64_REGISTERS = {
    *(f'g{i}' for i in range(8)),
    *(f'o{i}' for i in range(8)),
    *(f'l{i}' for i in range(8)),
    *(f'i{i}' for i in range(8)),
    *(f'f{i}' for i in range(64)),
    'sp', 'fp', 'pc', 'npc', 'y', 'ccr', 'asi', 'tick',
    # condition code registers
    'icc', 'xcc',
    *(f'fcc{i}' for i in range(4)),
}

# ---------------------------------------------------------------------------
# Intel-syntax ASM keywords (size specifiers, modifiers)
# ---------------------------------------------------------------------------
ASM_KEYWORDS = {
    'ptr', 'byte', 'word', 'dword', 'qword', 'tbyte', 'oword',
    'xmmword', 'ymmword', 'zmmword',
    'offset', 'flat', 'short', 'near', 'far', 'rel',
}

# ---------------------------------------------------------------------------
# SPARC64 relocation modifiers  (%hi, %lo, %hh, ...)
# GAS uses %-prefixed relocation operators: %hi(symbol), %lo(symbol), ...
# _IDENT_RE skips '%', so we match the bare name after it.
# ---------------------------------------------------------------------------
SPARC64_RELOC_MODIFIERS = {
    'hi', 'lo',
    'hh', 'hm', 'lm',
    'h44', 'm44', 'l44',
    'uhi', 'ulo',
    'gdop_hix22', 'gdop_lox10',
    'tgd_hi22', 'tgd_lo10',
    'tldm_hi22', 'tldm_lo10',
    'tldo_hix22', 'tldo_lox10',
    'tie_hi22', 'tie_lo10',
    'tle_hix22', 'tle_lox10',
    '_GLOBAL_OFFSET_TABLE_',
    '_global_offset_table_',
}

# ---------------------------------------------------------------------------
# Registry: arch name → registers | modifiers (full "not-a-symbol" set)
# ---------------------------------------------------------------------------
ALL_KEYWORDS: set[str] = set().union(
    _X86_REGISTERS,
    _ARM_REGISTERS, _ARM_MODIFIERS,
    _AARCH64_REGISTERS, _AARCH64_MODIFIERS, AARCH64_RELOC_MODIFIERS,
    _MIPS_REGISTERS, MIPS32_RELOC_MODIFIERS,
    _POWERPC64_REGISTERS,
    _RISCV64_REGISTERS, RISCV64_RELOC_MODIFIERS,
    _M68K_REGISTERS, _M68K_MODIFIERS,
    _S390X_REGISTERS,
    _SPARC64_REGISTERS, SPARC64_RELOC_MODIFIERS,
    ASM_KEYWORDS,
)

ARCH_REGISTERS: dict[str, set[str]] = {
    'x86':       _X86_REGISTERS,
    'x86-64':    _X86_REGISTERS,
    'arm':       _ARM_REGISTERS       | _ARM_MODIFIERS,
    'aarch64':   _AARCH64_REGISTERS   | _AARCH64_MODIFIERS | AARCH64_RELOC_MODIFIERS,
    'mips':      _MIPS_REGISTERS      | MIPS32_RELOC_MODIFIERS,
    'mips64':    _MIPS_REGISTERS      | MIPS_RELOC_MODIFIERS,
    'powerpc64': _POWERPC64_REGISTERS,
    'riscv64':   _RISCV64_REGISTERS      | RISCV64_RELOC_MODIFIERS,
    'm68k':      _M68K_REGISTERS      | _M68K_MODIFIERS,
    's390x':     _S390X_REGISTERS,
    'sparc64':   _SPARC64_REGISTERS      | SPARC64_RELOC_MODIFIERS,
}
