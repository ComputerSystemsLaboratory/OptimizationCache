#define NULL 0
 typedef long scalar_t__;
        typedef  struct TYPE_23__   TYPE_6__ ;
        typedef  struct TYPE_21__   TYPE_4__ ;
        typedef  struct TYPE_20__   TYPE_3__ ;
        typedef  struct TYPE_19__   TYPE_2__ ;
        typedef  struct TYPE_18__   TYPE_1__ ;
        typedef  struct TYPE_17__   TYPE_13__ ;
        typedef  struct TYPE_16__   TYPE_12__ ;
        typedef  struct TYPE_15__   TYPE_11__ ;
        struct debug_write_fns {
      void* (* typedef_type )  ;
      void* (* tag_type ) () ;
      void* (* function_type ) () ;
      void* (* method_type ) () ;
      int   (* struct_field ) () ;
      int   (* start_struct_type ) (void*,char const*,unsigned int,int,int  ) ;
      }
        ;
        struct TYPE_17__ {
      TYPE_12__* knamed;
       TYPE_11__* kmethod;
       struct debug_type* kreference;
       TYPE_6__* kfunction;
       TYPE_2__* kclass;
       TYPE_1__* kindirect;
       }
        ;
        struct debug_type {
      int kind;
       TYPE_13__ u;
       int   size;
       }
        ;
        struct debug_name {
      scalar_t__ mark;
       char const* name;
       }
        ;
        struct debug_handle {
      scalar_t__ mark;
       unsigned int base_id;
       }
        ;
        struct TYPE_20__ {
      int   bitsize;
       int   bitpos;
       }
        ;
        struct TYPE_21__ {
      TYPE_3__ f;
       }
        ;
        struct debug_field {
      int   visibility;
       TYPE_4__ u;
       int   name;
       struct debug_type* type;
       }
        ;
        typedef  void* bfd_boolean ;
        struct TYPE_23__ {
      int   varargs;
       struct debug_type** arg_types;
       }
        ;
        struct TYPE_19__ {
      unsigned int id;
       scalar_t__ mark;
       struct debug_field** fields;
       }
        ;
        struct TYPE_18__ {
      struct debug_type** slot;
       }
        ;
        struct TYPE_16__ {
      struct debug_name* name;
       struct debug_type* type;
       }
        ;
        struct TYPE_15__ {
      int   varargs;
       struct debug_type* domain_type;
       struct debug_type** arg_types;
       }
        ;
#define  DEBUG_KIND_CLASS 149 
#define  DEBUG_KIND_ILLEGAL 143 
#define  DEBUG_KIND_NAMED 139 
#define  DEBUG_KIND_REFERENCE 135 
#define  DEBUG_KIND_STRUCT 133 
#define  DEBUG_KIND_TAGGED 132 
#define  DEBUG_KIND_UNION 131 
#define  DEBUG_KIND_UNION_CLASS 130 
     void* FALSE ;
                                                                                    const struct debug_write_fns * debug_write_type_fns;
__attribute__((used)) static bfd_boolean debug_write_type (struct debug_handle *info, 		   void *fhandle, 		  struct debug_type *type, struct debug_name *name) {
         unsigned int i;
         int is;
         const char *tag = NULL;
         if ((type->kind == DEBUG_KIND_NAMED        || type->kind == DEBUG_KIND_TAGGED)       && (type->u.knamed->name->mark == info->mark 	  || 0))     
            if (type->kind == DEBUG_KIND_NAMED) 	return 0;
            else 	{
     	  struct debug_type *real;
     	  unsigned int id;
     	  real = debug_get_real_type ();
     	  if ((real->kind == DEBUG_KIND_STRUCT 	       || real->kind == DEBUG_KIND_UNION 	       || real->kind == DEBUG_KIND_CLASS 	       || real->kind == DEBUG_KIND_UNION_CLASS) 	      && real->u.kclass != NULL) 	    {
    	      if (real->u.kclass->id <= info->base_id) 		
   		  if (! debug_set_class_id ()) 		    return FALSE;
   		
    	      id = real->u.kclass->id;
    	    }
     	  return (*debug_write_type_fns->tag_type) (fhandle, type->u.knamed->name->name, id, 				   real->kind);
     	}
          
         if (name != NULL)     name->mark = info->mark;
         switch (type->kind)     {
          case DEBUG_KIND_ILLEGAL:       0;
            return debug_write_type (info,  fhandle, *type->u.kindirect->slot, 			       name);
          case DEBUG_KIND_STRUCT:     case DEBUG_KIND_UNION:       if (type->u.kclass != NULL) 	{
     	  if (type->u.kclass->id <= info->base_id) 	    
    	      if (! debug_set_class_id ()) 		return FALSE;
    	    
     	  if (info->mark == type->u.kclass->mark) 	    
    	      return 0;
    	    
     	}
            if (! (*debug_write_type_fns->start_struct_type) (fhandle, tag, 				       (type->u.kclass != NULL 					? type->u.kclass->id 					: 0), 				       type->kind == DEBUG_KIND_STRUCT, 				       type->size)) 	return FALSE;
            if (type->u.kclass != NULL 	  && type->u.kclass->fields != NULL) 	
     	  for (i = 0;
     type->u.kclass->fields != NULL;
     i++) 	    {
    	      struct debug_field *f;
    	      int f_1_0_0;
    	      int f_1_0_1;
    	      int f_2;
    	      f = type->u.kclass->fields[i];
    	      if (! (FALSE) 		  || ! (*debug_write_type_fns->struct_field) (fhandle, f_2, f_1_0_1, 					     f_1_0_0, f->visibility)) 		return FALSE;
    	    }
     	
            else 	
     	  for (is = 0;
     type->u.kfunction->arg_types[is] != NULL;
     is++) 	    if (! (FALSE)) 	      return FALSE;
     	
            return (*debug_write_type_fns->function_type) (fhandle, is, 				    type->u.kfunction->varargs);
          case DEBUG_KIND_REFERENCE:       if (! (FALSE)) 	return FALSE;
            if (type->u.kmethod->arg_types == NULL) 	is = -1;
            else 	
     	  for (is = 0;
     type->u.kmethod->arg_types != NULL;
     is++) 	    if (! debug_write_type (info,  fhandle, 				    type->u.kmethod->arg_types[is], 				     NULL)) 	      return FALSE;
     	
            if (type->u.kmethod->domain_type != NULL) 	
     	  if (! debug_write_type (info,  fhandle, 				  type->u.kmethod->domain_type, 				   NULL)) 	    return FALSE;
     	
            return (*debug_write_type_fns->method_type) (fhandle, 				  type->u.kmethod->domain_type != NULL, 				  is, 				  type->u.kmethod->varargs);
          case DEBUG_KIND_NAMED:       return debug_write_type (info,  fhandle, type->u.knamed->type, 			        NULL);
          case DEBUG_KIND_TAGGED:       return debug_write_type (info,  fhandle, type->u.knamed->type, 			       type->u.knamed->name);
          }
       }
