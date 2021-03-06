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
	char divisor;


	//program divisors
	p = (alt_u32*) SEM_RAM_SLAVE_BASE;
	for (i=0; i<TIME_SETS; i++)
	{
		tmp = 0;
		for (j=TIME_STATES; j>0; j--)
		{
			tmp = (tmp << 8) | divisors[i][j-1];
		}
		//nanosleep(20680);
		*p=tmp;
		p++;
	}
	//since we use pointers (cached data access) to write divisor RAM, 
	//and not direct i/o access with IOWR, we need to flush cache
	alt_dcache_flush();

	printf("Ready load\n");
	
	//IOWR_ALTERA_AVALON_SEM_CTL(SEM_CTL_SLAVE_BASE,0x01);//?????? ?????? ??????? ? ????????????????? ???? ? ?????? 48
	//printf("Transmit CTL 0x01\n");

	// ??????? ?????? ??????? ?????? ?????? ?????? ????? ??????? usleep
	//select timeset and run semafor
	IOWR_ALTERA_AVALON_SEM_CTL(SEM_CTL_SLAVE_BASE,0x01);
    printf("Transmit CTL 0x01\n");
	IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,0x00);
	printf("Transmit 0x00\n");
	usleep(1);
	IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,0x01);
	printf("Transmit 0x01\n");
	usleep(1);
	IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,0x02);
	printf("Transmit 0x02\n");
	usleep(1);
    IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,0x03);
    printf("Transmit 0x03\n");


	while (1)
	{
		// ??????? ?????? ??????? ?????? ?????? ?????? ????? ???? for
		/*for (int m=0; m<4; m++){
		for (double k=0; k<(ALT_CPU_CPU_FREQ/(500000*ALT_CPU_CPU_FREQ)); k+=0.000001); // ????????? ????????
		divisor = (char)m;
		IOWR_ALTERA_AVALON_SEM_DIVSET(SEM_CTL_SLAVE_BASE,divisor);
		printf("divisor = %x\n",divisor);//?????????? ???????? ????????
		};
		printf("Ready\n");*/
	}
	
	return 0;
}
