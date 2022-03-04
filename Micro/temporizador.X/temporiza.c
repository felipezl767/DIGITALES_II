/*!
\file   temporizador.c
\date   2021-19-22
\author Fulvio Vivas <fulvio.vivas@unicauca.edu.co>
\brief  Example temporizador.
\par Copyright
Information contained herein is proprietary to and constitutes valuable
confidential trade secrets of unicauca, and
is subject to restrictions on use and disclosure.
\par
Copyright (c) unicauca 2021. All rights reserved.
\par
The copyright notices above do not evidence any actual or
intended publication of this material.
******************************************************************************
*/

// PIC16F887 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1
#pragma config FOSC = INTRC_CLKOUT// Oscillator Selection bits (INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // RE3/MCLR pin function select bit (RE3/MCLR pin function is digital input, MCLR internally tied to VDD)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory code protection is disabled)
#pragma config BOREN = OFF      // Brown Out Reset Selection bits (BOR disabled)
#pragma config IESO = OFF       // Internal External Switchover bit (Internal/External Switchover mode is disabled)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enabled bit (Fail-Safe Clock Monitor is disabled)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (RB3 pin has digital I/O, HV on MCLR must be used for programming)

// CONFIG2
#pragma config BOR4V = BOR40V   // Brown-out Reset Selection bit (Brown-out Reset set to 4.0V)
#pragma config WRT = OFF        // Flash Program Memory Self Write Enable bits (Write protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.


#include    <xc.h>
#include    <pic16f887.h> //Header file PIC16f887 definitions
#define _XTAL_FREQ 8000000
unsigned char count = 0;
unsigned char count_ms = 0;
char display  [10] = {0x3F,0X06,0x5B, 0x4F, 0x66, 0x6D,0X7D, 0x07, 0x7F, 0x6F}; 
int main(void) {
    
    TRISB0 = 0;  		//pinRB0 como salida digital, se colocará el led
    PORTB = 0;  		//El led se inicia apagado y parpadea cada 500ms
    ANSELH = 0x00;
    
    INTCONbits.GIE = 0;
    OPTION_REGbits.T0CS = 0;//mode temporizador
    OPTION_REGbits.PSA = 0; // prescaler enable
    OPTION_REGbits.PS = 0b111; // prescaler 256
    TMR0 = 60;
    
    TRISD = 0x00;
    PORTD = 0x00;
    
    TRISA4 = 1;//reset del contador
    ANSEL = 0x00;//digital
    
    INTCONbits.T0IF = 0;
    INTCONbits.T0IE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
    
    while (1) {
        //LATD = ((count / 10) << 4) + (count % 10);
        PORTD = display[ count % 10];
        __delay_ms(20);
        //PORTD = (1 << 4) + (count / 10);
        //__delay_ms(20);
        
        
        if (!PORTAbits.RA4) {
            __delay_ms(50);
            count = 0;
            TMR0 = 60;
            INTCONbits.T0IF = 0;
        }
         //PORTD = display [count % 10]; 
    }
    return 1;
}

void __interrupt() ISR_TIMER_0(void) {
    if (INTCONbits.T0IE && INTCONbits.T0IF) {
        PORTB = ~PORTB;
        count_ms++;
        if(count_ms == 20){
            if (++count == 100) {
                count = 0;
            }
            count_ms = 0;
        }
        TMR0 = 60;
        INTCONbits.T0IF = 0;
    }
}
