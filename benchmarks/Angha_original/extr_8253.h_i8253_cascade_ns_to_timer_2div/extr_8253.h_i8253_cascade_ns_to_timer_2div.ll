; ModuleID = 'extr_8253.h_i8253_cascade_ns_to_timer_2div.c'
source_filename = "extr_8253.h_i8253_cascade_ns_to_timer_2div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@i8253_cascade_ns_to_timer_2div.max_count = internal constant i32 65536, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32)* @i8253_cascade_ns_to_timer_2div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal void @i8253_cascade_ns_to_timer_2div(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 65536, %30 ]
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 65536, %39 ]
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = mul i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = mul i32 %47, %48
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %40
  %54 = load i32, i32* %12, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %86

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp ule i32 %57, 65536
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ule i32 %63, 65536
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %6, align 4
  %82 = mul i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %220

86:                                               ; preds = %79, %73, %69, %65, %62, %59, %56, %53, %40
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = udiv i32 %88, %89
  store i32 %90, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %19, align 4
  store i32 65536, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = udiv i32 %91, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 2, i32* %21, align 4
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32, i32* %21, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %165, %97
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = udiv i32 %101, %102
  %104 = add i32 %103, 1
  %105 = icmp ule i32 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = icmp ule i32 %107, 65536
  br label %109

109:                                              ; preds = %106, %99
  %110 = phi i1 [ false, %99 ], [ %108, %106 ]
  br i1 %110, label %111, label %168

111:                                              ; preds = %109
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = udiv i32 %112, %113
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %161, %111
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = mul i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %119, %120
  %122 = add i32 %121, 1
  %123 = icmp ule i32 %118, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  %126 = icmp ule i32 %125, 65536
  br label %127

127:                                              ; preds = %124, %115
  %128 = phi i1 [ false, %115 ], [ %126, %124 ]
  br i1 %128, label %129, label %164

129:                                              ; preds = %127
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul i32 %130, %131
  %133 = load i32, i32* %13, align 4
  %134 = mul i32 %132, %133
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ule i32 %135, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %129
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %20, align 4
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %143, %139, %129
  %148 = load i32, i32* %20, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp uge i32 %148, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %20, align 4
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %156, %152, %147
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %13, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %115

164:                                              ; preds = %127
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %12, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %99

168:                                              ; preds = %109
  %169 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %170 = load i32, i32* %10, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  switch i32 %172, label %174 [
    i32 129, label %173
    i32 128, label %201
    i32 130, label %204
  ]

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %168, %173
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %18, align 4
  %177 = mul i32 %175, %176
  %178 = load i32, i32* %6, align 4
  %179 = mul i32 %177, %178
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %15, align 4
  %182 = mul i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = mul i32 %182, %183
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %185, %187
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %22, align 4
  %192 = sub i32 %190, %191
  %193 = icmp ult i32 %188, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %174
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %18, align 4
  store i32 %196, i32* %13, align 4
  br label %200

197:                                              ; preds = %174
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %207

201:                                              ; preds = %168
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %18, align 4
  store i32 %203, i32* %13, align 4
  br label %207

204:                                              ; preds = %168
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %15, align 4
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %204, %201, %200
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %13, align 4
  %210 = mul i32 %208, %209
  %211 = load i32, i32* %6, align 4
  %212 = mul i32 %210, %211
  %213 = load i32*, i32** %9, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = and i32 %214, 65535
  %216 = load i32*, i32** %7, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* %13, align 4
  %218 = and i32 %217, 65535
  %219 = load i32*, i32** %8, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %207, %85
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
