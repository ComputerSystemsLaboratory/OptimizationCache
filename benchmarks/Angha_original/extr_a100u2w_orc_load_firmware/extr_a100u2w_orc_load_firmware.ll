; ModuleID = 'extr_a100u2w_orc_load_firmware.c'
source_filename = "extr_a100u2w_orc_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.orc_host = type { i64 }

@ORC_GCFG = common dso_local global i64 0, align 8
@EEPRG = common dso_local global i32 0, align 4
@ORC_EBIOSADR2 = common dso_local global i64 0, align 8
@ORC_EBIOSADR0 = common dso_local global i64 0, align 8
@ORC_EBIOSDATA = common dso_local global i64 0, align 8
@PRGMRST = common dso_local global i32 0, align 4
@DOWNLOAD = common dso_local global i32 0, align 4
@ORC_RISCCTL = common dso_local global i64 0, align 8
@ORC_FWBASEADR = common dso_local global i64 0, align 8
@ORC_RISCRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*)* @orc_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @orc_load_firmware(%struct.orc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.orc_host* %0, %struct.orc_host** %3, align 8
  %9 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %10 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ORC_GCFG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EEPRG, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %19 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ORC_GCFG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %25 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ORC_EBIOSADR2, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 0, i64 %28)
  %30 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %31 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ORC_EBIOSADR0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 0, i64 %34)
  %36 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %37 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ORC_EBIOSDATA, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  %42 = icmp ne i32 %41, 85
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %46 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ORC_GCFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  store i32 0, i32* %2, align 4
  br label %269

51:                                               ; preds = %1
  %52 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %53 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ORC_EBIOSADR0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 1, i64 %56)
  %58 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %59 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ORC_EBIOSDATA, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inb(i64 %62)
  %64 = icmp ne i32 %63, 170
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %68 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ORC_GCFG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  store i32 0, i32* %2, align 4
  br label %269

73:                                               ; preds = %51
  %74 = load i32, i32* @PRGMRST, align 4
  %75 = load i32, i32* @DOWNLOAD, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %78 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ORC_RISCCTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = bitcast i64* %4 to i32*
  store i32* %83, i32** %7, align 8
  %84 = call i64 @cpu_to_le32(i32 0)
  store i64 %84, i64* %4, align 8
  %85 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %86 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ORC_EBIOSADR0, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i32 16, i64 %89)
  %91 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %92 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ORC_EBIOSDATA, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @inb(i64 %95)
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %99 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ORC_EBIOSADR0, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outw(i32 17, i64 %102)
  %104 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %105 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ORC_EBIOSDATA, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @inb(i64 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %113 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ORC_EBIOSADR0, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outw(i32 18, i64 %116)
  %118 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %119 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ORC_EBIOSDATA, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @inb(i64 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %130 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ORC_EBIOSADR2, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outw(i32 %128, i64 %133)
  %135 = load i64, i64* %4, align 8
  %136 = call i64 @le32_to_cpu(i64 %135)
  %137 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %138 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ORC_FWBASEADR, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @outl(i64 %136, i64 %141)
  %143 = call i32 @udelay(i32 500)
  %144 = load i64, i64* %4, align 8
  %145 = call i64 @le32_to_cpu(i64 %144)
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %147 = bitcast i64* %4 to i32*
  store i32* %147, i32** %7, align 8
  br label %148

148:                                              ; preds = %181, %73
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 4096
  br i1 %150, label %151, label %186

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %154 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ORC_EBIOSADR0, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outw(i32 %152, i64 %157)
  %159 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %160 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ORC_EBIOSDATA, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @inb(i64 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = srem i32 %167, 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %180

170:                                              ; preds = %151
  %171 = load i64, i64* %4, align 8
  %172 = call i64 @le32_to_cpu(i64 %171)
  %173 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %174 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ORC_RISCRAM, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @outl(i64 %172, i64 %177)
  %179 = bitcast i64* %4 to i32*
  store i32* %179, i32** %7, align 8
  br label %180

180:                                              ; preds = %170, %151
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %148

186:                                              ; preds = %148
  %187 = load i32, i32* @PRGMRST, align 4
  %188 = load i32, i32* @DOWNLOAD, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %191 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ORC_RISCCTL, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outb(i32 %189, i64 %194)
  %196 = load i32, i32* %5, align 4
  %197 = sub nsw i32 %196, 4096
  store i32 %197, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %198 = bitcast i64* %4 to i32*
  store i32* %198, i32** %7, align 8
  br label %199

199:                                              ; preds = %249, %186
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 4096
  br i1 %201, label %202, label %254

202:                                              ; preds = %199
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %205 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ORC_EBIOSADR0, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @outw(i32 %203, i64 %208)
  %210 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %211 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ORC_EBIOSDATA, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @inb(i64 %214)
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %7, align 8
  store i32 %215, i32* %216, align 4
  %218 = load i32, i32* %6, align 4
  %219 = srem i32 %218, 4
  %220 = icmp eq i32 %219, 3
  br i1 %220, label %221, label %248

221:                                              ; preds = %202
  %222 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %223 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @ORC_RISCRAM, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i64 @inl(i64 %226)
  %228 = load i64, i64* %4, align 8
  %229 = call i64 @le32_to_cpu(i64 %228)
  %230 = icmp ne i64 %227, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %221
  %232 = load i32, i32* @PRGMRST, align 4
  %233 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %234 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @ORC_RISCCTL, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @outb(i32 %232, i64 %237)
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %241 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ORC_GCFG, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @outb(i32 %239, i64 %244)
  store i32 0, i32* %2, align 4
  br label %269

246:                                              ; preds = %221
  %247 = bitcast i64* %4 to i32*
  store i32* %247, i32** %7, align 8
  br label %248

248:                                              ; preds = %246, %202
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %5, align 4
  br label %199

254:                                              ; preds = %199
  %255 = load i32, i32* @PRGMRST, align 4
  %256 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %257 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @ORC_RISCCTL, align 8
  %260 = add nsw i64 %258, %259
  %261 = call i32 @outb(i32 %255, i64 %260)
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %264 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @ORC_GCFG, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @outb(i32 %262, i64 %267)
  store i32 1, i32* %2, align 4
  br label %269

269:                                              ; preds = %254, %231, %65, %43
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @inl(i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
