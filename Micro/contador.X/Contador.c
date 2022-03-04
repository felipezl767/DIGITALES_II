#include <xc.h>
#include <pic16f887.h>

__CONFIG(FOSC_INTRC_CLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF);
__CONFIG(BOR4V_BOR40V & WRT_OFF);

unsigned char count = 0;
char display [10]={0x3F,0x06,0x5B,0xF4,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

void main(void) {
    INTCONbits.GIE = 0;
    OPTION_REGbits.T0CS = 1;//mode contador
    OPTION_REGbits.T0SE = 1;//flanco de bajada Ra4
    TMR0 = 0;
    
    TRISD = 0x00;
    PORTD = 0x00;
    
    TRISA4 = 1;//Pin input contador
    ANSEL = 0x00;//digital
    
    while (1) {
        if (TMR0 == 10) {
            TMR0 = 0;
            count = 0;
        }
        count = TMR0;
        PORTD = display[count];
    }
    //return 1;
}
