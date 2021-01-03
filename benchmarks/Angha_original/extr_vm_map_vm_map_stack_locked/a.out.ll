; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_UP = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_10__* null, align 8
@P2_STKGAP_DISABLE = common dso_local global i32 0, align 4
@NT_FREEBSD_FCTL_STKGAP_DISABLE = common dso_local global i32 0, align 4
@stack_guard_page = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_UP = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@MAP_CREATE_GUARD = common dso_local global i32 0, align 4
@MAP_CREATE_STACK_GAP_DN = common dso_local global i32 0, align 4
@MAP_CREATE_STACK_GAP_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i32, i32)* @vm_map_stack_locked to i8*)], section "llvm.metadata"
@.str = private unnamed_addr constant [24 x i8] c"No stack grow direction\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bi-dir stack\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Bad entry start/end for new stack entry\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"new entry lacks MAP_ENTRY_GROWS_DOWN\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"new entry lacks MAP_ENTRY_GROWS_UP\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @vm_map_stack_locked(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %28 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %24, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %24, align 4
  %36 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %37 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @vm_map_min(i32 %43)
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %7
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @vm_map_max(i32 %50)
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %10, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %46, %7
  %60 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %60, i32* %8, align 4
  br label %249

61:                                               ; preds = %53
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curproc, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @P2_STKGAP_DISABLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curproc, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NT_FREEBSD_FCTL_STKGAP_DISABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %61
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* @stack_guard_page, align 8
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = mul nsw i64 %77, %78
  br label %80

80:                                               ; preds = %76, %75
  %81 = phi i64 [ 0, %75 ], [ %79, %76 ]
  store i64 %81, i64* %23, align 8
  %82 = load i64, i64* %23, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %86, i32* %8, align 4
  br label %249

87:                                               ; preds = %80
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %23, align 8
  %92 = add nsw i64 %90, %91
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %23, align 8
  %97 = sub nsw i64 %95, %96
  store i64 %97, i64* %22, align 8
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %9, align 4
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @vm_map_lookup_entry(i32 %99, i64 %100, %struct.TYPE_8__** %17)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %104, i32* %8, align 4
  br label %249

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %107 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %106)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %110, %111
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %115, i32* %8, align 4
  br label %249

116:                                              ; preds = %105
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i64, i64* %22, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %22, align 8
  %128 = add nsw i64 %126, %127
  store i64 %128, i64* %21, align 8
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %19, align 8
  %130 = load i64, i64* %18, align 8
  store i64 %130, i64* %20, align 8
  br label %140

131:                                              ; preds = %116
  %132 = load i64, i64* %10, align 8
  store i64 %132, i64* %18, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %22, align 8
  %135 = add nsw i64 %133, %134
  store i64 %135, i64* %21, align 8
  %136 = load i64, i64* %21, align 8
  store i64 %136, i64* %19, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %11, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %20, align 8
  br label %140

140:                                              ; preds = %131, %120
  %141 = load i32, i32* %9, align 4
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* %21, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @vm_map_insert(i32 %141, i32* null, i32 0, i64 %142, i64 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %25, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* @KERN_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %25, align 4
  store i32 %152, i32* %8, align 4
  br label %249

153:                                              ; preds = %140
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %155 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %154)
  store %struct.TYPE_8__* %155, %struct.TYPE_8__** %16, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %21, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %18, align 8
  %166 = icmp eq i64 %164, %165
  br label %167

167:                                              ; preds = %161, %153
  %168 = phi i1 [ true, %153 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @KASSERT(i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %167
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MAP_ENTRY_GROWS_DOWN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %175, %167
  %183 = phi i1 [ true, %167 ], [ %181, %175 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @KASSERT(i32 %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MAP_ENTRY_GROWS_UP, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %190, %182
  %198 = phi i1 [ true, %182 ], [ %196, %190 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @KASSERT(i32 %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* %20, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %205, i32* %8, align 4
  br label %249

206:                                              ; preds = %197
  %207 = load i32, i32* %9, align 4
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load i32, i32* @VM_PROT_NONE, align 4
  %211 = load i32, i32* @VM_PROT_NONE, align 4
  %212 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %213 = load i32, i32* %24, align 4
  %214 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %206
  %217 = load i32, i32* @MAP_CREATE_STACK_GAP_DN, align 4
  br label %220

218:                                              ; preds = %206
  %219 = load i32, i32* @MAP_CREATE_STACK_GAP_UP, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  %222 = or i32 %212, %221
  %223 = call i32 @vm_map_insert(i32 %207, i32* null, i32 0, i64 %208, i64 %209, i32 %210, i32 %211, i32 %222)
  store i32 %223, i32* %25, align 4
  %224 = load i32, i32* %25, align 4
  %225 = load i32, i32* @KERN_SUCCESS, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %220
  %228 = load i32, i32* %24, align 4
  %229 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load i64, i64* %23, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %234 = call %struct.TYPE_9__* @vm_map_entry_pred(%struct.TYPE_8__* %233)
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i64 %232, i64* %235, align 8
  br label %241

236:                                              ; preds = %227
  %237 = load i64, i64* %23, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %239 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %238)
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  store i64 %237, i64* %240, align 8
  br label %241

241:                                              ; preds = %236, %231
  br label %247

242:                                              ; preds = %220
  %243 = load i32, i32* %9, align 4
  %244 = load i64, i64* %18, align 8
  %245 = load i64, i64* %21, align 8
  %246 = call i32 @vm_map_delete(i32 %243, i64 %244, i64 %245)
  br label %247

247:                                              ; preds = %242, %241
  %248 = load i32, i32* %25, align 4
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %247, %204, %151, %114, %103, %85, %59
  %250 = load i32, i32* %8, align 4
  ret i32 %250
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i64, %struct.TYPE_8__**) #1

declare dso_local %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_map_insert(i32, i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @vm_map_entry_pred(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_map_delete(i32, i64, i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
