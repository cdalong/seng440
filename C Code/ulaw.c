/*
	SENG 440 Embedded Systems
	
	U-law Compression
	
	Cameron Long
	
	V00748439
	
	July 14th, 2014

*/
#include <stdio.h>

static char CompressTable[256] =
{
     0,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,
     4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
     5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
     5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
     6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
     6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
     6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
     6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
     7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
};

__inline unsigned char pw2log(short sample)
{

const int Bias = 0x84;
const int Max = 32635;


/*main compression algorithm */
     int sign = (sample >> 8) & 0x80; /*find sign */
     if (sign)
          sample = (short)-sample;
     if (sample > Max)  /*Clip if past max */ 
          sample = Max;
		  
		  
     sample = (short)(sample + Bias); /*Add Bias */
     int exponent = (int)CompressTable[(sample>>7) & 0xFF]; /*Find in Table */
	 
     int nibble = (sample >> (exponent+3)) & 0x0F; /*Find lower nibble of data */
	 
     int compressedByte =(sign | (exponent << 4) | nibble);/*OR into final byte */

     return (unsigned char)compressedByte; /*Return byte*/
	 
	 
	 /**  This method assumes the bits are essentially being streamed to the system, and it is being processed
		One input sample at a time linearly. It is possible to pass an array  of numbers to the function and process it as a batch with a few simple changes. 
		This will remove function call overhead, but increase processing time per sample */
	 
	 
	 
}


int main(){


short i = -32635;

for (i=-32635;i<32635; i++){

unsigned char output = pw2log(i);

/*__asm__("pw2log %1, %%2" : "=r"(output): "r"(i));*/

/*Custom instruction instantiation*/


printf("%u\n" , output);

}
return 0;

}
