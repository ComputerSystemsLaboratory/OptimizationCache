; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.aac_softc = type { i32, i32, i32, %struct.aac_command*, i32, i32 }
%struct.aac_command = type { i32, i64, i32, i64, i32, %struct.aac_fib*, %struct.aac_sg_table*, %struct.aac_softc* }
%struct.aac_fib = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.aac_sg_table = type { i32, %struct.TYPE_13__* }
%struct.aac_raw_io2 = type { i32, i64, i32, i64 }
%struct.aac_sg_tableraw = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@RawIo2 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RIO2_SGL_CONFORMANT = common dso_local global i32 0, align 4
@RawIo = common dso_local global i64 0, align 8
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@AAC_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AAC_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AAC_CMD_MAPPED = common dso_local global i32 0, align 4
@AAC_CMD_WAIT = common dso_local global i32 0, align 4
@AAC_MONKER_SYNCFIB = common dso_local global i32 0, align 4
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nseg %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @aacraid_map_command_sg(i8* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_softc*, align 8
  %10 = alloca %struct.aac_command*, align 8
  %11 = alloca %struct.aac_fib*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_raw_io2*, align 8
  %14 = alloca %struct.aac_raw_io2*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.aac_sg_tableraw*, align 8
  %22 = alloca %struct.aac_sg_table*, align 8
  %23 = alloca %struct.aac_sg_table*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.aac_command*
  store %struct.aac_command* %27, %struct.aac_command** %10, align 8
  %28 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %29 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %28, i32 0, i32 7
  %30 = load %struct.aac_softc*, %struct.aac_softc** %29, align 8
  store %struct.aac_softc* %30, %struct.aac_softc** %9, align 8
  %31 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %32 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %31, i32 0, i32 5
  %33 = load %struct.aac_fib*, %struct.aac_fib** %32, align 8
  store %struct.aac_fib* %33, %struct.aac_fib** %11, align 8
  %34 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %35 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fwprintf(%struct.aac_softc* %34, i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %39 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %38, i32 0, i32 5
  %40 = load i32, i32* @MA_OWNED, align 4
  %41 = call i32 @mtx_assert(i32* %39, i32 %40)
  %42 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %43 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 3
  %51 = load %struct.aac_command*, %struct.aac_command** %50, align 8
  %52 = icmp ne %struct.aac_command* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %587

54:                                               ; preds = %48, %4
  %55 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %56 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %55, i32 0, i32 6
  %57 = load %struct.aac_sg_table*, %struct.aac_sg_table** %56, align 8
  %58 = icmp ne %struct.aac_sg_table* %57, null
  br i1 %58, label %59, label %460

59:                                               ; preds = %54
  %60 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %61 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RawIo2, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %262

66:                                               ; preds = %59
  %67 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %67, i64* %15, align 8
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %70 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = bitcast i32* %72 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %73, %struct.aac_raw_io2** %13, align 8
  %74 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %75 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %74, i32 0, i32 6
  %76 = load %struct.aac_sg_table*, %struct.aac_sg_table** %75, align 8
  %77 = bitcast %struct.aac_sg_table* %76 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %77, %struct.aac_raw_io2** %14, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %80 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %156, %66
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %159

85:                                               ; preds = %81
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %92, i64 %94
  %96 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %103, i64 %105
  %107 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %106, i32 0, i32 2
  store i32 %102, i32* %107, align 8
  %108 = load i64, i64* %16, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %110, i64 %112
  %114 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  %115 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %115, i64 %117
  %119 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %85
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %125 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  br label %155

126:                                              ; preds = %85
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64, i64* %16, align 8
  %131 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %132 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %16, align 8
  store i64 %133, i64* %15, align 8
  br label %154

134:                                              ; preds = %126
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %134
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %142 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %17, align 4
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %15, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i64, i64* %16, align 8
  store i64 %151, i64* %15, align 8
  br label %152

152:                                              ; preds = %150, %145
  br label %153

153:                                              ; preds = %152, %139, %134
  br label %154

154:                                              ; preds = %153, %129
  br label %155

155:                                              ; preds = %154, %122
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %81

159:                                              ; preds = %81
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %245, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %20, align 4
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* @PAGE_SIZE, align 8
  %166 = sdiv i64 %164, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %219, %162
  %169 = load i32, i32* %12, align 4
  %170 = icmp sge i32 %169, 1
  br i1 %170, label %171, label %222

171:                                              ; preds = %168
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %19, align 4
  store i32 2, i32* %20, align 4
  store i32 1, i32* %18, align 4
  br label %173

173:                                              ; preds = %211, %171
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %7, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %214

178:                                              ; preds = %173
  %179 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %179, i64 %181
  %183 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @PAGE_SIZE, align 8
  %189 = mul nsw i64 %187, %188
  %190 = srem i64 %185, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %19, align 4
  br label %214

194:                                              ; preds = %178
  %195 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %195, i64 %197
  %199 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* @PAGE_SIZE, align 8
  %205 = mul nsw i64 %203, %204
  %206 = sdiv i64 %201, %205
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %20, align 4
  br label %211

211:                                              ; preds = %194
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %173

214:                                              ; preds = %192, %173
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  br label %222

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %12, align 4
  br label %168

222:                                              ; preds = %217, %168
  %223 = load i32, i32* %12, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %222
  %226 = load i32, i32* %20, align 4
  %227 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %228 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sle i32 %226, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %233 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %231
  %238 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %239 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @aac_convert_sgraw2(%struct.aac_softc* %238, %struct.aac_raw_io2* %239, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %237, %231, %225, %222
  br label %251

245:                                              ; preds = %159
  %246 = load i32, i32* @RIO2_SGL_CONFORMANT, align 4
  %247 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %13, align 8
  %248 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %244
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = mul i64 %253, 32
  %255 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %256 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add i64 %259, %254
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 8
  br label %459

262:                                              ; preds = %59
  %263 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %264 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @RawIo, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %343

269:                                              ; preds = %262
  %270 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %271 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %270, i32 0, i32 6
  %272 = load %struct.aac_sg_table*, %struct.aac_sg_table** %271, align 8
  %273 = bitcast %struct.aac_sg_table* %272 to %struct.aac_sg_tableraw*
  store %struct.aac_sg_tableraw* %273, %struct.aac_sg_tableraw** %21, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %276 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  store i32 0, i32* %12, align 4
  br label %277

277:                                              ; preds = %329, %269
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %332

281:                                              ; preds = %277
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %289 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %288, i32 0, i32 1
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 4
  store i32 %287, i32* %294, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %302 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %301, i32 0, i32 1
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  store i64 %300, i64* %307, align 8
  %308 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %309 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %308, i32 0, i32 1
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 3
  store i64 0, i64* %314, align 8
  %315 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %316 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %315, i32 0, i32 1
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 2
  store i64 0, i64* %321, align 8
  %322 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %21, align 8
  %323 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %322, i32 0, i32 1
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 1
  store i64 0, i64* %328, align 8
  br label %329

329:                                              ; preds = %281
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  br label %277

332:                                              ; preds = %277
  %333 = load i32, i32* %7, align 4
  %334 = sext i32 %333 to i64
  %335 = mul i64 %334, 4
  %336 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %337 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = add i64 %340, %335
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %338, align 8
  br label %458

343:                                              ; preds = %262
  %344 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %345 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %344, i32 0, i32 7
  %346 = load %struct.aac_softc*, %struct.aac_softc** %345, align 8
  %347 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %350 = and i32 %348, %349
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %404

352:                                              ; preds = %343
  %353 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %354 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %353, i32 0, i32 6
  %355 = load %struct.aac_sg_table*, %struct.aac_sg_table** %354, align 8
  store %struct.aac_sg_table* %355, %struct.aac_sg_table** %22, align 8
  %356 = load i32, i32* %7, align 4
  %357 = load %struct.aac_sg_table*, %struct.aac_sg_table** %22, align 8
  %358 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  store i32 0, i32* %12, align 4
  br label %359

359:                                              ; preds = %390, %352
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %7, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %393

363:                                              ; preds = %359
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.aac_sg_table*, %struct.aac_sg_table** %22, align 8
  %371 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %370, i32 0, i32 1
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %371, align 8
  %373 = load i32, i32* %12, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 1
  store i32 %369, i32* %376, align 8
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %378 = load i32, i32* %12, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.aac_sg_table*, %struct.aac_sg_table** %22, align 8
  %384 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %383, i32 0, i32 1
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %384, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 0
  store i64 %382, i64* %389, align 8
  br label %390

390:                                              ; preds = %363
  %391 = load i32, i32* %12, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %12, align 4
  br label %359

393:                                              ; preds = %359
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = mul i64 %395, 4
  %397 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %398 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = add i64 %401, %396
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 8
  br label %457

404:                                              ; preds = %343
  %405 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %406 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %405, i32 0, i32 6
  %407 = load %struct.aac_sg_table*, %struct.aac_sg_table** %406, align 8
  %408 = bitcast %struct.aac_sg_table* %407 to %struct.aac_sg_table*
  store %struct.aac_sg_table* %408, %struct.aac_sg_table** %23, align 8
  %409 = load i32, i32* %7, align 4
  %410 = load %struct.aac_sg_table*, %struct.aac_sg_table** %23, align 8
  %411 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %410, i32 0, i32 0
  store i32 %409, i32* %411, align 8
  store i32 0, i32* %12, align 4
  br label %412

412:                                              ; preds = %443, %404
  %413 = load i32, i32* %12, align 4
  %414 = load i32, i32* %7, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %446

416:                                              ; preds = %412
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.aac_sg_table*, %struct.aac_sg_table** %23, align 8
  %424 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %423, i32 0, i32 1
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %424, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 1
  store i32 %422, i32* %429, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %431 = load i32, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.aac_sg_table*, %struct.aac_sg_table** %23, align 8
  %437 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %436, i32 0, i32 1
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %437, align 8
  %439 = load i32, i32* %12, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 0
  store i64 %435, i64* %442, align 8
  br label %443

443:                                              ; preds = %416
  %444 = load i32, i32* %12, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %12, align 4
  br label %412

446:                                              ; preds = %412
  %447 = load i32, i32* %7, align 4
  %448 = sext i32 %447 to i64
  %449 = mul i64 %448, 4
  %450 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %451 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = add i64 %454, %449
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %452, align 8
  br label %457

457:                                              ; preds = %446, %393
  br label %458

458:                                              ; preds = %457, %332
  br label %459

459:                                              ; preds = %458, %251
  br label %460

460:                                              ; preds = %459, %54
  %461 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %462 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = shl i32 %463, 2
  %465 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %466 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %465, i32 0, i32 5
  %467 = load %struct.aac_fib*, %struct.aac_fib** %466, align 8
  %468 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 2
  store i32 %464, i32* %469, align 4
  %470 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %471 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %470, i32 0, i32 3
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %474 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %473, i32 0, i32 5
  %475 = load %struct.aac_fib*, %struct.aac_fib** %474, align 8
  %476 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 4
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  store i64 %472, i64* %478, align 8
  %479 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %480 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, 1
  %483 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %484 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %483, i32 0, i32 5
  %485 = load %struct.aac_fib*, %struct.aac_fib** %484, align 8
  %486 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %488, %482
  store i32 %489, i32* %487, align 8
  %490 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %491 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %527

494:                                              ; preds = %460
  %495 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %496 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %510

501:                                              ; preds = %494
  %502 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %503 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %506 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %509 = call i32 @bus_dmamap_sync(i32 %504, i32 %507, i32 %508)
  br label %510

510:                                              ; preds = %501, %494
  %511 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %512 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %526

517:                                              ; preds = %510
  %518 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %519 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %522 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %525 = call i32 @bus_dmamap_sync(i32 %520, i32 %523, i32 %524)
  br label %526

526:                                              ; preds = %517, %510
  br label %527

527:                                              ; preds = %526, %460
  %528 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %529 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %530 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = or i32 %531, %528
  store i32 %532, i32* %530, align 8
  %533 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %534 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = load i32, i32* @AAC_CMD_WAIT, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %527
  %540 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %541 = load i32, i32* @AAC_MONKER_SYNCFIB, align 4
  %542 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %543 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %542, i32 0, i32 3
  %544 = load i64, i64* %543, align 8
  %545 = call i32 @aacraid_sync_command(%struct.aac_softc* %540, i32 %541, i64 %544, i32 0, i32 0, i32 0, i64* null, i32* null)
  br label %587

546:                                              ; preds = %527
  %547 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %548 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %563

553:                                              ; preds = %546
  store i64 0, i64* %24, align 8
  %554 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %555 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %556 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %555, i32 0, i32 3
  store %struct.aac_command* %554, %struct.aac_command** %556, align 8
  %557 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %558 = load i32, i32* @AAC_MONKER_SYNCFIB, align 4
  %559 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %560 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %559, i32 0, i32 3
  %561 = load i64, i64* %560, align 8
  %562 = call i32 @aacraid_sync_command(%struct.aac_softc* %557, i32 %558, i64 %561, i32 0, i32 0, i32 0, i64* %24, i32* null)
  br label %586

563:                                              ; preds = %546
  store i32 10000000, i32* %25, align 4
  br label %564

564:                                              ; preds = %583, %563
  %565 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %566 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %567 = call i64 @AAC_SEND_COMMAND(%struct.aac_softc* %565, %struct.aac_command* %566)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %585

569:                                              ; preds = %564
  %570 = load i32, i32* %25, align 4
  %571 = add nsw i32 %570, -1
  store i32 %571, i32* %25, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %583

573:                                              ; preds = %569
  %574 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %575 = call i32 @aac_unmap_command(%struct.aac_command* %574)
  %576 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %577 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %578 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = or i32 %579, %576
  store i32 %580, i32* %578, align 8
  %581 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %582 = call i32 @aac_requeue_ready(%struct.aac_command* %581)
  br label %583

583:                                              ; preds = %573, %569
  %584 = call i32 @DELAY(i32 5)
  br label %564

585:                                              ; preds = %564
  br label %586

586:                                              ; preds = %585, %553
  br label %587

587:                                              ; preds = %586, %539, %53
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @aac_convert_sgraw2(%struct.aac_softc*, %struct.aac_raw_io2*, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @aacraid_sync_command(%struct.aac_softc*, i32, i64, i32, i32, i32, i64*, i32*) #1

declare dso_local i64 @AAC_SEND_COMMAND(%struct.aac_softc*, %struct.aac_command*) #1

declare dso_local i32 @aac_unmap_command(%struct.aac_command*) #1

declare dso_local i32 @aac_requeue_ready(%struct.aac_command*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
