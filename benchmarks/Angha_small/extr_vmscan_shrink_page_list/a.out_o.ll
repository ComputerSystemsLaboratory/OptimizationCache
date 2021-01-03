; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b() local_unnamed_addr #0 {
  br label %.outer.outer

.outer.outer:                                     ; preds = %15, %0
  %.011.ph.ph49 = phi i64 [ %9, %15 ], [ undef, %0 ]
  %.09.ph.ph = phi i64 [ %12, %15 ], [ undef, %0 ]
  %.08.ph.ph = phi i64 [ %5, %15 ], [ undef, %0 ]
  %.0.ph.ph = phi i32 [ %16, %15 ], [ undef, %0 ]
  br label %.outer

.outer.loopexit:                                  ; preds = %4, %8
  %.011.ph.ph = phi i64 [ %.011, %4 ], [ %9, %8 ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.outer.loopexit
  %.011.ph = phi i64 [ %.011.ph.ph, %.outer.loopexit ], [ %.011.ph.ph49, %.outer.outer ]
  %.09.ph = phi i64 [ %.09, %.outer.loopexit ], [ %.09.ph.ph, %.outer.outer ]
  %.08.ph = phi i64 [ %5, %.outer.loopexit ], [ %.08.ph.ph, %.outer.outer ]
  br label %1

1:                                                ; preds = %.outer, %11
  %.011 = phi i64 [ %9, %11 ], [ %.011.ph, %.outer ]
  %.09 = phi i64 [ %12, %11 ], [ %.09.ph, %.outer ]
  %.08 = phi i64 [ %5, %11 ], [ %.08.ph, %.outer ]
  %2 = tail call i32 (...) @f() #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = add nsw i64 %.08, 1
  %6 = tail call i32 (...) @h() #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.outer.loopexit, label %8

8:                                                ; preds = %4
  %9 = add nsw i64 %.011, 1
  %10 = tail call i32 (i32, ...) bitcast (i32 (...)* @i to i32 (i32, ...)*)(i32 %.0.ph.ph) #2
  %cond = icmp eq i32 %10, 2
  br i1 %cond, label %11, label %.outer.loopexit

11:                                               ; preds = %8
  %12 = add nsw i64 %.09, 1
  %13 = tail call i32 (...) @h() #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %1

15:                                               ; preds = %11
  %16 = tail call i32 (...) @k() #2
  br label %.outer.outer

17:                                               ; preds = %1
  %18 = icmp eq i64 %.011, %.09
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 (...) @l() #2
  br label %21

21:                                               ; preds = %19, %17
  %22 = trunc i64 %.08 to i32
  store i32 %22, i32* @a, align 4
  ret i32 undef
}

declare dso_local i32 @f(...) local_unnamed_addr #1

declare dso_local i32 @h(...) local_unnamed_addr #1

declare dso_local i32 @i(...) local_unnamed_addr #1

declare dso_local i32 @k(...) local_unnamed_addr #1

declare dso_local i32 @l(...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
