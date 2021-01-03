; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %29, %28, %0
  %7 = call i32 (...) @f()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = call i32 (...) @h()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @i to i32 (i32, ...)*)(i32 %17)
  switch i32 %18, label %27 [
    i32 2, label %19
  ]

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %3, align 8
  %22 = call i32 (...) @h()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %29

25:                                               ; preds = %19
  %26 = call i32 (...) @k()
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %14
  br label %28

28:                                               ; preds = %27, %9
  br label %6

29:                                               ; preds = %24
  br label %6

30:                                               ; preds = %6
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 (...) @l()
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @a, align 4
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @f(...) #1

declare dso_local i32 @h(...) #1

declare dso_local i32 @i(...) #1

declare dso_local i32 @k(...) #1

declare dso_local i32 @l(...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
