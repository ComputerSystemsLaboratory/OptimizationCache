typedef unsigned long size_t;
        typedef long scalar_t__;
        struct ata_taskfile {
      size_t protocol;
       int command;
       }
        ;
        struct ata_queued_cmd {
       scalar_t__ dma_dir;
       int nbytes;
       struct ata_taskfile tf;
       struct ata_taskfile result_tf;
       }
        ;
        struct ata_link {
       struct ata_port* ap;
       }
        ;
#define  ATAPI_PROT_DMA 135 
#define  ATAPI_PROT_PIO 134 
     int ATA_MAX_QUEUE ;
#define  ATA_PROT_DMA 133 
#define  ATA_PROT_NCQ 132 
#define  ATA_PROT_PIO 131 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
 scalar_t__ DMA_NONE ;
#define  DMA_TO_DEVICE 128 
     struct ata_link  ata_eh_link_report_link;
__attribute__((used)) static void ata_eh_link_report(void) {
       	struct ata_port *ap = ata_eh_link_report_link.ap;
       	int tag, nr_failed = 0;
       	for (tag = 0;
       tag < ATA_MAX_QUEUE;
       tag++) {
      		struct ata_queued_cmd *qc = __ata_qc_from_tag();
      		int qc_1;
      		struct ata_taskfile cmd = qc->tf, res = qc->result_tf;
      		char data_buf = "";
      		if (qc->dma_dir != DMA_NONE) {
     			static const char dma_str[] = {};
     			static const char *prot_str[] = {
    				[ATA_PROT_PIO]		= "pio", 				[ATA_PROT_DMA]		= "dma", 				[ATA_PROT_NCQ]		= "ncq", 				[ATAPI_PROT_PIO]	= "pio", 				[ATAPI_PROT_DMA]	= "dma", 			};
     			snprintf(data_buf, sizeof(data_buf), " %s %u %s", 				 prot_str[qc->tf.protocol], qc_1, 				 &dma_str);
     		}
      		if (ata_is_atapi(qc->tf.protocol)) ;
      else {
     			const char *descr = ata_get_cmd_descript(cmd.command);
     		}
      	}
       }
