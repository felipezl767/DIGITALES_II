#include <xc.h>
#include <pic16f887.h>
#define _XTAL_FREQ 8000000

__CONFIG(FOSC_INTRC_CLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF);
__CONFIG(BOR4V_BOR40V & WRT_OFF);

void main(void) {
    TRISD = 0x00;// output puerto D
    TRISA0 = 1;
    ANSEL = 0x01; //  Config el Puerto como input Anal�gica.
    
    ADCON1bits.ADFM = 0; //  Justificaci�n Izquierda (modo-8bits).
    ADCON1bits.VCFG0 = 0; //  Selecciona Voltajes de Referencia (5v-0v).
    ADCON1bits.VCFG1 = 0; //  Selecciona Voltajes de Referencia (5v-0v). 
  
    ADCON0bits.CHS = 0b0000; //  Selecciona el Canal Anal�gico AN0.
    ADCON0bits.ADCS = 0b01; //  Time de Conversi�n Fosc/8.
    while (1) {
        ADCON0bits.ADON = 1; //  Habilita el M�dulo AD.
        __delay_us(30);
        ADCON0bits.GO = 1; //  Inicia la Conversi�n AD.
        while (ADCON0bits.GO); //  Espera a que termine la conversi�n AD.
        ADCON0bits.ADON = 0; //  Habilita el M�dulo AD.
        PORTD = ADRESH;
        __delay_ms(500);
    }
}
