#define NULL 0
 typedef long scalar_t__;
       typedef  struct TYPE_18__   TYPE_9__ ;
        typedef  struct TYPE_17__   TYPE_8__ ;
        typedef  struct TYPE_16__   TYPE_7__ ;
        struct TYPE_17__ {
      scalar_t__ aml_opcode;
       int   aml_offset;
       }
        ;
        struct TYPE_16__ {
      int  * data;
       void* length;
       }
        ;
        union acpi_parse_object {
      TYPE_8__ common;
       TYPE_7__ named;
       }
        ;
        typedef  int   u8 ;
        typedef  void* u32 ;
        struct acpi_parse_state {
      int  * aml;
       int  * aml_end;
       }
        ;
        struct acpi_walk_state {
      int walk_type;
       scalar_t__ (* ascending_callback )  ;
      scalar_t__ opcode;
       union acpi_parse_object* op;
       TYPE_9__* op_info;
       int   arg_count;
       int   arg_types;
       struct acpi_parse_state parser_state;
       }
        ;
        typedef  scalar_t__ acpi_status ;
        struct TYPE_18__ {
      int flags;
       int   name;
       }
        ;
          int   ACPI_DB_PARSE ;
          int ACPI_WALK_METHOD_RESTART ;
          scalar_t__ AE_CTRL_PARSE_CONTINUE ;
          scalar_t__ AE_OK ;
          scalar_t__ AML_BANK_FIELD_OP ;
          int AML_CREATE ;
          int AML_NAMED ;
          scalar_t__ acpi_gbl_depth ;
         struct acpi_walk_state * acpi_ps_parse_loop_walk_state;
acpi_status acpi_ps_parse_loop(void) {
       	acpi_status status = AE_OK;
       	union acpi_parse_object *op = NULL;
      	 	struct acpi_parse_state *parser_state;
       	
       	parser_state = &acpi_ps_parse_loop_walk_state->parser_state;
       	if (acpi_ps_parse_loop_walk_state->walk_type & ACPI_WALK_METHOD_RESTART) 
      		if (acpi_ps_has_completed_scope()) 
     			acpi_ps_pop_scope(parser_state, &op, 					  &acpi_ps_parse_loop_walk_state->arg_types, 					  &acpi_ps_parse_loop_walk_state->arg_count);
     		
      	
       	while ((parser_state->aml < parser_state->aml_end) || (op)) {
      		if (!op) {
     			status = 			    0;
     			if (ACPI_FAILURE()) 
    				if (status == AE_CTRL_PARSE_CONTINUE) 
   					continue;
   				
    				ACPI_DEBUG_PRINT((ACPI_DB_PARSE, 						  "Opcode %4.4X  Op %p Aml %p AmlOffset %5.5X\n", 						   op->common.aml_opcode, 						  acpi_ps_parse_loop_walk_state->op_info->name, op, 						  parser_state->aml, 						  op->common.aml_offset));
    			
     		}
      		if (acpi_ps_parse_loop_walk_state->arg_count) {
     			status = acpi_ps_push_scope(parser_state, op, 						    acpi_ps_parse_loop_walk_state->arg_types, 						    acpi_ps_parse_loop_walk_state->arg_count);
     			op = NULL;
     			continue;
     		}
      		acpi_ps_parse_loop_walk_state->op_info = 		    acpi_ps_get_opcode_info(op->common.aml_opcode);
      		if (acpi_ps_parse_loop_walk_state->op_info->flags & AML_NAMED) 
     			if (acpi_gbl_depth) 
    				acpi_gbl_depth--;
    			
     		
      		if (acpi_ps_parse_loop_walk_state->op_info->flags & AML_CREATE) 
     			op->named.length = 			     0;
     		
      		if (op->common.aml_opcode == AML_BANK_FIELD_OP) 
     			op->named.length = 			     0;
     		
      		if (acpi_ps_parse_loop_walk_state->ascending_callback != NULL) {
     			acpi_ps_parse_loop_walk_state->op = op;
     			acpi_ps_parse_loop_walk_state->opcode = op->common.aml_opcode;
     		}
      		status = acpi_ps_complete_op(acpi_ps_parse_loop_walk_state, &op, status);
      	}
       }
