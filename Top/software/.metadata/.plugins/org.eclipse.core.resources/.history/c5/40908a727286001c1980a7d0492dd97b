#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include "altera_avalon_sem_regs.h"
#include "alt_types.h"
#include "system.h"

#define TIME_SETS	4
#define TIME_STATES	4
const alt_u8 divisors[TIME_SETS][TIME_STATES] = {
		{100,100, 50,10},
		{100,200,100,10},
		{150,250,200,10},
		{250,250,250,10}
};

int main()
{ 
	int i,j;
	volatile alt_u32 *p;
	alt_u32 tmp;


	//program divisors
	p = (alt_u32*) SEM_RAM_SLAVE_BASE;
	for (i=0; i<TIME_SETS; i++)
	{
		tmp = 0;
		for (j=TIME_STATES; j>0; j--)
		{
			tmp = (tmp << 8) | divisors[i][j-1];
		}
		*p=tmp;
		p++;
	}
	//since we use pointers (cached data access) to write divisor RAM, 
	//and not direct i/o access with IOWR, we need to flush cache
	alt_dcache_flush();

	printf("Ready\n");

	IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,0x00);
	IOWR_ALTERA_AVALON_SEM_CTL(SEM_CTL_SLAVE_BASE,0x01);
	IORD_ALTERA_AVALON_SEM_DIVISOR(SEM_CTL_SLAVE_BASE);

	
	while (1)
	{

	}
	
	return 0;
}
