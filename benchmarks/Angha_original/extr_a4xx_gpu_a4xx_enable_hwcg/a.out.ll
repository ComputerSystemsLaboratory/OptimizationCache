; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { %struct.msm_gpu }

@REG_A4XX_RBBM_CLOCK_CTL_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL2_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL3_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL4_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_HYST_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_UCHE = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_MODE_GPC = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_HYST_GPC = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_GPC = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL_HLSQ = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_HYST_HLSQ = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_HLSQ = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_CTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a4xx_enable_hwcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal void @a4xx_enable_hwcg(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @REG_A4XX_RBBM_CLOCK_CTL_TP(i32 %12)
  %14 = call i32 @gpu_write(%struct.msm_gpu* %11, i32 %13, i32 35791362)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %7

18:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @REG_A4XX_RBBM_CLOCK_CTL2_TP(i32 %24)
  %26 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %25, i32 8738)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %19

30:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @REG_A4XX_RBBM_CLOCK_HYST_TP(i32 %36)
  %38 = call i32 @gpu_write(%struct.msm_gpu* %35, i32 %37, i32 242457831)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %31

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %51, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @REG_A4XX_RBBM_CLOCK_DELAY_TP(i32 %48)
  %50 = call i32 @gpu_write(%struct.msm_gpu* %47, i32 %49, i32 1118481)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %43

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %63, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @REG_A4XX_RBBM_CLOCK_CTL_SP(i32 %60)
  %62 = call i32 @gpu_write(%struct.msm_gpu* %59, i32 %61, i32 572662306)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %55

66:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %75, %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp ult i32 %68, 4
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @REG_A4XX_RBBM_CLOCK_CTL2_SP(i32 %72)
  %74 = call i32 @gpu_write(%struct.msm_gpu* %71, i32 %73, i32 2236962)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %67

78:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %87, %78
  %80 = load i32, i32* %4, align 4
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @REG_A4XX_RBBM_CLOCK_HYST_SP(i32 %84)
  %86 = call i32 @gpu_write(%struct.msm_gpu* %83, i32 %85, i32 260)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %79

90:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %99, %90
  %92 = load i32, i32* %4, align 4
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @REG_A4XX_RBBM_CLOCK_DELAY_SP(i32 %96)
  %98 = call i32 @gpu_write(%struct.msm_gpu* %95, i32 %97, i32 129)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %91

102:                                              ; preds = %91
  %103 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %104 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL_UCHE, align 4
  %105 = call i32 @gpu_write(%struct.msm_gpu* %103, i32 %104, i32 572662306)
  %106 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %107 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL2_UCHE, align 4
  %108 = call i32 @gpu_write(%struct.msm_gpu* %106, i32 %107, i32 35791394)
  %109 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %110 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL3_UCHE, align 4
  %111 = call i32 @gpu_write(%struct.msm_gpu* %109, i32 %110, i32 0)
  %112 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %113 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL4_UCHE, align 4
  %114 = call i32 @gpu_write(%struct.msm_gpu* %112, i32 %113, i32 0)
  %115 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %116 = load i32, i32* @REG_A4XX_RBBM_CLOCK_HYST_UCHE, align 4
  %117 = call i32 @gpu_write(%struct.msm_gpu* %115, i32 %116, i32 17476)
  %118 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %119 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_UCHE, align 4
  %120 = call i32 @gpu_write(%struct.msm_gpu* %118, i32 %119, i32 4370)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %129, %102
  %122 = load i32, i32* %4, align 4
  %123 = icmp ult i32 %122, 4
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @REG_A4XX_RBBM_CLOCK_CTL_RB(i32 %126)
  %128 = call i32 @gpu_write(%struct.msm_gpu* %125, i32 %127, i32 572662306)
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %121

132:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %151, %132
  %134 = load i32, i32* %4, align 4
  %135 = icmp ult i32 %134, 4
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %138 = call i64 @adreno_is_a420(%struct.adreno_gpu* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @REG_A4XX_RBBM_CLOCK_CTL2_RB(i32 %142)
  %144 = call i32 @gpu_write(%struct.msm_gpu* %141, i32 %143, i32 8224)
  br label %150

145:                                              ; preds = %136
  %146 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @REG_A4XX_RBBM_CLOCK_CTL2_RB(i32 %147)
  %149 = call i32 @gpu_write(%struct.msm_gpu* %146, i32 %148, i32 139296)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %133

154:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %163, %154
  %156 = load i32, i32* %4, align 4
  %157 = icmp ult i32 %156, 4
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @REG_A4XX_RBBM_CLOCK_CTL_MARB_CCU(i32 %160)
  %162 = call i32 @gpu_write(%struct.msm_gpu* %159, i32 %161, i32 2338)
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %155

166:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %175, %166
  %168 = load i32, i32* %4, align 4
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @REG_A4XX_RBBM_CLOCK_HYST_RB_MARB_CCU(i32 %172)
  %174 = call i32 @gpu_write(%struct.msm_gpu* %171, i32 %173, i32 0)
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %167

178:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %187, %178
  %180 = load i32, i32* %4, align 4
  %181 = icmp ult i32 %180, 4
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @REG_A4XX_RBBM_CLOCK_DELAY_RB_MARB_CCU_L1(i32 %184)
  %186 = call i32 @gpu_write(%struct.msm_gpu* %183, i32 %185, i32 1)
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %179

190:                                              ; preds = %179
  %191 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %192 = load i32, i32* @REG_A4XX_RBBM_CLOCK_MODE_GPC, align 4
  %193 = call i32 @gpu_write(%struct.msm_gpu* %191, i32 %192, i32 35791394)
  %194 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %195 = load i32, i32* @REG_A4XX_RBBM_CLOCK_HYST_GPC, align 4
  %196 = call i32 @gpu_write(%struct.msm_gpu* %194, i32 %195, i32 68157700)
  %197 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %198 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_GPC, align 4
  %199 = call i32 @gpu_write(%struct.msm_gpu* %197, i32 %198, i32 139810)
  %200 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %201 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM, align 4
  %202 = call i32 @gpu_write(%struct.msm_gpu* %200, i32 %201, i32 34)
  %203 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %204 = load i32, i32* @REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM, align 4
  %205 = call i32 @gpu_write(%struct.msm_gpu* %203, i32 %204, i32 271)
  %206 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %207 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM, align 4
  %208 = call i32 @gpu_write(%struct.msm_gpu* %206, i32 %207, i32 34)
  %209 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %210 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM, align 4
  %211 = call i32 @gpu_write(%struct.msm_gpu* %209, i32 %210, i32 2236962)
  %212 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %213 = load i32, i32* @REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM, align 4
  %214 = call i32 @gpu_write(%struct.msm_gpu* %212, i32 %213, i32 16644)
  %215 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %216 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM, align 4
  %217 = call i32 @gpu_write(%struct.msm_gpu* %215, i32 %216, i32 546)
  %218 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %219 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL_HLSQ, align 4
  %220 = call i32 @gpu_write(%struct.msm_gpu* %218, i32 %219, i32 0)
  %221 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %222 = load i32, i32* @REG_A4XX_RBBM_CLOCK_HYST_HLSQ, align 4
  %223 = call i32 @gpu_write(%struct.msm_gpu* %221, i32 %222, i32 0)
  %224 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %225 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, align 4
  %226 = call i32 @gpu_write(%struct.msm_gpu* %224, i32 %225, i32 2228224)
  %227 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %228 = call i64 @adreno_is_a430(%struct.adreno_gpu* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %190
  %231 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %232 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %234, 2
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %238 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL, align 4
  %239 = call i32 @gpu_write(%struct.msm_gpu* %237, i32 %238, i32 0)
  br label %244

240:                                              ; preds = %230, %190
  %241 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %242 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL, align 4
  %243 = call i32 @gpu_write(%struct.msm_gpu* %241, i32 %242, i32 -1431655766)
  br label %244

244:                                              ; preds = %240, %236
  %245 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %246 = load i32, i32* @REG_A4XX_RBBM_CLOCK_CTL2, align 4
  %247 = call i32 @gpu_write(%struct.msm_gpu* %245, i32 %246, i32 0)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL_TP(i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL2_TP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_HYST_TP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_DELAY_TP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL_SP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL2_SP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_HYST_SP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_DELAY_SP(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL_RB(i32) #1

declare dso_local i64 @adreno_is_a420(%struct.adreno_gpu*) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL2_RB(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_CTL_MARB_CCU(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_HYST_RB_MARB_CCU(i32) #1

declare dso_local i32 @REG_A4XX_RBBM_CLOCK_DELAY_RB_MARB_CCU_L1(i32) #1

declare dso_local i64 @adreno_is_a430(%struct.adreno_gpu*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
