; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@HMAP = common dso_local local_unnamed_addr global %struct.TYPE_27__* null, align 8
@O_LEFTRIGHT = common dso_local local_unnamed_addr global i32 0, align 4
@OOBLNO = common dso_local local_unnamed_addr global i32 0, align 4
@P_TOP = common dso_local local_unnamed_addr global i32 0, align 4
@P_BOTTOM = common dso_local local_unnamed_addr global i32 0, align 4
@TMAP = common dso_local local_unnamed_addr global %struct.TYPE_27__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i64, i32, %struct.TYPE_27__*)* @vs_sm_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @vs_sm_down(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i64 %2, i32 %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__, align 4
  %8 = alloca %struct.TYPE_27__, align 4
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i64 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = load i32, i32* @O_LEFTRIGHT, align 4
  %15 = tail call i64 @O_ISSET(%struct.TYPE_28__* %0, i32 %14) #4
  %16 = icmp eq i64 %15, 0
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  br i1 %16, label %18, label %._crit_edge

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %._crit_edge, label %27

._crit_edge:                                      ; preds = %13, %18
  %22 = or i32 %3, 1
  %23 = icmp eq i32 %22, 129
  %24 = icmp eq %struct.TYPE_27__* %17, %4
  %or.cond = or i1 %23, %24
  br i1 %or.cond, label %25, label %27

25:                                               ; preds = %._crit_edge
  %26 = tail call i32 @v_sof(%struct.TYPE_28__* %0, i32* null) #4
  br label %.loopexit90

27:                                               ; preds = %._crit_edge, %18, %5
  %28 = icmp eq i32 %3, 129
  %29 = tail call i64 @IS_SMALL(%struct.TYPE_28__* %0) #4
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %114, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i64 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, %2
  %35 = icmp eq i32 %3, 131
  %or.cond3 = or i1 %35, %34
  br i1 %or.cond3, label %36, label %69

36:                                               ; preds = %31
  %37 = load i8*, i8** bitcast (%struct.TYPE_27__** @HMAP to i8**), align 8
  %38 = bitcast %struct.TYPE_27__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %38, i8* nonnull align 4 dereferenceable(20) %37, i64 20, i1 false)
  %39 = tail call i64 @vs_sm_erase(%struct.TYPE_28__* nonnull %0) #4
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.preheader, label %.loopexit90

.preheader:                                       ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i64 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i64 0, i32 1
  %43 = bitcast %struct.TYPE_27__* %8 to i8*
  br label %44

44:                                               ; preds = %.preheader, %59
  %.082 = phi i64 [ %45, %59 ], [ %2, %.preheader ]
  %45 = add nsw i64 %.082, -1
  %46 = icmp eq i64 %.082, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = call i64 @vs_sm_prev(%struct.TYPE_28__* %0, %struct.TYPE_27__* nonnull %7, %struct.TYPE_27__* nonnull %8) #4
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %.loopexit90

50:                                               ; preds = %47
  %51 = load i32, i32* %41, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @O_LEFTRIGHT, align 4
  %55 = call i64 @O_ISSET(%struct.TYPE_28__* %0, i32 %54) #4
  %56 = icmp ne i64 %55, 0
  %57 = load i32, i32* %42, align 4
  %58 = icmp eq i32 %57, 1
  %or.cond101 = or i1 %56, %58
  br i1 %or.cond101, label %60, label %59

59:                                               ; preds = %53, %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %38, i8* nonnull align 4 dereferenceable(20) %43, i64 20, i1 false)
  br label %44

60:                                               ; preds = %53, %44
  %61 = load i8*, i8** bitcast (%struct.TYPE_27__** @HMAP to i8**), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %61, i8* nonnull align 4 dereferenceable(20) %43, i64 20, i1 false)
  %62 = load i32, i32* @OOBLNO, align 4
  %63 = load i32, i32* @P_TOP, align 4
  %64 = call i64 @vs_sm_fill(%struct.TYPE_28__* %0, i32 %62, i32 %63) #4
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %.loopexit90

66:                                               ; preds = %60
  %67 = load i32, i32* @P_BOTTOM, align 4
  %68 = call i32 @vs_sm_position(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i32 0, i32 %67) #4
  br label %.loopexit90

69:                                               ; preds = %31
  br i1 %28, label %73, label %70

70:                                               ; preds = %69
  %71 = call i64 @vs_sm_cursor(%struct.TYPE_28__* nonnull %0, %struct.TYPE_27__** nonnull %6) #4
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i1 [ true, %69 ], [ %72, %70 ]
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i64 0, i32 1
  br label %76

76:                                               ; preds = %101, %73
  %.183 = phi i64 [ %2, %73 ], [ %102, %101 ]
  %77 = icmp eq i64 %.183, 0
  br i1 %77, label %.critedge, label %78

78:                                               ; preds = %76
  %79 = load i64, i64* %75, align 8
  %80 = load i64, i64* %32, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %.critedge, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i64 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @O_LEFTRIGHT, align 4
  %89 = call i64 @O_ISSET(%struct.TYPE_28__* nonnull %0, i32 %88) #4
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %.critedge

91:                                               ; preds = %87
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i64 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %.critedge, label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i64 1
  store %struct.TYPE_27__* %98, %struct.TYPE_27__** @TMAP, align 8
  %99 = call i64 @vs_sm_1down(%struct.TYPE_28__* nonnull %0) #4
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %.loopexit90

101:                                              ; preds = %96
  %102 = add nsw i64 %.183, -1
  %103 = load i64, i64* %75, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %75, align 8
  br label %76

.critedge:                                        ; preds = %87, %78, %76, %91
  %.lcssa108 = phi i1 [ false, %87 ], [ false, %78 ], [ true, %76 ], [ false, %91 ]
  br i1 %74, label %113, label %105

105:                                              ; preds = %.critedge
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i64 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i64 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %.critedge
  br i1 %.lcssa108, label %.loopexit90, label %114

114:                                              ; preds = %27, %113
  %.284 = phi i64 [ %.183, %113 ], [ %2, %27 ]
  %.078.in = phi i1 [ %74, %113 ], [ %28, %27 ]
  br label %115

115:                                              ; preds = %147, %114
  %.385 = phi i64 [ %.284, %114 ], [ %148, %147 ]
  %.079 = phi %struct.TYPE_27__* [ %4, %114 ], [ %.180, %147 ]
  %.076 = phi i32 [ 0, %114 ], [ %.177, %147 ]
  %.0 = phi i32 [ 0, %114 ], [ %.1, %147 ]
  %116 = icmp eq i64 %.385, 0
  br i1 %116, label %149, label %117

117:                                              ; preds = %115
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i64 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* @O_LEFTRIGHT, align 4
  %124 = call i64 @O_ISSET(%struct.TYPE_28__* %0, i32 %123) #4
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i64 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %149, label %131

131:                                              ; preds = %126, %117
  %132 = call i64 @vs_sm_1down(%struct.TYPE_28__* %0) #4
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %.loopexit90

134:                                              ; preds = %131
  switch i32 %3, label %147 [
    i32 129, label %135
    i32 128, label %139
  ]

135:                                              ; preds = %134
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %137 = icmp ult %struct.TYPE_27__* %.079, %136
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 1
  %spec.select88 = select i1 %137, %struct.TYPE_27__* %138, %struct.TYPE_27__* %.079
  %spec.select89 = select i1 %137, i32 %.076, i32 1
  br label %147

139:                                              ; preds = %134
  %140 = icmp eq i32 %.0, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %139
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %143 = icmp ult %struct.TYPE_27__* %.079, %142
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 1
  %spec.select = select i1 %143, %struct.TYPE_27__* %144, %struct.TYPE_27__* %.079
  br label %147

145:                                              ; preds = %139
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  br label %147

147:                                              ; preds = %135, %141, %145, %134
  %.180 = phi %struct.TYPE_27__* [ %.079, %134 ], [ %146, %145 ], [ %spec.select, %141 ], [ %spec.select88, %135 ]
  %.177 = phi i32 [ %.076, %134 ], [ %.076, %145 ], [ %.076, %141 ], [ %spec.select89, %135 ]
  %.1 = phi i32 [ %.0, %134 ], [ 1, %145 ], [ %.0, %141 ], [ %.0, %135 ]
  %148 = add nsw i64 %.385, -1
  br label %115

149:                                              ; preds = %115, %122, %126
  %.lcssa = phi i1 [ true, %122 ], [ true, %126 ], [ false, %115 ]
  %150 = icmp ne i32 %3, 129
  %or.cond5 = and i1 %150, %.078.in
  br i1 %or.cond5, label %.loopexit90, label %151

151:                                              ; preds = %149
  switch i32 %3, label %204 [
    i32 131, label %152
    i32 130, label %165
    i32 129, label %175
    i32 128, label %.loopexit
  ]

152:                                              ; preds = %151
  br i1 %.lcssa, label %165, label %153

153:                                              ; preds = %152
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  br label %155

155:                                              ; preds = %163, %153
  %.2 = phi %struct.TYPE_27__* [ %154, %153 ], [ %164, %163 ]
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %157 = icmp ugt %struct.TYPE_27__* %.2, %156
  br i1 %157, label %158, label %.loopexit

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.2, i64 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @db_exist(%struct.TYPE_28__* %0, i32 %160) #4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %.loopexit

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.2, i64 -1
  br label %155

165:                                              ; preds = %152, %151
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %167 = ptrtoint %struct.TYPE_27__* %.079 to i64
  %168 = ptrtoint %struct.TYPE_27__* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 20
  %171 = icmp slt i64 %.385, %170
  br i1 %171, label %172, label %.loopexit

172:                                              ; preds = %165
  %173 = sub i64 0, %.385
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 %173
  br label %.loopexit

175:                                              ; preds = %151
  %176 = icmp eq i32 %.076, 0
  br i1 %176, label %.loopexit90, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %178, align 4
  %182 = load i32, i32* @O_LEFTRIGHT, align 4
  %183 = call i64 @O_ISSET(%struct.TYPE_28__* %0, i32 %182) #4
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 0, i32 2
  %187 = load i32, i32* %186, align 4
  %.phi.trans.insert = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i64 0, i32 2
  %.pre111 = load i32, i32* %.phi.trans.insert, align 8
  br label %195

188:                                              ; preds = %177
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.079, i64 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i64 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %191, %193
  br label %195

195:                                              ; preds = %188, %185
  %196 = phi i32 [ %.pre111, %185 ], [ %193, %188 ]
  %197 = phi i32 [ %187, %185 ], [ %194, %188 ]
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i64 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = srem i32 %199, %196
  %201 = add nsw i32 %200, %197
  %202 = call i32 @vs_colpos(%struct.TYPE_28__* nonnull %0, i32 %181, i32 %201) #4
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 1
  store i32 %202, i32* %203, align 4
  br label %.loopexit90

204:                                              ; preds = %151
  %205 = call i32 (...) @abort() #5
  unreachable

.loopexit:                                        ; preds = %158, %155, %165, %151, %172
  %.3 = phi %struct.TYPE_27__* [ %.079, %151 ], [ %174, %172 ], [ %166, %165 ], [ %.2, %155 ], [ %.2, %158 ]
  %206 = call i32 @SMAP_CACHE(%struct.TYPE_27__* %.3) #4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %.loopexit
  %209 = call i64 @vs_line(%struct.TYPE_28__* %0, %struct.TYPE_27__* %.3, i32* null, i32* null) #4
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %.loopexit90

211:                                              ; preds = %208, %.loopexit
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.3, i64 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 0
  store i32 %213, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.3, i64 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 255
  br i1 %217, label %221, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %.3, i64 0, i32 4
  %220 = load i32, i32* %219, align 4
  br label %221

221:                                              ; preds = %211, %218
  %222 = phi i32 [ %220, %218 ], [ 0, %211 ]
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1, i64 0, i32 1
  store i32 %222, i32* %223, align 4
  br label %.loopexit90

.loopexit90:                                      ; preds = %96, %47, %131, %208, %195, %175, %149, %113, %60, %36, %221, %66, %25
  %.081 = phi i32 [ 1, %25 ], [ %68, %66 ], [ 0, %221 ], [ 1, %36 ], [ 1, %60 ], [ 0, %113 ], [ 0, %149 ], [ 0, %175 ], [ 0, %195 ], [ 1, %208 ], [ 1, %131 ], [ 1, %47 ], [ 1, %96 ]
  ret i32 %.081
}

declare dso_local i64 @O_ISSET(%struct.TYPE_28__*, i32) local_unnamed_addr #1

declare dso_local i32 @v_sof(%struct.TYPE_28__*, i32*) local_unnamed_addr #1

declare dso_local i64 @IS_SMALL(%struct.TYPE_28__*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vs_sm_erase(%struct.TYPE_28__*) local_unnamed_addr #1

declare dso_local i64 @vs_sm_prev(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*) local_unnamed_addr #1

declare dso_local i64 @vs_sm_fill(%struct.TYPE_28__*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @vs_sm_position(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) local_unnamed_addr #1

declare dso_local i64 @vs_sm_cursor(%struct.TYPE_28__*, %struct.TYPE_27__**) local_unnamed_addr #1

declare dso_local i64 @vs_sm_1down(%struct.TYPE_28__*) local_unnamed_addr #1

declare dso_local i32 @db_exist(%struct.TYPE_28__*, i32) local_unnamed_addr #1

declare dso_local i32 @vs_colpos(%struct.TYPE_28__*, i32, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) local_unnamed_addr #3

declare dso_local i32 @SMAP_CACHE(%struct.TYPE_27__*) local_unnamed_addr #1

declare dso_local i64 @vs_line(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
