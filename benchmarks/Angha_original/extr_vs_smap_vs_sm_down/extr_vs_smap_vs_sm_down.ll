; ModuleID = 'extr_vs_smap_vs_sm_down.c'
source_filename = "extr_vs_smap_vs_sm_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@HMAP = common dso_local global %struct.TYPE_27__* null, align 8
@O_LEFTRIGHT = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4
@P_TOP = common dso_local global i32 0, align 4
@P_BOTTOM = common dso_local global i32 0, align 4
@TMAP = common dso_local global %struct.TYPE_27__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i64, i32, %struct.TYPE_27__*)* @vs_sm_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @vs_sm_down(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i64 %2, i32 %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__, align 4
  %14 = alloca %struct.TYPE_27__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %45

22:                                               ; preds = %5
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %24 = load i32, i32* @O_LEFTRIGHT, align 4
  %25 = call i64 @O_ISSET(%struct.TYPE_28__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %41 = icmp eq %struct.TYPE_27__* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %35, %32
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %44 = call i32 @v_sof(%struct.TYPE_28__* %43, i32* null)
  store i32 1, i32* %6, align 4
  br label %367

45:                                               ; preds = %38, %27, %5
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 129
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %50 = call i64 @IS_SMALL(%struct.TYPE_28__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %187

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %61, label %114

61:                                               ; preds = %58, %52
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i64 0
  %64 = bitcast %struct.TYPE_27__* %13 to i8*
  %65 = bitcast %struct.TYPE_27__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 20, i1 false)
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %67 = call i64 @vs_sm_erase(%struct.TYPE_28__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %367

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %9, align 8
  %74 = icmp ne i64 %72, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %77 = call i64 @vs_sm_prev(%struct.TYPE_28__* %76, %struct.TYPE_27__* %13, %struct.TYPE_27__* %14)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %6, align 4
  br label %367

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = load i32, i32* @O_LEFTRIGHT, align 4
  %87 = call i64 @O_ISSET(%struct.TYPE_28__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %84
  br label %98

94:                                               ; preds = %89, %80
  br label %95

95:                                               ; preds = %94
  %96 = bitcast %struct.TYPE_27__* %13 to i8*
  %97 = bitcast %struct.TYPE_27__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 20, i1 false)
  br label %71

98:                                               ; preds = %93, %71
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i64 0
  %101 = bitcast %struct.TYPE_27__* %100 to i8*
  %102 = bitcast %struct.TYPE_27__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 20, i1 false)
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %104 = load i32, i32* @OOBLNO, align 4
  %105 = load i32, i32* @P_TOP, align 4
  %106 = call i64 @vs_sm_fill(%struct.TYPE_28__* %103, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %367

109:                                              ; preds = %98
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %112 = load i32, i32* @P_BOTTOM, align 4
  %113 = call i32 @vs_sm_position(%struct.TYPE_28__* %110, %struct.TYPE_29__* %111, i32 0, i32 %112)
  store i32 %113, i32* %6, align 4
  br label %367

114:                                              ; preds = %58
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %119 = call i64 @vs_sm_cursor(%struct.TYPE_28__* %118, %struct.TYPE_27__** %12)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ true, %114 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %161, %121
  %125 = load i64, i64* %9, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br label %135

135:                                              ; preds = %127, %124
  %136 = phi i1 [ false, %124 ], [ %134, %127 ]
  br i1 %136, label %137, label %168

137:                                              ; preds = %135
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %144 = load i32, i32* @O_LEFTRIGHT, align 4
  %145 = call i64 @O_ISSET(%struct.TYPE_28__* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %147, %142
  br label %168

153:                                              ; preds = %147, %137
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 1
  store %struct.TYPE_27__* %155, %struct.TYPE_27__** @TMAP, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %157 = call i64 @vs_sm_1down(%struct.TYPE_28__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 1, i32* %6, align 4
  br label %367

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %9, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %9, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  br label %124

168:                                              ; preds = %152, %135
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %171, %168
  %183 = load i64, i64* %9, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %367

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %45
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %239, %187
  %189 = load i64, i64* %9, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %242

191:                                              ; preds = %188
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %198 = load i32, i32* @O_LEFTRIGHT, align 4
  %199 = call i64 @O_ISSET(%struct.TYPE_28__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %207

206:                                              ; preds = %201, %196
  br label %242

207:                                              ; preds = %201, %191
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %209 = call i64 @vs_sm_1down(%struct.TYPE_28__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 1, i32* %6, align 4
  br label %367

212:                                              ; preds = %207
  %213 = load i32, i32* %10, align 4
  switch i32 %213, label %237 [
    i32 129, label %214
    i32 128, label %223
  ]

214:                                              ; preds = %212
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %217 = icmp ult %struct.TYPE_27__* %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 1
  store %struct.TYPE_27__* %220, %struct.TYPE_27__** %11, align 8
  br label %222

221:                                              ; preds = %214
  store i32 1, i32* %16, align 4
  br label %222

222:                                              ; preds = %221, %218
  br label %238

223:                                              ; preds = %212
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %229 = icmp ult %struct.TYPE_27__* %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 1
  store %struct.TYPE_27__* %232, %struct.TYPE_27__** %11, align 8
  br label %233

233:                                              ; preds = %230, %226
  br label %236

234:                                              ; preds = %223
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  store %struct.TYPE_27__* %235, %struct.TYPE_27__** %11, align 8
  store i32 1, i32* %17, align 4
  br label %236

236:                                              ; preds = %234, %233
  br label %237

237:                                              ; preds = %212, %236
  br label %238

238:                                              ; preds = %237, %222
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %9, align 8
  %241 = add nsw i64 %240, -1
  store i64 %241, i64* %9, align 8
  br label %188

242:                                              ; preds = %206, %188
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 129
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 0, i32* %6, align 4
  br label %367

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %10, align 4
  switch i32 %250, label %336 [
    i32 131, label %251
    i32 130, label %274
    i32 129, label %291
    i32 128, label %335
  ]

251:                                              ; preds = %249
  %252 = load i64, i64* %9, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %273, label %254

254:                                              ; preds = %251
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  store %struct.TYPE_27__* %255, %struct.TYPE_27__** %11, align 8
  br label %256

256:                                              ; preds = %269, %254
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %259 = icmp ugt %struct.TYPE_27__* %257, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @db_exist(%struct.TYPE_28__* %261, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  br label %272

268:                                              ; preds = %260
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 -1
  store %struct.TYPE_27__* %271, %struct.TYPE_27__** %11, align 8
  br label %256

272:                                              ; preds = %267, %256
  br label %338

273:                                              ; preds = %251
  br label %274

274:                                              ; preds = %249, %273
  %275 = load i64, i64* %9, align 8
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %278 = ptrtoint %struct.TYPE_27__* %276 to i64
  %279 = ptrtoint %struct.TYPE_27__* %277 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 20
  %282 = icmp slt i64 %275, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %274
  %284 = load i64, i64* %9, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %286 = sub i64 0, %284
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i64 %286
  store %struct.TYPE_27__* %287, %struct.TYPE_27__** %11, align 8
  br label %290

288:                                              ; preds = %274
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  store %struct.TYPE_27__* %289, %struct.TYPE_27__** %11, align 8
  br label %290

290:                                              ; preds = %288, %283
  br label %338

291:                                              ; preds = %249
  %292 = load i32, i32* %16, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %334

294:                                              ; preds = %291
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 4
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %305 = load i32, i32* @O_LEFTRIGHT, align 4
  %306 = call i64 @O_ISSET(%struct.TYPE_28__* %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %294
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  br label %321

312:                                              ; preds = %294
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 %315, 1
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = mul nsw i32 %316, %319
  br label %321

321:                                              ; preds = %312, %308
  %322 = phi i32 [ %311, %308 ], [ %320, %312 ]
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = srem i32 %325, %328
  %330 = add nsw i32 %322, %329
  %331 = call i32 @vs_colpos(%struct.TYPE_28__* %300, i32 %303, i32 %330)
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 4
  br label %334

334:                                              ; preds = %321, %291
  store i32 0, i32* %6, align 4
  br label %367

335:                                              ; preds = %249
  br label %338

336:                                              ; preds = %249
  %337 = call i32 (...) @abort() #4
  unreachable

338:                                              ; preds = %335, %290, %272
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %340 = call i32 @SMAP_CACHE(%struct.TYPE_27__* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %338
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %345 = call i64 @vs_line(%struct.TYPE_28__* %343, %struct.TYPE_27__* %344, i32* null, i32* null)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  store i32 1, i32* %6, align 4
  br label %367

348:                                              ; preds = %342, %338
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 255
  br i1 %357, label %358, label %359

358:                                              ; preds = %348
  br label %363

359:                                              ; preds = %348
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  br label %363

363:                                              ; preds = %359, %358
  %364 = phi i32 [ 0, %358 ], [ %362, %359 ]
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  store i32 0, i32* %6, align 4
  br label %367

367:                                              ; preds = %363, %347, %334, %248, %211, %185, %159, %109, %108, %79, %69, %42
  %368 = load i32, i32* %6, align 4
  ret i32 %368
}

declare dso_local i64 @O_ISSET(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @v_sof(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @IS_SMALL(%struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vs_sm_erase(%struct.TYPE_28__*) #1

declare dso_local i64 @vs_sm_prev(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i64 @vs_sm_fill(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @vs_sm_position(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @vs_sm_cursor(%struct.TYPE_28__*, %struct.TYPE_27__**) #1

declare dso_local i64 @vs_sm_1down(%struct.TYPE_28__*) #1

declare dso_local i32 @db_exist(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @vs_colpos(%struct.TYPE_28__*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @SMAP_CACHE(%struct.TYPE_27__*) #1

declare dso_local i64 @vs_line(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
