; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list_head = type { i32 }
%struct.scan_control = type { i32, i32, i32, i32 }
%struct.mem_cgroup_zone = type { i64 }

@ret_pages = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@PAGEOUT_IO_SYNC = common dso_local global i32 0, align 4
@TTU_UNMAP = common dso_local global i32 0, align 4
@DEF_PRIORITY = common dso_local global i32 0, align 4
@ZONE_CONGESTED = common dso_local global i32 0, align 4
@PGACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.list_head*, %struct.scan_control*, %struct.mem_cgroup_zone*, i32, i32, i64*, i64*)* @shrink_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i64 @shrink_page_list(%struct.list_head* %0, %struct.scan_control* %1, %struct.mem_cgroup_zone* %2, i32 %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.scan_control*, align 8
  %10 = alloca %struct.mem_cgroup_zone*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.list_head, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.list_head*, align 8
  %23 = alloca %struct.list_head*, align 8
  %24 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %8, align 8
  store %struct.scan_control* %1, %struct.scan_control** %9, align 8
  store %struct.mem_cgroup_zone* %2, %struct.mem_cgroup_zone** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %25 = load i32, i32* @ret_pages, align 4
  %26 = call i32 @LIST_HEAD(i32 %25)
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %27 = call i32 (...) @cond_resched()
  %28 = call i32 @pagevec_init(%struct.list_head* %15, i32 1)
  br label %29

29:                                               ; preds = %349, %312, %304, %279, %7
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = call i32 @list_empty(%struct.list_head* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %353

34:                                               ; preds = %29
  %35 = call i32 (...) @cond_resched()
  %36 = load %struct.list_head*, %struct.list_head** %8, align 8
  %37 = call %struct.list_head* @lru_to_page(%struct.list_head* %36)
  store %struct.list_head* %37, %struct.list_head** %23, align 8
  %38 = load %struct.list_head*, %struct.list_head** %23, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i32 0, i32 0
  %40 = call i32 @list_del(i32* %39)
  %41 = load %struct.list_head*, %struct.list_head** %23, align 8
  %42 = call i32 @trylock_page(%struct.list_head* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %338

45:                                               ; preds = %34
  %46 = load %struct.list_head*, %struct.list_head** %23, align 8
  %47 = call i32 @PageActive(%struct.list_head* %46)
  %48 = call i32 @VM_BUG_ON(i32 %47)
  %49 = load %struct.list_head*, %struct.list_head** %23, align 8
  %50 = call i64 @page_zone(%struct.list_head* %49)
  %51 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %10, align 8
  %52 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @VM_BUG_ON(i32 %55)
  %57 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %58 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.list_head*, %struct.list_head** %23, align 8
  %62 = call i32 @page_evictable(%struct.list_head* %61, i32* null)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %305

69:                                               ; preds = %45
  %70 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %71 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.list_head*, %struct.list_head** %23, align 8
  %76 = call i64 @page_mapped(%struct.list_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %335

79:                                               ; preds = %74, %69
  %80 = load %struct.list_head*, %struct.list_head** %23, align 8
  %81 = call i64 @page_mapped(%struct.list_head* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.list_head*, %struct.list_head** %23, align 8
  %85 = call i64 @PageSwapCache(%struct.list_head* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %79
  %88 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %89 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %94 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @__GFP_FS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %92
  %100 = load %struct.list_head*, %struct.list_head** %23, align 8
  %101 = call i64 @PageSwapCache(%struct.list_head* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %105 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @__GFP_IO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %103, %99
  %111 = phi i1 [ false, %99 ], [ %109, %103 ]
  br label %112

112:                                              ; preds = %110, %92
  %113 = phi i1 [ true, %92 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %24, align 4
  %115 = load %struct.list_head*, %struct.list_head** %23, align 8
  %116 = call i64 @PageWriteback(%struct.list_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load i64, i64* %20, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %20, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PAGEOUT_IO_SYNC, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.list_head*, %struct.list_head** %23, align 8
  %129 = call i32 @wait_on_page_writeback(%struct.list_head* %128)
  br label %131

130:                                              ; preds = %124, %118
  br label %335

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %112
  %133 = load %struct.list_head*, %struct.list_head** %23, align 8
  %134 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %10, align 8
  %135 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %136 = call i32 @page_check_references(%struct.list_head* %133, %struct.mem_cgroup_zone* %134, %struct.scan_control* %135)
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %21, align 4
  switch i32 %137, label %141 [
    i32 139, label %138
    i32 138, label %139
    i32 137, label %140
    i32 136, label %140
  ]

138:                                              ; preds = %132
  br label %317

139:                                              ; preds = %132
  br label %335

140:                                              ; preds = %132, %132
  br label %141

141:                                              ; preds = %140, %132
  %142 = load %struct.list_head*, %struct.list_head** %23, align 8
  %143 = call i64 @PageAnon(%struct.list_head* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load %struct.list_head*, %struct.list_head** %23, align 8
  %147 = call i64 @PageSwapCache(%struct.list_head* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  %150 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %151 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @__GFP_IO, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %335

157:                                              ; preds = %149
  %158 = load %struct.list_head*, %struct.list_head** %23, align 8
  %159 = call i32 @add_to_swap(%struct.list_head* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  br label %317

162:                                              ; preds = %157
  store i32 1, i32* %24, align 4
  br label %163

163:                                              ; preds = %162, %145, %141
  %164 = load %struct.list_head*, %struct.list_head** %23, align 8
  %165 = call %struct.list_head* @page_mapping(%struct.list_head* %164)
  store %struct.list_head* %165, %struct.list_head** %22, align 8
  %166 = load %struct.list_head*, %struct.list_head** %23, align 8
  %167 = call i64 @page_mapped(%struct.list_head* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load %struct.list_head*, %struct.list_head** %22, align 8
  %171 = icmp ne %struct.list_head* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load %struct.list_head*, %struct.list_head** %23, align 8
  %174 = load i32, i32* @TTU_UNMAP, align 4
  %175 = call i32 @try_to_unmap(%struct.list_head* %173, i32 %174)
  switch i32 %175, label %180 [
    i32 130, label %176
    i32 131, label %177
    i32 129, label %178
    i32 128, label %179
  ]

176:                                              ; preds = %172
  br label %317

177:                                              ; preds = %172
  br label %335

178:                                              ; preds = %172
  br label %305

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %179, %172
  br label %181

181:                                              ; preds = %180, %169, %163
  %182 = load %struct.list_head*, %struct.list_head** %23, align 8
  %183 = call i64 @PageDirty(%struct.list_head* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %253

185:                                              ; preds = %181
  %186 = load i64, i64* %17, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %17, align 8
  %188 = load %struct.list_head*, %struct.list_head** %23, align 8
  %189 = call i64 @page_is_file_cache(%struct.list_head* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = call i32 (...) @current_is_kswapd()
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @DEF_PRIORITY, align 4
  %197 = sub nsw i32 %196, 2
  %198 = icmp sge i32 %195, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %191
  %200 = load %struct.list_head*, %struct.list_head** %23, align 8
  %201 = call i32 @SetPageReclaim(%struct.list_head* %200)
  br label %335

202:                                              ; preds = %194, %185
  %203 = load i32, i32* %21, align 4
  %204 = icmp eq i32 %203, 136
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %335

206:                                              ; preds = %202
  %207 = load i32, i32* %24, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  br label %335

210:                                              ; preds = %206
  %211 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %212 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %335

216:                                              ; preds = %210
  %217 = load %struct.list_head*, %struct.list_head** %23, align 8
  %218 = load %struct.list_head*, %struct.list_head** %22, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @pageout(%struct.list_head* %217, %struct.list_head* %218, i32 %219)
  switch i32 %220, label %252 [
    i32 133, label %221
    i32 135, label %224
    i32 132, label %225
    i32 134, label %251
  ]

221:                                              ; preds = %216
  %222 = load i64, i64* %18, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %18, align 8
  br label %335

224:                                              ; preds = %216
  br label %317

225:                                              ; preds = %216
  %226 = load %struct.list_head*, %struct.list_head** %23, align 8
  %227 = call i64 @PageWriteback(%struct.list_head* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load %struct.list_head*, %struct.list_head** %23, align 8
  %231 = call i64 @PageDirty(%struct.list_head* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229, %225
  br label %338

234:                                              ; preds = %229
  %235 = load %struct.list_head*, %struct.list_head** %23, align 8
  %236 = call i32 @trylock_page(%struct.list_head* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  br label %338

239:                                              ; preds = %234
  %240 = load %struct.list_head*, %struct.list_head** %23, align 8
  %241 = call i64 @PageDirty(%struct.list_head* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = load %struct.list_head*, %struct.list_head** %23, align 8
  %245 = call i64 @PageWriteback(%struct.list_head* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243, %239
  br label %335

248:                                              ; preds = %243
  %249 = load %struct.list_head*, %struct.list_head** %23, align 8
  %250 = call %struct.list_head* @page_mapping(%struct.list_head* %249)
  store %struct.list_head* %250, %struct.list_head** %22, align 8
  br label %251

251:                                              ; preds = %248, %216
  br label %252

252:                                              ; preds = %251, %216
  br label %253

253:                                              ; preds = %252, %181
  %254 = load %struct.list_head*, %struct.list_head** %23, align 8
  %255 = call i64 @page_has_private(%struct.list_head* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %253
  %258 = load %struct.list_head*, %struct.list_head** %23, align 8
  %259 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %260 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @try_to_release_page(%struct.list_head* %258, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %317

265:                                              ; preds = %257
  %266 = load %struct.list_head*, %struct.list_head** %22, align 8
  %267 = icmp ne %struct.list_head* %266, null
  br i1 %267, label %282, label %268

268:                                              ; preds = %265
  %269 = load %struct.list_head*, %struct.list_head** %23, align 8
  %270 = call i32 @page_count(%struct.list_head* %269)
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = load %struct.list_head*, %struct.list_head** %23, align 8
  %274 = call i32 @unlock_page(%struct.list_head* %273)
  %275 = load %struct.list_head*, %struct.list_head** %23, align 8
  %276 = call i64 @put_page_testzero(%struct.list_head* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %295

279:                                              ; preds = %272
  %280 = load i64, i64* %19, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %19, align 8
  br label %29

282:                                              ; preds = %268, %265
  br label %283

283:                                              ; preds = %282, %253
  %284 = load %struct.list_head*, %struct.list_head** %22, align 8
  %285 = icmp ne %struct.list_head* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load %struct.list_head*, %struct.list_head** %22, align 8
  %288 = load %struct.list_head*, %struct.list_head** %23, align 8
  %289 = call i32 @__remove_mapping(%struct.list_head* %287, %struct.list_head* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %286, %283
  br label %335

292:                                              ; preds = %286
  %293 = load %struct.list_head*, %struct.list_head** %23, align 8
  %294 = call i32 @__clear_page_locked(%struct.list_head* %293)
  br label %295

295:                                              ; preds = %292, %278
  %296 = load i64, i64* %19, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %19, align 8
  %298 = load %struct.list_head*, %struct.list_head** %23, align 8
  %299 = call i32 @pagevec_add(%struct.list_head* %15, %struct.list_head* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = call i32 @__pagevec_free(%struct.list_head* %15)
  %303 = call i32 @pagevec_reinit(%struct.list_head* %15)
  br label %304

304:                                              ; preds = %301, %295
  br label %29

305:                                              ; preds = %178, %68
  %306 = load %struct.list_head*, %struct.list_head** %23, align 8
  %307 = call i64 @PageSwapCache(%struct.list_head* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %305
  %310 = load %struct.list_head*, %struct.list_head** %23, align 8
  %311 = call i32 @try_to_free_swap(%struct.list_head* %310)
  br label %312

312:                                              ; preds = %309, %305
  %313 = load %struct.list_head*, %struct.list_head** %23, align 8
  %314 = call i32 @unlock_page(%struct.list_head* %313)
  %315 = load %struct.list_head*, %struct.list_head** %23, align 8
  %316 = call i32 @putback_lru_page(%struct.list_head* %315)
  br label %29

317:                                              ; preds = %264, %224, %176, %161, %138
  %318 = load %struct.list_head*, %struct.list_head** %23, align 8
  %319 = call i64 @PageSwapCache(%struct.list_head* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = call i64 (...) @vm_swap_full()
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load %struct.list_head*, %struct.list_head** %23, align 8
  %326 = call i32 @try_to_free_swap(%struct.list_head* %325)
  br label %327

327:                                              ; preds = %324, %321, %317
  %328 = load %struct.list_head*, %struct.list_head** %23, align 8
  %329 = call i32 @PageActive(%struct.list_head* %328)
  %330 = call i32 @VM_BUG_ON(i32 %329)
  %331 = load %struct.list_head*, %struct.list_head** %23, align 8
  %332 = call i32 @SetPageActive(%struct.list_head* %331)
  %333 = load i32, i32* %16, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %16, align 4
  br label %335

335:                                              ; preds = %327, %291, %247, %221, %215, %209, %205, %199, %177, %156, %139, %130, %78
  %336 = load %struct.list_head*, %struct.list_head** %23, align 8
  %337 = call i32 @unlock_page(%struct.list_head* %336)
  br label %338

338:                                              ; preds = %335, %238, %233, %44
  %339 = load %struct.list_head*, %struct.list_head** %23, align 8
  %340 = getelementptr inbounds %struct.list_head, %struct.list_head* %339, i32 0, i32 0
  %341 = call i32 @list_add(i32* %340, i32* @ret_pages)
  %342 = load %struct.list_head*, %struct.list_head** %23, align 8
  %343 = call i64 @PageLRU(%struct.list_head* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %338
  %346 = load %struct.list_head*, %struct.list_head** %23, align 8
  %347 = call i64 @PageUnevictable(%struct.list_head* %346)
  %348 = icmp ne i64 %347, 0
  br label %349

349:                                              ; preds = %345, %338
  %350 = phi i1 [ true, %338 ], [ %348, %345 ]
  %351 = zext i1 %350 to i32
  %352 = call i32 @VM_BUG_ON(i32 %351)
  br label %29

353:                                              ; preds = %29
  %354 = load i64, i64* %17, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %370

356:                                              ; preds = %353
  %357 = load i64, i64* %17, align 8
  %358 = load i64, i64* %18, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %356
  %361 = load %struct.scan_control*, %struct.scan_control** %9, align 8
  %362 = call i64 @global_reclaim(%struct.scan_control* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %10, align 8
  %366 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* @ZONE_CONGESTED, align 4
  %369 = call i32 @zone_set_flag(i64 %367, i32 %368)
  br label %370

370:                                              ; preds = %364, %360, %356, %353
  %371 = load %struct.list_head*, %struct.list_head** %8, align 8
  %372 = call i32 @list_splice(i32* @ret_pages, %struct.list_head* %371)
  %373 = call i64 @pagevec_count(%struct.list_head* %15)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = call i32 @__pagevec_free(%struct.list_head* %15)
  br label %377

377:                                              ; preds = %375, %370
  %378 = load i32, i32* @PGACTIVATE, align 4
  %379 = load i32, i32* %16, align 4
  %380 = call i32 @count_vm_events(i32 %378, i32 %379)
  %381 = load i64, i64* %19, align 8
  %382 = call i32 @trace_mm_pagereclaim_free(i64 %381)
  %383 = load i64, i64* %17, align 8
  %384 = load i64*, i64** %13, align 8
  %385 = load i64, i64* %384, align 8
  %386 = add i64 %385, %383
  store i64 %386, i64* %384, align 8
  %387 = load i64, i64* %20, align 8
  %388 = load i64*, i64** %14, align 8
  %389 = load i64, i64* %388, align 8
  %390 = add i64 %389, %387
  store i64 %390, i64* %388, align 8
  %391 = load i64, i64* %19, align 8
  ret i64 %391
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @pagevec_init(%struct.list_head*, i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.list_head* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @trylock_page(%struct.list_head*) #1

declare dso_local i32 @PageActive(%struct.list_head*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @page_zone(%struct.list_head*) #1

declare dso_local i32 @page_evictable(%struct.list_head*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_mapped(%struct.list_head*) #1

declare dso_local i64 @PageSwapCache(%struct.list_head*) #1

declare dso_local i64 @PageWriteback(%struct.list_head*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.list_head*) #1

declare dso_local i32 @page_check_references(%struct.list_head*, %struct.mem_cgroup_zone*, %struct.scan_control*) #1

declare dso_local i64 @PageAnon(%struct.list_head*) #1

declare dso_local i32 @add_to_swap(%struct.list_head*) #1

declare dso_local %struct.list_head* @page_mapping(%struct.list_head*) #1

declare dso_local i32 @try_to_unmap(%struct.list_head*, i32) #1

declare dso_local i64 @PageDirty(%struct.list_head*) #1

declare dso_local i64 @page_is_file_cache(%struct.list_head*) #1

declare dso_local i32 @current_is_kswapd(...) #1

declare dso_local i32 @SetPageReclaim(%struct.list_head*) #1

declare dso_local i32 @pageout(%struct.list_head*, %struct.list_head*, i32) #1

declare dso_local i64 @page_has_private(%struct.list_head*) #1

declare dso_local i32 @try_to_release_page(%struct.list_head*, i32) #1

declare dso_local i32 @page_count(%struct.list_head*) #1

declare dso_local i32 @unlock_page(%struct.list_head*) #1

declare dso_local i64 @put_page_testzero(%struct.list_head*) #1

declare dso_local i32 @__remove_mapping(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @__clear_page_locked(%struct.list_head*) #1

declare dso_local i32 @pagevec_add(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @__pagevec_free(%struct.list_head*) #1

declare dso_local i32 @pagevec_reinit(%struct.list_head*) #1

declare dso_local i32 @try_to_free_swap(%struct.list_head*) #1

declare dso_local i32 @putback_lru_page(%struct.list_head*) #1

declare dso_local i64 @vm_swap_full(...) #1

declare dso_local i32 @SetPageActive(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @PageLRU(%struct.list_head*) #1

declare dso_local i64 @PageUnevictable(%struct.list_head*) #1

declare dso_local i64 @global_reclaim(%struct.scan_control*) #1

declare dso_local i32 @zone_set_flag(i64, i32) #1

declare dso_local i32 @list_splice(i32*, %struct.list_head*) #1

declare dso_local i64 @pagevec_count(%struct.list_head*) #1

declare dso_local i32 @count_vm_events(i32, i32) #1

declare dso_local i32 @trace_mm_pagereclaim_free(i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
