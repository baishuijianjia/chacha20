// Generated by PeachPy 0.2.0 from chacha20_amd64.py


// func blocksAmd64SSE2(x *uint32, inp *uint8, outp *uint8, nrBlocks *uint)
TEXT ·blocksAmd64SSE2(SB),4,$0-32
	MOVQ x+0(FP), AX
	MOVQ inp+8(FP), BX
	MOVQ outp+16(FP), CX
	MOVQ nrBlocks+24(FP), DX
	MOVQ SP, DI
	ANDQ $15, DI
	MOVQ $16, SI
	SUBQ DI, SI
	SUBQ SI, SP
	SUBQ $32, SP
	MOVL $1, DI
	MOVL DI, 0(SP)
	MOVL $0, DI
	MOVL DI, 4(SP)
	MOVL DI, 8(SP)
	MOVL DI, 12(SP)
	SUBQ $4, DX
	JCS vector_loop_end
vector_loop_begin:
		MOVO 0(AX), X0
		MOVO 16(AX), X1
		MOVO 32(AX), X2
		MOVO 48(AX), X3
		MOVO X0, X4
		MOVO X1, X5
		MOVO X2, X6
		MOVO X3, X7
		PADDQ 0(SP), X7
		MOVO X0, X8
		MOVO X1, X9
		MOVO X2, X10
		MOVO X7, X11
		PADDQ 0(SP), X11
		MOVO X0, X12
		MOVO X1, X13
		MOVO X2, X14
		MOVO X11, X15
		PADDQ 0(SP), X15
		MOVQ $20, DI
rounds_loop1_begin:
			PADDL X1, X0
			PADDL X5, X4
			PADDL X9, X8
			PADDL X13, X12
			PXOR X0, X3
			PXOR X4, X7
			PXOR X8, X11
			PXOR X12, X15
			MOVO X12, 16(SP)
			MOVO X3, X12
			PSLLL $16, X12
			PSRLL $16, X3
			PXOR X12, X3
			MOVO X7, X12
			PSLLL $16, X12
			PSRLL $16, X7
			PXOR X12, X7
			MOVO X11, X12
			PSLLL $16, X12
			PSRLL $16, X11
			PXOR X12, X11
			MOVO X15, X12
			PSLLL $16, X12
			PSRLL $16, X15
			PXOR X12, X15
			PADDL X3, X2
			PADDL X7, X6
			PADDL X11, X10
			PADDL X15, X14
			PXOR X2, X1
			PXOR X6, X5
			PXOR X10, X9
			PXOR X14, X13
			MOVO X1, X12
			PSLLL $12, X12
			PSRLL $20, X1
			PXOR X12, X1
			MOVO X5, X12
			PSLLL $12, X12
			PSRLL $20, X5
			PXOR X12, X5
			MOVO X9, X12
			PSLLL $12, X12
			PSRLL $20, X9
			PXOR X12, X9
			MOVO X13, X12
			PSLLL $12, X12
			PSRLL $20, X13
			PXOR X12, X13
			MOVO 16(SP), X12
			PADDL X1, X0
			PADDL X5, X4
			PADDL X9, X8
			PADDL X13, X12
			PXOR X0, X3
			PXOR X4, X7
			PXOR X8, X11
			PXOR X12, X15
			MOVO X12, 16(SP)
			MOVO X3, X12
			PSLLL $8, X12
			PSRLL $24, X3
			PXOR X12, X3
			MOVO X7, X12
			PSLLL $8, X12
			PSRLL $24, X7
			PXOR X12, X7
			MOVO X11, X12
			PSLLL $8, X12
			PSRLL $24, X11
			PXOR X12, X11
			MOVO X15, X12
			PSLLL $8, X12
			PSRLL $24, X15
			PXOR X12, X15
			PADDL X3, X2
			PADDL X7, X6
			PADDL X11, X10
			PADDL X15, X14
			PXOR X2, X1
			PXOR X6, X5
			PXOR X10, X9
			PXOR X14, X13
			MOVO X1, X12
			PSLLL $7, X12
			PSRLL $25, X1
			PXOR X12, X1
			MOVO X5, X12
			PSLLL $7, X12
			PSRLL $25, X5
			PXOR X12, X5
			MOVO X9, X12
			PSLLL $7, X12
			PSRLL $25, X9
			PXOR X12, X9
			MOVO X13, X12
			PSLLL $7, X12
			PSRLL $25, X13
			PXOR X12, X13
			PSHUFL $57, X1, X1
			PSHUFL $57, X5, X5
			PSHUFL $57, X9, X9
			PSHUFL $57, X13, X13
			PSHUFL $78, X2, X2
			PSHUFL $78, X6, X6
			PSHUFL $78, X10, X10
			PSHUFL $78, X14, X14
			PSHUFL $147, X3, X3
			PSHUFL $147, X7, X7
			PSHUFL $147, X11, X11
			PSHUFL $147, X15, X15
			MOVO 16(SP), X12
			PADDL X1, X0
			PADDL X5, X4
			PADDL X9, X8
			PADDL X13, X12
			PXOR X0, X3
			PXOR X4, X7
			PXOR X8, X11
			PXOR X12, X15
			MOVO X12, 16(SP)
			MOVO X3, X12
			PSLLL $16, X12
			PSRLL $16, X3
			PXOR X12, X3
			MOVO X7, X12
			PSLLL $16, X12
			PSRLL $16, X7
			PXOR X12, X7
			MOVO X11, X12
			PSLLL $16, X12
			PSRLL $16, X11
			PXOR X12, X11
			MOVO X15, X12
			PSLLL $16, X12
			PSRLL $16, X15
			PXOR X12, X15
			PADDL X3, X2
			PADDL X7, X6
			PADDL X11, X10
			PADDL X15, X14
			PXOR X2, X1
			PXOR X6, X5
			PXOR X10, X9
			PXOR X14, X13
			MOVO X1, X12
			PSLLL $12, X12
			PSRLL $20, X1
			PXOR X12, X1
			MOVO X5, X12
			PSLLL $12, X12
			PSRLL $20, X5
			PXOR X12, X5
			MOVO X9, X12
			PSLLL $12, X12
			PSRLL $20, X9
			PXOR X12, X9
			MOVO X13, X12
			PSLLL $12, X12
			PSRLL $20, X13
			PXOR X12, X13
			MOVO 16(SP), X12
			PADDL X1, X0
			PADDL X5, X4
			PADDL X9, X8
			PADDL X13, X12
			PXOR X0, X3
			PXOR X4, X7
			PXOR X8, X11
			PXOR X12, X15
			MOVO X12, 16(SP)
			MOVO X3, X12
			PSLLL $8, X12
			PSRLL $24, X3
			PXOR X12, X3
			MOVO X7, X12
			PSLLL $8, X12
			PSRLL $24, X7
			PXOR X12, X7
			MOVO X11, X12
			PSLLL $8, X12
			PSRLL $24, X11
			PXOR X12, X11
			MOVO X15, X12
			PSLLL $8, X12
			PSRLL $24, X15
			PXOR X12, X15
			PADDL X3, X2
			PADDL X7, X6
			PADDL X11, X10
			PADDL X15, X14
			PXOR X2, X1
			PXOR X6, X5
			PXOR X10, X9
			PXOR X14, X13
			MOVO X1, X12
			PSLLL $7, X12
			PSRLL $25, X1
			PXOR X12, X1
			MOVO X5, X12
			PSLLL $7, X12
			PSRLL $25, X5
			PXOR X12, X5
			MOVO X9, X12
			PSLLL $7, X12
			PSRLL $25, X9
			PXOR X12, X9
			MOVO X13, X12
			PSLLL $7, X12
			PSRLL $25, X13
			PXOR X12, X13
			PSHUFL $147, X1, X1
			PSHUFL $147, X5, X5
			PSHUFL $147, X9, X9
			PSHUFL $147, X13, X13
			PSHUFL $78, X2, X2
			PSHUFL $78, X6, X6
			PSHUFL $78, X10, X10
			PSHUFL $78, X14, X14
			PSHUFL $57, X3, X3
			PSHUFL $57, X7, X7
			PSHUFL $57, X11, X11
			PSHUFL $57, X15, X15
			MOVO 16(SP), X12
			SUBQ $2, DI
			JNE rounds_loop1_begin
		MOVO X12, 16(SP)
		PADDL 0(AX), X0
		PADDL 16(AX), X1
		PADDL 32(AX), X2
		PADDL 48(AX), X3
		MOVOU 0(BX), X12
		PXOR X0, X12
		MOVOU X12, 0(CX)
		MOVOU 16(BX), X12
		PXOR X1, X12
		MOVOU X12, 16(CX)
		MOVOU 32(BX), X12
		PXOR X2, X12
		MOVOU X12, 32(CX)
		MOVOU 48(BX), X12
		PXOR X3, X12
		MOVOU X12, 48(CX)
		MOVO 48(AX), X3
		PADDQ 0(SP), X3
		PADDL 0(AX), X4
		PADDL 16(AX), X5
		PADDL 32(AX), X6
		PADDL X3, X7
		MOVOU 64(BX), X12
		PXOR X4, X12
		MOVOU X12, 64(CX)
		MOVOU 80(BX), X12
		PXOR X5, X12
		MOVOU X12, 80(CX)
		MOVOU 96(BX), X12
		PXOR X6, X12
		MOVOU X12, 96(CX)
		MOVOU 112(BX), X12
		PXOR X7, X12
		MOVOU X12, 112(CX)
		PADDQ 0(SP), X3
		PADDL 0(AX), X8
		PADDL 16(AX), X9
		PADDL 32(AX), X10
		PADDL X3, X11
		MOVOU 128(BX), X12
		PXOR X8, X12
		MOVOU X12, 128(CX)
		MOVOU 144(BX), X12
		PXOR X9, X12
		MOVOU X12, 144(CX)
		MOVOU 160(BX), X12
		PXOR X10, X12
		MOVOU X12, 160(CX)
		MOVOU 176(BX), X12
		PXOR X11, X12
		MOVOU X12, 176(CX)
		PADDQ 0(SP), X3
		MOVO 16(SP), X12
		PADDL 0(AX), X12
		PADDL 16(AX), X13
		PADDL 32(AX), X14
		PADDL X3, X15
		MOVOU 192(BX), X0
		PXOR X12, X0
		MOVOU X0, 192(CX)
		MOVOU 208(BX), X0
		PXOR X13, X0
		MOVOU X0, 208(CX)
		MOVOU 224(BX), X0
		PXOR X14, X0
		MOVOU X0, 224(CX)
		MOVOU 240(BX), X0
		PXOR X15, X0
		MOVOU X0, 240(CX)
		PADDQ 0(SP), X3
		MOVO X3, 48(AX)
		ADDQ $256, BX
		ADDQ $256, CX
		SUBQ $4, DX
		JCC vector_loop_begin
vector_loop_end:
	ADDQ $4, DX
	JEQ out
	MOVO 0(AX), X4
	MOVO 16(AX), X5
	MOVO 32(AX), X6
	MOVO 48(AX), X7
	MOVO 0(SP), X8
serial_loop_begin:
		MOVO X4, X0
		MOVO X5, X1
		MOVO X6, X2
		MOVO X7, X3
		MOVQ $20, DI
rounds_loop0_begin:
			PADDL X1, X0
			PXOR X0, X3
			MOVO X3, X12
			PSLLL $16, X12
			PSRLL $16, X3
			PXOR X12, X3
			PADDL X3, X2
			PXOR X2, X1
			MOVO X1, X12
			PSLLL $12, X12
			PSRLL $20, X1
			PXOR X12, X1
			PADDL X1, X0
			PXOR X0, X3
			MOVO X3, X12
			PSLLL $8, X12
			PSRLL $24, X3
			PXOR X12, X3
			PADDL X3, X2
			PXOR X2, X1
			MOVO X1, X12
			PSLLL $7, X12
			PSRLL $25, X1
			PXOR X12, X1
			PSHUFL $57, X1, X1
			PSHUFL $78, X2, X2
			PSHUFL $147, X3, X3
			PADDL X1, X0
			PXOR X0, X3
			MOVO X3, X12
			PSLLL $16, X12
			PSRLL $16, X3
			PXOR X12, X3
			PADDL X3, X2
			PXOR X2, X1
			MOVO X1, X12
			PSLLL $12, X12
			PSRLL $20, X1
			PXOR X12, X1
			PADDL X1, X0
			PXOR X0, X3
			MOVO X3, X12
			PSLLL $8, X12
			PSRLL $24, X3
			PXOR X12, X3
			PADDL X3, X2
			PXOR X2, X1
			MOVO X1, X12
			PSLLL $7, X12
			PSRLL $25, X1
			PXOR X12, X1
			PSHUFL $147, X1, X1
			PSHUFL $78, X2, X2
			PSHUFL $57, X3, X3
			SUBQ $2, DI
			JNE rounds_loop0_begin
		PADDL X4, X0
		PADDL X5, X1
		PADDL X6, X2
		PADDL X7, X3
		MOVOU 0(BX), X12
		PXOR X0, X12
		MOVOU X12, 0(CX)
		MOVOU 16(BX), X12
		PXOR X1, X12
		MOVOU X12, 16(CX)
		MOVOU 32(BX), X12
		PXOR X2, X12
		MOVOU X12, 32(CX)
		MOVOU 48(BX), X12
		PXOR X3, X12
		MOVOU X12, 48(CX)
		PADDQ X8, X7
		ADDQ $64, BX
		ADDQ $64, CX
		SUBQ $1, DX
		JNE serial_loop_begin
	MOVO X7, 48(AX)
out:
	PXOR X0, X0
	MOVO X0, 16(SP)
	ADDQ $32, SP
	ADDQ SI, SP
	RET
