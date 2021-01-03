/* testd - Test adpcm decoder */

#include "adpcm.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

struct adpcm_state state;

#define NSAMPLES 1000

char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];

int main(int argc, char *argv[]) {
    int n;

    if(argc != 2)
    {
        printf("usage: adpcm out_filename\n");
        exit(1);
    }

    int filedesc = open(argv[1], O_RDWR|O_CREAT, 0666);
    if (filedesc < 0) {
        printf("Error filedesc");
        exit(1);
    }

    while(1) {
	n = read(0, abuf, NSAMPLES/2);
	if ( n < 0 ) {
	    perror("input file");
	    exit(1);
	}
	if ( n == 0 ) break;
	adpcm_decoder(abuf, sbuf, n*2, &state);
	write(filedesc, sbuf, n*4);
    }
    close(filedesc);
    exit(0);
}
