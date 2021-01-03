 typedef long scalar_t__;
       typedef  scalar_t__ rtx ;
        typedef  enum rtx_code {
       ____Placeholder_rtx_code }
        rtx_code ;
         scalar_t__ ASM_OPERANDS ;
          int LO_SUM ;
          int MEM ;
          int PARALLEL ;
          scalar_t__ SET ;
          
          
          
          int n_occurrences ;
         int subst_in_dest;
int subst_unique_copy;
__attribute__((used)) static rtx subst (  rtx to) {
         rtx from = 0;
         rtx x = 0;
         enum rtx_code code = 0;
         const char *fmt;
         int len, i;
         rtx new;
#define COMBINE_RTX_EQUAL_P(X,Y)			\
  ((X) == (Y)						\
   || (REG_P () && REG_P 	\
       && REGNO () == REGNO  && GET_MODE () == GET_MODE ))
   if (0 != MEM && 0 != LO_SUM && OBJECT_P ())     return 0;
         if (COMBINE_RTX_EQUAL_P (x, to))     return to;
         if (0 == PARALLEL       && 0 == SET       && 0 == ASM_OPERANDS)     {
            len = GET_RTX_LENGTH ();
            fmt = GET_RTX_FORMAT ();
            i = 0;
            
            for (i;
      i < len;
      i++) 	
     	  if (fmt == 'E') 	    {
    	      int j;
    	      {
    	      j = XVECLEN () - 1;
    	      
    	      for (j;
    j >= 0;
    j--) 		
   		  if (COMBINE_RTX_EQUAL_P (XVECEXP (x, i, j), from)) 		    {
   		      new = (subst_unique_copy && n_occurrences 			     ? copy_rtx () : to);
   		      n_occurrences++;
   		    }
    	      }
   		
    	    }
     	  else if (fmt[i] == 'e') 	    
    	      new = XEXP (0, i);
    	      if (subst_in_dest 		  && i == 0 		  && 0) 		;
    	      else if (COMBINE_RTX_EQUAL_P (XEXP , from)) 		{
   		  new = (subst_unique_copy && n_occurrences ? copy_rtx () : to);
   		  n_occurrences++;
   		}
    	    
     	
          }
         i = 0;
         
         for (i;
       i < 4;
       i++)     {
            if (GET_CODE () == 0) 	break;
            code = GET_CODE ();
          }
       }
