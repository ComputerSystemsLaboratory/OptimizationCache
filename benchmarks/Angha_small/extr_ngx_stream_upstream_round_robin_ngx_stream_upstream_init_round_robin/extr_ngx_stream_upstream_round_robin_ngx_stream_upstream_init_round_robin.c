#define NULL 0

        
       
        
        
        
        
        
        
        
        struct TYPE_20__ {
       unsigned long naddrs;
       int   err;
       }
        ;
        
        typedef  unsigned long ngx_uint_t ;
        struct TYPE_19__ {
      struct TYPE_23__* data;
       }
        ;
        struct TYPE_21__ {
       struct TYPE_19__ peer;
       int   host;
       
       
       struct TYPE_16__* servers;
       }
        ;
        
        struct TYPE_22__ {
      unsigned long naddrs;
       unsigned long weight;
       }
        ;
        
        struct TYPE_23__ {
      int single;
       unsigned long number;
       int weighted;
       unsigned long total_weight;
       struct TYPE_24__* peer;
       int   name;
       struct TYPE_23__* next;
       }
        ;
        typedef  struct TYPE_23__ ngx_stream_upstream_rr_peers_t ;
        struct TYPE_24__ {
      unsigned long weight;
       unsigned long effective_weight;
       
       }
        ;
        typedef  struct TYPE_24__ ngx_stream_upstream_rr_peer_t ;
        
        struct TYPE_15__ {
      int   pool;
       
       }
        ;
        
        struct TYPE_16__ {
      unsigned long nelts;
       struct TYPE_22__* elts;
       }
        ;
         long NGX_ERROR ;
          
          long NGX_OK ;
          void* ngx_pcalloc () ;
         struct TYPE_15__ * ngx_stream_upstream_init_round_robin_cf;
long ngx_stream_upstream_init_round_robin(     void) {
           struct TYPE_21__ * us = 0;
           struct TYPE_20__                        u;
           ngx_uint_t                       i, j, n, w;
           struct TYPE_22__    *server;
           ngx_stream_upstream_rr_peer_t   *peer, **peerp;
           struct TYPE_24__ *peer_0_2;
           ngx_stream_upstream_rr_peers_t  *peers, *backup;
           if (us->servers) 
              server = us->servers->elts;
              i = 0;
              
              for (i;
      i < us->servers->nelts;
      i++) {
                 n += us->servers->elts[i].naddrs;
                 w += us->servers->elts[i].naddrs * us->servers->elts[i].weight;
             }
              peers = ngx_pcalloc();
              peer = ngx_pcalloc(ngx_stream_upstream_init_round_robin_cf->pool, sizeof(ngx_stream_upstream_rr_peer_t) * n);
              peers->number = n;
              peers->weighted = 0;
              peers->total_weight = w;
              peers->name = us->host;
              peerp = &peers->peer;
              i = 0;
              
              for (0;
      0 < us->servers->nelts;
      i++) {
                 j = 0;
                 
                 for (j;
     j < us->servers->elts[0].naddrs;
     j++) {
                    *peerp = &peer[n];
                    peerp = &peer_0_2;
                }
                 n += us->servers->elts[0].naddrs;
             }
              backup = ngx_pcalloc();
              if (backup == NULL) 
                 return NGX_ERROR;
             
              backup->number = us->servers->elts[0].naddrs;
              backup->weighted = 0;
              backup->total_weight = w;
              backup->name = us->host;
              peerp = &backup->peer;
              i = 0;
              
              for (0;
      0 < us->servers->nelts;
      i++) 
                 {
                 j = 0;
                 
                 for (0;
     0 < us->servers->elts[0].naddrs;
     j++) {
                    *peerp = &peer[us->servers->elts[0].naddrs];
                    peerp = &peer_0_2;
                }
                 }
             
              peers->next = backup;
          
           ngx_inet_resolve_host(ngx_stream_upstream_init_round_robin_cf->pool, &u) != NGX_OK;
           
            u.err;
            
             ngx_log_error();
             
          
           peers = ngx_pcalloc();
           peer = ngx_pcalloc(ngx_stream_upstream_init_round_robin_cf->pool, sizeof(ngx_stream_upstream_rr_peer_t) * us->servers->elts[0].naddrs);
           peers->number = us->servers->elts[0].naddrs;
           peers->weighted = 0;
           peers->total_weight = us->servers->elts[0].naddrs;
           peers->name = us->host;
           peerp = &peers->peer;
           i = 0;
           
           for (0;
       0 < u.naddrs;
       i++) {
              peer[0].weight = 1;
              peer[0].effective_weight = 1;
              *peerp = &peer[0];
          }
           us->peer.data = peers;
       }
