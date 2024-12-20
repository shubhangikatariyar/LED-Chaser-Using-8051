org 0000h
	JMP start
	
	
org			0003H	//int0_bar vector 				
			MOV		R1,P1
			RETI	
	
org 0100h
start:
	

    SETB  P3.0 
    MOV   P2,#00h
    MOV   P0,#00h
    MOV   P1,#0ffh	
    Mov   R6,#00h 
    SETB	IT0				//config int0_bar as -ve tiggered	
	SETB 	EA				//Enable Global int
	SETB	EX0		
 
 ///==========ONE
AGAIN: 	
          Mov A,R6
	      LCALL  get_SSD_code
		  MOV P0,A//DISPLAY 01
	      LCALL PATTERN01
	      JB P3.0,AGAIN //if bit is set , jump to AGAIN    SWITCH 
		  JNB P3.0,$ 
		  INC R6

	   
//=============TWO		
AGAIN2:   Mov A,R6
	      LCALL   get_SSD_code
		  MOV P0,A//DISPLAY 01           //DISPLAY 02
	      LCALL PATTERN02
	      JB P3.0, AGAIN2        //Loop continues till button is press
          JNB P3.0,$ 
	      INC R6

//==========THREE
AGAIN3: 
          Mov A,R6
	      LCALL   get_SSD_code
		  MOV P0,A//DISPLAY 01
		  LCALL	PATTERN03	
          JB P3.0,AGAIN3       //Loop continues till button is press
          JNB P3.0,$ 
		  INC R6
		
		
//===============FOUR		
AGAIN4: 
	      Mov A,R6
	      LCALL   get_SSD_code
		  MOV P0,A
		  LCALL	PATTERN04	
          JB P3.0,AGAIN4 
	      JNB P3.0,$ 
	      INC R6 
	  
//============FIVE		
AGAIN5:   
           Mov A,R6
	       LCALL   get_SSD_code
		   MOV P0,A
		   LCALL	PATTERN05	
           JB P3.0,AGAIN5  
           JNB P3.0,$ 	   
           INC R6
	  
	 
//===============SIX		
AGAIN6:  
           Mov A,R6
	       LCALL   get_SSD_code
		   MOV P0,A//DISPLAY 01
		   LCALL	PATTERN06	
           JB P3.0,AGAIN6          //Loop continues till button is press 
           JNB P3.0,$ 
	       INC R6
	 

//=================SEVEN
AGAIN7: 
           Mov A,R6
	       LCALL   get_SSD_code
		   MOV P0,A//DISPLAY 01
		   LCALL	PATTERN07	
           JB P3.0,AGAIN7          //Loop continues till button is press
           JNB P3.0,$ 
	       INC R6
	  
	
//===============EIGHT
AGAIN8:  
          Mov A,R6
	      LCALL   get_SSD_code
		  MOV P0,A
		  LCALL	PATTERN08	
          JB P3.0,AGAIN8  
          JNB P3.0,$ 	   
          INC R6
	   
	  
//===========================NINE
AGAIN9:   
           Mov A,R6
	       LCALL   get_SSD_code
		   MOV P0,A//DISPLAY 01
		   LCALL	PATTERN04	
           JB P3.0,AGAIN9           //Loop continues till button is press 
           JNB P3.0,$ 
	       INC R6
	  
	
//====================TEN
AGAIN10:   
            Mov A,R6
	        LCALL   get_SSD_code
		    MOV P0,A//DISPLAY 01
		    LCALL	PATTERN10	
            JB P3.0,AGAIN10            //Loop continues till button is press
            JNB P3.0,$ 
	        Mov R6,#00h
	        LCALL AGAIN                //Loop jumps back to the begining of number 01


//================================================================================================

PATTERN01:
	SETB	P2.7		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY
	CLR	P2.7		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY
	
	SETB	P2.6		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.6		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 
	
	SETB	P2.5		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.5		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 

	SETB	P2.4		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.4		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 

	SETB	P2.3		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.3		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 

	SETB	P2.2		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.2		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 

	SETB	P2.1		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.1		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 

	SETB	P2.0		; PORT-2 PIN-0 HIGH
	LCALL   DELAY		; CALL DELAY 
	CLR	P2.0		; PORT-2 PIN-0 LOW
	LCALL   DELAY		; CALL DELAY 
RET
//===============================================================================
PATTERN02:
	SETB	P2.7
	SETB	P2.0
	LCALL   DELAY		
	CLR	P2.7
	CLR P2.0
	LCALL   DELAY
	
	SETB	P2.6
	SETB	P2.1
	LCALL   DELAY		
	CLR	P2.6
	CLR P2.1
	LCALL   DELAY
	
	SETB	P2.5
	SETB	P2.2
	LCALL   DELAY		
	CLR	P2.5
	CLR P2.2
	LCALL   DELAY
	
	SETB	P2.4
	SETB	P2.3
	LCALL   DELAY		
	CLR	P2.4
	CLR P2.3
	LCALL   DELAY

	SETB	P2.5
	SETB	P2.2
	LCALL   DELAY	
	CLR	P2.5
	CLR P2.2
	LCALL   DELAY
	
	SETB	P2.6
	SETB	P2.1
	LCALL   DELAY	
	CLR	P2.6
	CLR P2.1
	LCALL   DELAY
	
	SETB	P2.7
	SETB	P2.0
	LCALL   DELAY	
	CLR	P2.7
	CLR P2.0
	LCALL   DELAY
RET
//====================================================================================
PATTERN03:
	SETB	P2.0
	SETB	P2.2
	SETB	P2.4
	SETB	P2.6
	LCALL   DELAY		
	CLR	P2.0
	CLR P2.2
	CLR P2.4
	CLR P2.6
	LCALL   DELAY
	SETB	P2.1
	SETB	P2.3
	SETB	P2.5
	SETB	P2.7
	LCALL   DELAY		
	CLR	P2.1
	CLR P2.3
	CLR P2.5
	CLR P2.7
	LCALL   DELAY
RET
//====================================================================================
PATTERN04:
	SETB	P2.0
	SETB	P2.1
	SETB	P2.6
	SETB	P2.7
	LCALL	DELAY
	CLR P2.0
	CLR P2.1
	CLR P2.6
	CLR P2.7
	LCALL DELAY
	
	SETB	P2.2
	SETB	P2.3
	SETB	P2.4
	SETB	P2.5
	LCALL	DELAY
	CLR P2.2
	CLR P2.3
	CLR P2.4
	CLR P2.5
	LCALL DELAY
	
	SETB	P2.2
	SETB	P2.3
	SETB	P2.4
	SETB	P2.5
	LCALL	DELAY
	CLR P2.2
	CLR P2.3
	CLR P2.4
	CLR P2.5
	LCALL DELAY
	
	SETB	P2.0
	SETB	P2.1
	SETB	P2.6
	SETB	P2.7
	LCALL	DELAY
	CLR P2.0
	CLR P2.1
	CLR P2.6
	CLR P2.7
	LCALL DELAY
	
	RET
//=======================================================================================================
PATTERN05:
	SETB	P2.0
	SETB	P2.7
	LCALL DELAY
	CLR P2.0
	CLR P2.7
	
	SETB	P2.5
	SETB	P2.2
	LCALL	DELAY
	CLR P2.5
	CLR P2.2
	
	SETB	P2.3
	SETB	P2.4
	LCALL	DELAY
	CLR P2.4
	CLR P2.3
	
	SETB	P2.1
	SETB	P2.6
	LCALL	DELAY
	CLR P2.1
	CLR P2.6
	
	RET
;//====================================================================================================
PATTERN06:
	SETB	P2.0
	LCALL DELAY
	SETB	P2.1
	LCALL DELAY
	CLR P2.0
	SETB	P2.2
	LCALL DELAY
	CLR P2.1
	SETB	P2.3
	LCALL DELAY
	CLR P2.2
	SETB	P2.4
	LCALL DELAY
	CLR P2.3
	SETB	P2.5
	LCALL DELAY
	CLR P2.4
	SETB	P2.6
	LCALL DELAY
	CLR P2.5
	SETB	P2.7
	LCALL DELAY
	CLR P2.6
	LCALL DELAY
	CLR P2.7
	
	RET
//=====================================================================================================
PATTERN07:
	SETB P2.0
	LCALL DELAY
	SETB P2.1
	LCALL DELAY
	SETB P2.2
	LCALL DELAY
	SETB P2.3
	LCALL DELAY
	SETB P2.4
	LCALL DELAY
	SETB P2.5
	LCALL DELAY
	SETB P2.6
	LCALL DELAY
	SETB P2.7
	LCALL DELAY
	
	CLR P2.0
	LCALL DELAY
	CLR P2.1
	LCALL DELAY
	CLR P2.2
	LCALL DELAY
	CLR P2.3
	LCALL DELAY
	CLR P2.4
	LCALL DELAY
	CLR P2.5
	LCALL DELAY
	CLR P2.6
	LCALL DELAY
	CLR P2.7
	LCALL DELAY
	
	RET
//==========================================================================================================
PATTERN08:
	SETB	P2.0
	LCALL DELAY
	SETB	P2.1
	LCALL DELAY
	CLR P2.0
	SETB	P2.3
	LCALL DELAY
	CLR P2.1
	SETB	P2.5
	LCALL DELAY
	CLR P2.3
	SETB	P2.7
	LCALL DELAY
	CLR P2.5
	SETB	P2.6
	LCALL DELAY
	CLR P2.7
	SETB	P2.4
	LCALL DELAY
	CLR P2.6
	SETB	P2.2
	LCALL DELAY
	CLR P2.4
	SETB	P2.0
	LCALL DELAY
	CLR P2.2
	CLR P2.0
	
	RET
//=============================================================================================================
PATTERN09:
	SETB	P2.0
	SETB	P2.4
	SETB	P2.3
	SETB	P2.7
	LCALL DELAY
	CLR P2.0
	CLR P2.4
	CLR P2.3
	CLR P2.7
	LCALL DELAY
	
	SETB	P2.2
	SETB	P2.6
	SETB	P2.1
	SETB	P2.5
	LCALL DELAY
	CLR P2.2
	CLR P2.6
	CLR P2.1
	CLR P2.5
	LCALL DELAY
	
	RET
//==================================================================================================================
PATTERN10:
	SETB	P2.0
	SETB	P2.2
	SETB	P2.7
	SETB	P2.5
	LCALL DELAY
	SETB	P2.1
	SETB	P2.3
	SETB	P2.6
	SETB	P2.4
	CLR P2.0
	CLR P2.2
	CLR P2.5
	CLR P2.7
	LCALL DELAY
	CLR P2.1
	CLR P2.3
	CLR P2.6
	CLR P2.4
	LCALL DELAY
	
	RET

//===================================================================================


		
ORG 0200
get_SSD_code:
	      MOV DPTR,#0300h
         
	      MOVC A,@A+DPTR 
          RET
org 0300h
ssd_lookup: DB 3Fh,06h,5Bh,4Fh,66h,6Dh,7Dh,07h,7Fh,6Fh
	

DELAY: 

    up2:  MOV R1,P1
	up3:  MOV R3,#250
	      DJNZ R3,$
		  DJNZ R1,up3   
		;  DJNZ R5,up2
		 ; DJNZ R1,up1
	
RET
	

	
END			; END OF PROGRAM