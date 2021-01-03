; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i64 }

@c = common dso_local local_unnamed_addr global %struct.anon* null, align 8
@h = common dso_local local_unnamed_addr global i32 0, align 4
@g = common dso_local local_unnamed_addr global i32 0, align 4
@f = common dso_local local_unnamed_addr global i32 0, align 4
@e = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @i(i32 %0) local_unnamed_addr #0 {
  %2 = load %struct.anon*, %struct.anon** @c, align 8
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %2, i64 0, i32 0
  br label %4

4:                                                ; preds = %8, %1
  %.0 = phi i32 [ %0, %1 ], [ %9, %8 ]
  %cond4 = icmp eq i32 %.0, 0
  br i1 %cond4, label %.loopexit, label %5

5:                                                ; preds = %4
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %.critedge, label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, -1
  br label %4

.critedge:                                        ; preds = %5
  %cond = icmp eq i32 %.0, 9
  br i1 %cond, label %10, label %.loopexit

10:                                               ; preds = %.critedge
  %11 = load i32, i32* @g, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i32, i32* @f, align 4
  %14 = load i32, i32* @e, align 4
  %15 = select i1 %12, i32 %14, i32 %13
  %16 = tail call i32 (i32, ...) bitcast (i32 (...)* @l to i32 (i32, ...)*)(i32 %15) #2
  br label %.loopexit

.loopexit:                                        ; preds = %4, %.critedge, %10
  ret i32 undef
}

declare dso_local i32 @l(...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
