; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@MAP_STACK_GROWS_DOWN = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_STACK_GROWS_UP = common dso_local local_unnamed_addr global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local local_unnamed_addr global i32 0, align 4
@curproc = common dso_local local_unnamed_addr global %struct.TYPE_10__* null, align 8
@P2_STKGAP_DISABLE = common dso_local local_unnamed_addr global i32 0, align 4
@NT_FREEBSD_FCTL_STKGAP_DISABLE = common dso_local local_unnamed_addr global i32 0, align 4
@stack_guard_page = common dso_local local_unnamed_addr global i64 0, align 8
@PAGE_SIZE = common dso_local local_unnamed_addr global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local local_unnamed_addr global i32 0, align 4
@KERN_NO_SPACE = common dso_local local_unnamed_addr global i32 0, align 4
@KERN_SUCCESS = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_ENTRY_GROWS_DOWN = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_ENTRY_GROWS_UP = common dso_local local_unnamed_addr global i32 0, align 4
@VM_PROT_NONE = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_CREATE_GUARD = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_CREATE_STACK_GAP_DN = common dso_local local_unnamed_addr global i32 0, align 4
@MAP_CREATE_STACK_GAP_UP = common dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No stack grow direction\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bi-dir stack\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Bad entry start/end for new stack entry\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"new entry lacks MAP_ENTRY_GROWS_DOWN\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"new entry lacks MAP_ENTRY_GROWS_UP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i32, i32)* @vm_map_stack_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @vm_map_stack_locked(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %10 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %11 = or i32 %10, %9
  %12 = and i32 %11, %6
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = tail call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #2
  %16 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %17 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %18 = or i32 %17, %16
  %19 = icmp ne i32 %12, %18
  %20 = zext i1 %19 to i32
  %21 = tail call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #2
  %22 = tail call i64 @vm_map_min(i32 %0) #2
  %23 = icmp sgt i64 %22, %1
  br i1 %23, label %29, label %24

24:                                               ; preds = %7
  %25 = add nsw i64 %2, %1
  %26 = tail call i64 @vm_map_max(i32 %0) #2
  %27 = icmp sgt i64 %25, %26
  %28 = icmp slt i64 %2, 1
  %or.cond = or i1 %28, %27
  br i1 %or.cond, label %29, label %31

29:                                               ; preds = %24, %7
  %30 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  br label %143

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curproc, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @P2_STKGAP_DISABLE, align 4
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NT_FREEBSD_FCTL_STKGAP_DISABLE, align 4
  %42 = and i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @stack_guard_page, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = mul nsw i64 %46, %45
  br label %48

48:                                               ; preds = %38, %31, %44
  %49 = phi i64 [ %47, %44 ], [ 0, %38 ], [ 0, %31 ]
  %50 = icmp slt i64 %49, %2
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  br label %143

53:                                               ; preds = %48
  %54 = add nsw i64 %49, %3
  %55 = icmp sgt i64 %54, %2
  %56 = sub nsw i64 %2, %49
  %spec.select = select i1 %55, i64 %56, i64 %3
  %57 = call i64 @vm_map_lookup_entry(i32 %0, i64 %1, %struct.TYPE_8__** nonnull %8) #2
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @KERN_NO_SPACE, align 4
  br label %143

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %62) #2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, %25
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @KERN_NO_SPACE, align 4
  br label %143

69:                                               ; preds = %61
  %70 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %71 = icmp eq i32 %12, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = sub nsw i64 %25, %spec.select
  br label %76

74:                                               ; preds = %69
  %75 = add nsw i64 %spec.select, %1
  br label %76

76:                                               ; preds = %74, %72
  %.070 = phi i64 [ %1, %72 ], [ %75, %74 ]
  %.069 = phi i64 [ %73, %72 ], [ %25, %74 ]
  %.068 = phi i64 [ %25, %72 ], [ %75, %74 ]
  %.066 = phi i64 [ %73, %72 ], [ %1, %74 ]
  %77 = call i32 @vm_map_insert(i32 %0, i32* null, i32 0, i64 %.066, i64 %.068, i32 %4, i32 %5, i32 %6) #2
  %78 = load i32, i32* @KERN_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %81) #2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, %.068
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, %.066
  %phitmp = zext i1 %89 to i32
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ 1, %80 ], [ %phitmp, %86 ]
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0)) #2
  %93 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %94 = and i32 %93, %12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MAP_ENTRY_GROWS_DOWN, align 4
  %100 = and i32 %99, %98
  %101 = icmp ne i32 %100, 0
  %phitmp76 = zext i1 %101 to i32
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i32 [ 1, %90 ], [ %phitmp76, %96 ]
  %104 = call i32 @KASSERT(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #2
  %105 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %106 = and i32 %105, %12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MAP_ENTRY_GROWS_UP, align 4
  %112 = and i32 %111, %110
  %113 = icmp ne i32 %112, 0
  %phitmp77 = zext i1 %113 to i32
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i32 [ 1, %102 ], [ %phitmp77, %108 ]
  %116 = call i32 @KASSERT(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #2
  %117 = icmp eq i64 %.070, %.069
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @KERN_SUCCESS, align 4
  br label %143

120:                                              ; preds = %114
  %121 = load i32, i32* @VM_PROT_NONE, align 4
  %122 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %123 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %124 = icmp eq i32 %12, %123
  %125 = load i32, i32* @MAP_CREATE_STACK_GAP_DN, align 4
  %126 = load i32, i32* @MAP_CREATE_STACK_GAP_UP, align 4
  %127 = select i1 %124, i32 %125, i32 %126
  %128 = or i32 %127, %122
  %129 = call i32 @vm_map_insert(i32 %0, i32* null, i32 0, i64 %.070, i64 %.069, i32 %121, i32 %121, i32 %128) #2
  %130 = load i32, i32* @KERN_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %120
  %133 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %134 = icmp eq i32 %12, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = call %struct.TYPE_9__* @vm_map_entry_pred(%struct.TYPE_8__* %82) #2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 0, i32 0
  store i64 %49, i64* %137, align 8
  br label %143

138:                                              ; preds = %132
  %139 = call %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__* %82) #2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 0, i32 3
  store i64 %49, i64* %140, align 8
  br label %143

141:                                              ; preds = %120
  %142 = call i32 @vm_map_delete(i32 %0, i64 %.066, i64 %.068) #2
  br label %143

143:                                              ; preds = %141, %138, %135, %76, %118, %67, %59, %51, %29
  %.0 = phi i32 [ %30, %29 ], [ %52, %51 ], [ %60, %59 ], [ %68, %67 ], [ %119, %118 ], [ %77, %76 ], [ %129, %135 ], [ %129, %138 ], [ %129, %141 ]
  ret i32 %.0
}

declare dso_local i32 @KASSERT(i32, i8*) local_unnamed_addr #1

declare dso_local i64 @vm_map_min(i32) local_unnamed_addr #1

declare dso_local i64 @vm_map_max(i32) local_unnamed_addr #1

declare dso_local i64 @vm_map_lookup_entry(i32, i64, %struct.TYPE_8__**) local_unnamed_addr #1

declare dso_local %struct.TYPE_8__* @vm_map_entry_succ(%struct.TYPE_8__*) local_unnamed_addr #1

declare dso_local i32 @vm_map_insert(i32, i32*, i32, i64, i64, i32, i32, i32) local_unnamed_addr #1

declare dso_local %struct.TYPE_9__* @vm_map_entry_pred(%struct.TYPE_8__*) local_unnamed_addr #1

declare dso_local i32 @vm_map_delete(i32, i64, i64) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
