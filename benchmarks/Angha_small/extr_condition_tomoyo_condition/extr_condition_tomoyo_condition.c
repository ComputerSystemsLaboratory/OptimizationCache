 typedef long scalar_t__;
          typedef int bool;
#define false 0
#define true 1
typedef  int u8 ;
        typedef  int u32 ;
        typedef  int u16 ;
        struct tomoyo_request_info {
       struct tomoyo_obj_info* obj;
       }
        ;
        struct tomoyo_number_union {
       scalar_t__ group;
       }
        ;
        struct tomoyo_mini_stat {
       int   uid;
       }
        ;
        struct tomoyo_condition_element {
      int equals;
       int left;
       int right;
       }
        ;
        struct tomoyo_condition {
      int condc;
       }
        ;
          unsigned long S_ISUID ;
#define  TOMOYO_MODE_GROUP_EXECUTE 184 
#define  TOMOYO_MODE_GROUP_READ 183 
#define  TOMOYO_MODE_GROUP_WRITE 182 
#define  TOMOYO_MODE_OTHERS_EXECUTE 181 
#define  TOMOYO_MODE_OTHERS_READ 180 
#define  TOMOYO_MODE_OTHERS_WRITE 179 
#define  TOMOYO_MODE_OWNER_EXECUTE 178 
#define  TOMOYO_MODE_OWNER_READ 177 
#define  TOMOYO_MODE_OWNER_WRITE 176 
#define  TOMOYO_MODE_SETGID 175 
#define  TOMOYO_MODE_SETUID 174 
#define  TOMOYO_MODE_STICKY 173 
#define  TOMOYO_NUMBER_UNION 172 
 int TOMOYO_PATH1 ;
#define  TOMOYO_PATH1_DEV_MAJOR 171 
#define  TOMOYO_PATH1_DEV_MINOR 170 
#define  TOMOYO_PATH1_GID 169 
#define  TOMOYO_PATH1_INO 168 
#define  TOMOYO_PATH1_MAJOR 167 
#define  TOMOYO_PATH1_MINOR 166 
#define  TOMOYO_PATH1_PARENT_PERM 163 
#define  TOMOYO_PATH1_PARENT_UID 162 
#define  TOMOYO_PATH1_PERM 161 
#define  TOMOYO_PATH1_TYPE 160 
#define  TOMOYO_PATH1_UID 159 
#define  TOMOYO_PATH2_PARENT_PERM 150 
#define  TOMOYO_PATH2_PARENT_UID 149 
#define  TOMOYO_PATH2_PERM 148 
#define  TOMOYO_PATH2_UID 146 
   int   init_user_ns ;
         struct tomoyo_request_info  tomoyo_condition_r;
const struct tomoyo_condition  tomoyo_condition_cond;
bool tomoyo_condition( 		      void) {
       	u32 i;
       	unsigned long min_v[2] ;
       	unsigned long max_v[2] ;
       	const struct tomoyo_condition_element *condp;
       	const int condp_0;
       	const struct tomoyo_number_union *numbers_p;
       	struct tomoyo_obj_info *obj;
       	u16 condc;
       	condc = tomoyo_condition_cond.condc;
       	obj = tomoyo_condition_r.obj;
       	condp =  0;
       	for (i = 0;
       i < condc;
       i++) {
      		const bool match = condp_0;
      		const u8 left = condp->left;
      		const u8 right = condp->right;
      		bool is_bitop[2] ;
      		u8 j;
      		for (j = 0;
      j < 2;
      j++) {
     			const u8 index = j ? right : left;
     			unsigned long value = 0;
     			switch (index) {
    			case TOMOYO_MODE_SETUID: 				value = S_ISUID;
    				break;
    			case TOMOYO_MODE_OWNER_READ: 				value = 0400;
    			case TOMOYO_NUMBER_UNION: 				break;
    			default: 				if (!obj) 					goto out;
    				
   					u8 stat_index;
   					struct tomoyo_mini_stat *stat;
   					switch (index) {
   					case TOMOYO_PATH1_UID: 					case TOMOYO_PATH1_GID: 					case TOMOYO_PATH1_INO: 					case TOMOYO_PATH1_MAJOR: 					case TOMOYO_PATH1_MINOR: 					case TOMOYO_PATH1_TYPE: 					case TOMOYO_PATH1_DEV_MAJOR: 					case TOMOYO_PATH1_DEV_MINOR: 					case TOMOYO_PATH1_PERM: 						stat_index = TOMOYO_PATH1;
   						break;
   					default: 						goto out;
   					}
   					switch (index) 
   					case TOMOYO_PATH1_UID: 					case TOMOYO_PATH2_UID: 					case TOMOYO_PATH1_PARENT_UID: 					case TOMOYO_PATH2_PARENT_UID: 						value = from_kuid(&init_user_ns, stat->uid);
   					
   				
    			}
     			max_v[j] = value;
     			min_v[j] = value;
     			switch (index) 
    			case TOMOYO_MODE_SETUID: 			case TOMOYO_MODE_SETGID: 			case TOMOYO_MODE_STICKY: 			case TOMOYO_MODE_OWNER_READ: 			case TOMOYO_MODE_OWNER_WRITE: 			case TOMOYO_MODE_OWNER_EXECUTE: 			case TOMOYO_MODE_GROUP_READ: 			case TOMOYO_MODE_GROUP_WRITE: 			case TOMOYO_MODE_GROUP_EXECUTE: 			case TOMOYO_MODE_OTHERS_READ: 			case TOMOYO_MODE_OTHERS_WRITE: 			case TOMOYO_MODE_OTHERS_EXECUTE: 				is_bitop[j] = true;
    			
     		}
      		if (right == TOMOYO_NUMBER_UNION) {
     			const struct tomoyo_number_union *ptr = numbers_p++;
     			if (ptr->group) 
    				if (tomoyo_number_matches_group(min_v, 								max_v, 								ptr->group) 				    == match) 					continue;
    			
     		}
      else if (is_bitop[0]) 
      out: 		return false;
      	}
       }
