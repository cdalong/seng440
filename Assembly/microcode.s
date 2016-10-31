%% MuLaw CompressTable
%%
%%
%%
%%
% Call comes from pw2log(r3) so r3 is our 16-bit linear number to compress
MicrocodeEngine:

mov r1, r3 lsr #8 
and  r1,r1, #0x0F %sign = r1
add r3, r3, #0x84 %biased input = r3
ldr r0, =CompressTable
mov r4, r3 %secondary variable of sample = r4
and r3, r3 lsr#7, #0xFF %r3 for lookup
ldrh r5, [r0, r3] % exponent = r5
mov r2, r5
add r2, #3
and r2, r2, #0x0F
orr r3, r3, r5, lsl #4 ,r2 



HorizontalMicrocode:

mov r1, r3 lsr #8 					|		NOP	
and  r1,r1, #0x0F %sign = r1		|	    add r3, r3, #0x84 %biased input = r3
ldr r0, =CompressTable			    |		nop
and r3, r3 lsr#7, #0xFF %r3 for look|		NOP
									|		mov r2, r5
									|		add r2, #3
									|		and r2, r2, #0x0F
									|		orr r3, r3, r5, lsl #4 ,r2 
									|


















