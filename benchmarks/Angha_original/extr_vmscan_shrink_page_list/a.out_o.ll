; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list_head = type { i32 }
%struct.scan_control = type { i32, i32, i32, i32 }
%struct.mem_cgroup_zone = type { i64 }

@ret_pages = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local local_unnamed_addr global i32 0, align 4
@__GFP_IO = common dso_local local_unnamed_addr global i32 0, align 4
@PAGEOUT_IO_SYNC = common dso_local local_unnamed_addr global i32 0, align 4
@TTU_UNMAP = common dso_local local_unnamed_addr global i32 0, align 4
@DEF_PRIORITY = common dso_local local_unnamed_addr global i32 0, align 4
@ZONE_CONGESTED = common dso_local local_unnamed_addr global i32 0, align 4
@PGACTIVATE = common dso_local local_unnamed_addr global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.list_head*, %struct.scan_control*, %struct.mem_cgroup_zone*, i32, i32, i64*, i64*)* @shrink_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i64 @shrink_page_list(%struct.list_head* %0, %struct.scan_control* %1, %struct.mem_cgroup_zone* %2, i32 %3, i32 %4, i64* nocapture %5, i64* nocapture %6) #0 {
  %8 = alloca %struct.list_head, align 4
  %9 = load i32, i32* @ret_pages, align 4
  %10 = tail call i32 @LIST_HEAD(i32 %9) #2
  %11 = tail call i32 (...) @cond_resched() #2
  %12 = call i32 @pagevec_init(%struct.list_head* nonnull %8, i32 1) #2
  %13 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %2, i64 0, i32 0
  %14 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %1, i64 0, i32 0
  %17 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %1, i64 0, i32 1
  br label %.outer

.outer:                                           ; preds = %207, %7
  %.0107.ph = phi i64 [ %.2109, %207 ], [ 0, %7 ]
  %.0106.ph = phi i64 [ %.0106.ph113, %207 ], [ 0, %7 ]
  %.0101.ph = phi i64 [ %.4105, %207 ], [ 0, %7 ]
  %.098.ph = phi i64 [ %.4, %207 ], [ 0, %7 ]
  %.096.ph = phi i32 [ %.2, %207 ], [ 0, %7 ]
  br label %.outer112

.outer112:                                        ; preds = %.outer112.backedge, %.outer
  %.0106.ph113 = phi i64 [ %.0106.ph, %.outer ], [ %.0106.ph113.be, %.outer112.backedge ]
  %.0101.ph114 = phi i64 [ %.0101.ph, %.outer ], [ %.1102, %.outer112.backedge ]
  %.098.ph115 = phi i64 [ %.098.ph, %.outer ], [ %.199, %.outer112.backedge ]
  br label %18

18:                                               ; preds = %.outer112, %185
  %.0101 = phi i64 [ %.2103, %185 ], [ %.0101.ph114, %.outer112 ]
  %19 = call i32 @list_empty(%struct.list_head* %0) #2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %211

21:                                               ; preds = %18
  %22 = call i32 (...) @cond_resched() #2
  %23 = call %struct.list_head* @lru_to_page(%struct.list_head* %0) #2
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0
  %25 = call i32 @list_del(i32* %24) #2
  %26 = call i32 @trylock_page(%struct.list_head* %23) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %.loopexit, label %28

28:                                               ; preds = %21
  %29 = call i32 @PageActive(%struct.list_head* %23) #2
  %30 = call i32 @VM_BUG_ON(i32 %29) #2
  %31 = call i64 @page_zone(%struct.list_head* %23) #2
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @VM_BUG_ON(i32 %34) #2
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  %38 = call i32 @page_evictable(%struct.list_head* %23, i32* null) #2
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40) #2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %180

43:                                               ; preds = %28
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i64 @page_mapped(%struct.list_head* %23) #2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %.loopexit111

49:                                               ; preds = %46, %43
  %50 = call i64 @page_mapped(%struct.list_head* %23) #2
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i64 @PageSwapCache(%struct.list_head* %23) #2
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %52, %55
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @__GFP_FS, align 4
  %61 = and i32 %60, %59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = call i64 @PageSwapCache(%struct.list_head* %23) #2
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @__GFP_IO, align 4
  %69 = and i32 %68, %67
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %63, %58, %66
  %72 = phi i1 [ true, %58 ], [ false, %63 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @PageWriteback(%struct.list_head* %23) #2
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = add i64 %.0101, 1
  %78 = load i32, i32* @PAGEOUT_IO_SYNC, align 4
  %79 = icmp eq i32 %78, %3
  %or.cond = and i1 %72, %79
  br i1 %or.cond, label %80, label %.loopexit111

80:                                               ; preds = %76
  %81 = call i32 @wait_on_page_writeback(%struct.list_head* %23) #2
  br label %82

82:                                               ; preds = %71, %80
  %.1102 = phi i64 [ %77, %80 ], [ %.0101, %71 ]
  %83 = call i32 @page_check_references(%struct.list_head* %23, %struct.mem_cgroup_zone* nonnull %2, %struct.scan_control* nonnull %1) #2
  switch i32 %83, label %84 [
    i32 139, label %.loopexit117
    i32 138, label %.loopexit111
  ]

84:                                               ; preds = %82
  %85 = call i64 @PageAnon(%struct.list_head* %23) #2
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = call i64 @PageSwapCache(%struct.list_head* %23) #2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @__GFP_IO, align 4
  %93 = and i32 %92, %91
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %.loopexit111, label %95

95:                                               ; preds = %90
  %96 = call i32 @add_to_swap(%struct.list_head* %23) #2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %.loopexit117, label %98

98:                                               ; preds = %95, %87, %84
  %.0 = phi i32 [ %73, %87 ], [ %73, %84 ], [ 1, %95 ]
  %99 = call %struct.list_head* @page_mapping(%struct.list_head* %23) #2
  %100 = call i64 @page_mapped(%struct.list_head* %23) #2
  %101 = icmp ne i64 %100, 0
  %102 = icmp ne %struct.list_head* %99, null
  %or.cond3 = and i1 %102, %101
  br i1 %or.cond3, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @TTU_UNMAP, align 4
  %105 = call i32 @try_to_unmap(%struct.list_head* %23, i32 %104) #2
  switch i32 %105, label %106 [
    i32 130, label %.loopexit117
    i32 131, label %.loopexit111
    i32 129, label %180
  ]

106:                                              ; preds = %103, %98
  %107 = call i64 @PageDirty(%struct.list_head* %23) #2
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %149, label %109

109:                                              ; preds = %106
  %110 = add i64 %.098.ph115, 1
  %111 = call i64 @page_is_file_cache(%struct.list_head* %23) #2
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = call i32 (...) @current_is_kswapd() #2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @DEF_PRIORITY, align 4
  %118 = add nsw i32 %117, -2
  %119 = icmp sgt i32 %118, %4
  br i1 %119, label %122, label %120

120:                                              ; preds = %116, %113
  %121 = call i32 @SetPageReclaim(%struct.list_head* %23) #2
  br label %.loopexit111

122:                                              ; preds = %116, %109
  %123 = icmp ne i32 %83, 136
  %124 = icmp ne i32 %.0, 0
  %or.cond5 = and i1 %123, %124
  br i1 %or.cond5, label %125, label %.loopexit111

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit111, label %128

128:                                              ; preds = %125
  %129 = call i32 @pageout(%struct.list_head* %23, %struct.list_head* %99, i32 %3) #2
  switch i32 %129, label %149 [
    i32 133, label %130
    i32 135, label %.loopexit117
    i32 132, label %132
  ]

130:                                              ; preds = %128
  %131 = add i64 %.0107.ph, 1
  br label %.loopexit111

132:                                              ; preds = %128
  %133 = call i64 @PageWriteback(%struct.list_head* %23) #2
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %.loopexit

135:                                              ; preds = %132
  %136 = call i64 @PageDirty(%struct.list_head* %23) #2
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %.loopexit

138:                                              ; preds = %135
  %139 = call i32 @trylock_page(%struct.list_head* %23) #2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %.loopexit, label %141

141:                                              ; preds = %138
  %142 = call i64 @PageDirty(%struct.list_head* %23) #2
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %.loopexit111

144:                                              ; preds = %141
  %145 = call i64 @PageWriteback(%struct.list_head* %23) #2
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %.loopexit111

147:                                              ; preds = %144
  %148 = call %struct.list_head* @page_mapping(%struct.list_head* %23) #2
  br label %149

149:                                              ; preds = %106, %128, %147
  %.199 = phi i64 [ %110, %128 ], [ %110, %147 ], [ %.098.ph115, %106 ]
  %.097 = phi %struct.list_head* [ %99, %128 ], [ %148, %147 ], [ %99, %106 ]
  %150 = call i64 @page_has_private(%struct.list_head* %23) #2
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @try_to_release_page(%struct.list_head* %23, i32 %153) #2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %.loopexit117, label %156

156:                                              ; preds = %152
  %cond = icmp eq %struct.list_head* %.097, null
  br i1 %cond, label %157, label %168

157:                                              ; preds = %156
  %158 = call i32 @page_count(%struct.list_head* %23) #2
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %.loopexit111

160:                                              ; preds = %157
  %161 = call i32 @unlock_page(%struct.list_head* %23) #2
  %162 = call i64 @put_page_testzero(%struct.list_head* %23) #2
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = add i64 %.0106.ph113, 1
  br label %.outer112.backedge

166:                                              ; preds = %149
  %167 = icmp eq %struct.list_head* %.097, null
  br i1 %167, label %.loopexit111, label %168

168:                                              ; preds = %156, %166
  %169 = call i32 @__remove_mapping(%struct.list_head* nonnull %.097, %struct.list_head* %23) #2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %.loopexit111, label %171

171:                                              ; preds = %168
  %172 = call i32 @__clear_page_locked(%struct.list_head* %23) #2
  br label %173

173:                                              ; preds = %160, %171
  %174 = add i64 %.0106.ph113, 1
  %175 = call i32 @pagevec_add(%struct.list_head* nonnull %8, %struct.list_head* %23) #2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %.outer112.backedge

177:                                              ; preds = %173
  %178 = call i32 @__pagevec_free(%struct.list_head* nonnull %8) #2
  %179 = call i32 @pagevec_reinit(%struct.list_head* nonnull %8) #2
  br label %.outer112.backedge

.outer112.backedge:                               ; preds = %177, %173, %164
  %.0106.ph113.be = phi i64 [ %165, %164 ], [ %174, %173 ], [ %174, %177 ]
  br label %.outer112

180:                                              ; preds = %28, %103
  %.2103 = phi i64 [ %.0101, %28 ], [ %.1102, %103 ]
  %181 = call i64 @PageSwapCache(%struct.list_head* %23) #2
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = call i32 @try_to_free_swap(%struct.list_head* %23) #2
  br label %185

185:                                              ; preds = %180, %183
  %186 = call i32 @unlock_page(%struct.list_head* %23) #2
  %187 = call i32 @putback_lru_page(%struct.list_head* %23) #2
  br label %18

.loopexit117:                                     ; preds = %152, %128, %95, %103, %82
  %.2100 = phi i64 [ %.098.ph115, %82 ], [ %.098.ph115, %103 ], [ %.098.ph115, %95 ], [ %110, %128 ], [ %.199, %152 ]
  %188 = call i64 @PageSwapCache(%struct.list_head* %23) #2
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %.loopexit117
  %191 = call i64 (...) @vm_swap_full() #2
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = call i32 @try_to_free_swap(%struct.list_head* %23) #2
  br label %195

195:                                              ; preds = %190, %.loopexit117, %193
  %196 = call i32 @PageActive(%struct.list_head* %23) #2
  %197 = call i32 @VM_BUG_ON(i32 %196) #2
  %198 = call i32 @SetPageActive(%struct.list_head* %23) #2
  %199 = add nsw i32 %.096.ph, 1
  br label %.loopexit111

.loopexit111:                                     ; preds = %157, %144, %141, %125, %168, %166, %122, %90, %46, %103, %82, %76, %195, %130, %120
  %.1108 = phi i64 [ %.0107.ph, %120 ], [ %.0107.ph, %195 ], [ %131, %130 ], [ %.0107.ph, %76 ], [ %.0107.ph, %82 ], [ %.0107.ph, %103 ], [ %.0107.ph, %46 ], [ %.0107.ph, %90 ], [ %.0107.ph, %122 ], [ %.0107.ph, %166 ], [ %.0107.ph, %168 ], [ %.0107.ph, %125 ], [ %.0107.ph, %141 ], [ %.0107.ph, %144 ], [ %.0107.ph, %157 ]
  %.3104 = phi i64 [ %.1102, %120 ], [ %.1102, %195 ], [ %.1102, %130 ], [ %.1102, %90 ], [ %.0101, %46 ], [ %.1102, %103 ], [ %.1102, %82 ], [ %77, %76 ], [ %.1102, %122 ], [ %.1102, %166 ], [ %.1102, %168 ], [ %.1102, %125 ], [ %.1102, %141 ], [ %.1102, %144 ], [ %.1102, %157 ]
  %.3 = phi i64 [ %110, %120 ], [ %.2100, %195 ], [ %110, %130 ], [ %.098.ph115, %76 ], [ %.098.ph115, %82 ], [ %.098.ph115, %103 ], [ %.098.ph115, %46 ], [ %.098.ph115, %90 ], [ %.199, %157 ], [ %110, %144 ], [ %110, %141 ], [ %110, %125 ], [ %.199, %168 ], [ %.199, %166 ], [ %110, %122 ]
  %.1 = phi i32 [ %.096.ph, %120 ], [ %199, %195 ], [ %.096.ph, %130 ], [ %.096.ph, %76 ], [ %.096.ph, %82 ], [ %.096.ph, %103 ], [ %.096.ph, %46 ], [ %.096.ph, %90 ], [ %.096.ph, %122 ], [ %.096.ph, %166 ], [ %.096.ph, %168 ], [ %.096.ph, %125 ], [ %.096.ph, %141 ], [ %.096.ph, %144 ], [ %.096.ph, %157 ]
  %200 = call i32 @unlock_page(%struct.list_head* %23) #2
  br label %.loopexit

.loopexit:                                        ; preds = %138, %135, %132, %21, %.loopexit111
  %.2109 = phi i64 [ %.1108, %.loopexit111 ], [ %.0107.ph, %21 ], [ %.0107.ph, %132 ], [ %.0107.ph, %135 ], [ %.0107.ph, %138 ]
  %.4105 = phi i64 [ %.3104, %.loopexit111 ], [ %.0101, %21 ], [ %.1102, %132 ], [ %.1102, %135 ], [ %.1102, %138 ]
  %.4 = phi i64 [ %.3, %.loopexit111 ], [ %.098.ph115, %21 ], [ %110, %132 ], [ %110, %135 ], [ %110, %138 ]
  %.2 = phi i32 [ %.1, %.loopexit111 ], [ %.096.ph, %21 ], [ %.096.ph, %132 ], [ %.096.ph, %135 ], [ %.096.ph, %138 ]
  %201 = call i32 @list_add(i32* %24, i32* nonnull @ret_pages) #2
  %202 = call i64 @PageLRU(%struct.list_head* %23) #2
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %.loopexit
  %205 = call i64 @PageUnevictable(%struct.list_head* %23) #2
  %206 = icmp ne i64 %205, 0
  br label %207

207:                                              ; preds = %.loopexit, %204
  %208 = phi i1 [ true, %.loopexit ], [ %206, %204 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @VM_BUG_ON(i32 %209) #2
  br label %.outer

211:                                              ; preds = %18
  %212 = icmp ne i64 %.098.ph115, 0
  %213 = icmp eq i64 %.098.ph115, %.0107.ph
  %or.cond110 = and i1 %212, %213
  br i1 %or.cond110, label %214, label %221

214:                                              ; preds = %211
  %215 = call i64 @global_reclaim(%struct.scan_control* %1) #2
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load i64, i64* %13, align 8
  %219 = load i32, i32* @ZONE_CONGESTED, align 4
  %220 = call i32 @zone_set_flag(i64 %218, i32 %219) #2
  br label %221

221:                                              ; preds = %211, %214, %217
  %222 = call i32 @list_splice(i32* nonnull @ret_pages, %struct.list_head* %0) #2
  %223 = call i64 @pagevec_count(%struct.list_head* nonnull %8) #2
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call i32 @__pagevec_free(%struct.list_head* nonnull %8) #2
  br label %227

227:                                              ; preds = %221, %225
  %228 = load i32, i32* @PGACTIVATE, align 4
  %229 = call i32 @count_vm_events(i32 %228, i32 %.096.ph) #2
  %230 = call i32 @trace_mm_pagereclaim_free(i64 %.0106.ph113) #2
  %231 = load i64, i64* %5, align 8
  %232 = add i64 %231, %.098.ph115
  store i64 %232, i64* %5, align 8
  %233 = load i64, i64* %6, align 8
  %234 = add i64 %233, %.0101
  store i64 %234, i64* %6, align 8
  ret i64 %.0106.ph113
}

declare dso_local i32 @LIST_HEAD(i32) local_unnamed_addr #1

declare dso_local i32 @cond_resched(...) local_unnamed_addr #1

declare dso_local i32 @pagevec_init(%struct.list_head*, i32) local_unnamed_addr #1

declare dso_local i32 @list_empty(%struct.list_head*) local_unnamed_addr #1

declare dso_local %struct.list_head* @lru_to_page(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @list_del(i32*) local_unnamed_addr #1

declare dso_local i32 @trylock_page(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @PageActive(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @VM_BUG_ON(i32) local_unnamed_addr #1

declare dso_local i64 @page_zone(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @page_evictable(%struct.list_head*, i32*) local_unnamed_addr #1

declare dso_local i64 @unlikely(i32) local_unnamed_addr #1

declare dso_local i64 @page_mapped(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @PageSwapCache(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @PageWriteback(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @wait_on_page_writeback(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @page_check_references(%struct.list_head*, %struct.mem_cgroup_zone*, %struct.scan_control*) local_unnamed_addr #1

declare dso_local i64 @PageAnon(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @add_to_swap(%struct.list_head*) local_unnamed_addr #1

declare dso_local %struct.list_head* @page_mapping(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @try_to_unmap(%struct.list_head*, i32) local_unnamed_addr #1

declare dso_local i64 @PageDirty(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @page_is_file_cache(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @current_is_kswapd(...) local_unnamed_addr #1

declare dso_local i32 @SetPageReclaim(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @pageout(%struct.list_head*, %struct.list_head*, i32) local_unnamed_addr #1

declare dso_local i64 @page_has_private(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @try_to_release_page(%struct.list_head*, i32) local_unnamed_addr #1

declare dso_local i32 @page_count(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @unlock_page(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @put_page_testzero(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @__remove_mapping(%struct.list_head*, %struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @__clear_page_locked(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @pagevec_add(%struct.list_head*, %struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @__pagevec_free(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @pagevec_reinit(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @try_to_free_swap(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @putback_lru_page(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @vm_swap_full(...) local_unnamed_addr #1

declare dso_local i32 @SetPageActive(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @list_add(i32*, i32*) local_unnamed_addr #1

declare dso_local i64 @PageLRU(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @PageUnevictable(%struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @global_reclaim(%struct.scan_control*) local_unnamed_addr #1

declare dso_local i32 @zone_set_flag(i64, i32) local_unnamed_addr #1

declare dso_local i32 @list_splice(i32*, %struct.list_head*) local_unnamed_addr #1

declare dso_local i64 @pagevec_count(%struct.list_head*) local_unnamed_addr #1

declare dso_local i32 @count_vm_events(i32, i32) local_unnamed_addr #1

declare dso_local i32 @trace_mm_pagereclaim_free(i64) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
