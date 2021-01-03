; ModuleID = 'extr_a5xx_gpu_a5xx_hw_init.c'
source_filename = "extr_a5xx_gpu_a5xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.msm_gpu*, i32)* }
%struct.adreno_gpu = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB = common dso_local global i32 0, align 4
@REG_A5XX_VBIF_GATE_OFF_WRREQ_EN = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_AHB_CNTL0 = common dso_local global i32 0, align 4
@ADRENO_QUIRK_FAULT_DETECT_MASK = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_PERFCTR_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_CP_PERFCTR_CP_SEL_0 = common dso_local global i32 0, align 4
@PERF_CP_ALWAYS_COUNT = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0 = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_CACHE_WAYS = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_TRAP_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_TRAP_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_WRITE_THRU_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_WRITE_THRU_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_GMEM_RANGE_MIN_LO = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_GMEM_RANGE_MIN_HI = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_GMEM_RANGE_MAX_LO = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_GMEM_RANGE_MAX_HI = common dso_local global i32 0, align 4
@REG_A5XX_CP_MEQ_THRESHOLDS = common dso_local global i32 0, align 4
@REG_A5XX_CP_MERCIU_SIZE = common dso_local global i32 0, align 4
@REG_A5XX_CP_ROQ_THRESHOLDS_2 = common dso_local global i32 0, align 4
@REG_A5XX_CP_ROQ_THRESHOLDS_1 = common dso_local global i32 0, align 4
@REG_A5XX_PC_DBG_ECO_CNTL = common dso_local global i32 0, align 4
@ADRENO_QUIRK_TWO_PASS_USE_WFI = common dso_local global i32 0, align 4
@REG_A5XX_CP_CHICKEN_DBG = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_AHB_CNTL1 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_AHB_CNTL2 = common dso_local global i32 0, align 4
@REG_A5XX_TPL1_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RB_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_DBG_ECO_CNTL_2 = common dso_local global i32 0, align 4
@REG_A5XX_CP_PROTECT_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TRUST_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TSB_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE = common dso_local global i32 0, align 4
@REG_A5XX_CP_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_VSC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_GRAS_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RB_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_PC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_HLSQ_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_VFD_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_VPC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_UCHE_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_SP_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_TPL1_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@ADRENO_QUIRK_LMLOADKILL_DISABLE = common dso_local global i32 0, align 4
@REG_A5XX_VPC_DBG_ECO_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_HLSQ_DBG_ECO_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INT_0_MASK = common dso_local global i32 0, align 4
@A5XX_INT_MASK = common dso_local global i32 0, align 4
@REG_A5XX_CP_PFP_ME_CNTL = common dso_local global i32 0, align 4
@CP_EVENT_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CP_SET_SECURE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @a5xx_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %4, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = load i32, i32* @REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %10 = call i32 @gpu_write(%struct.msm_gpu* %8, i32 %9, i32 3)
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %12 = call i64 @adreno_is_a540(%struct.adreno_gpu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = load i32, i32* @REG_A5XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %17 = call i32 @gpu_write(%struct.msm_gpu* %15, i32 %16, i32 9)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %20 = load i32, i32* @REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED, align 4
  %21 = call i32 @gpu_write(%struct.msm_gpu* %19, i32 %20, i32 -1)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %23 = load i32, i32* @REG_A5XX_RBBM_AHB_CNTL0, align 4
  %24 = call i32 @gpu_write(%struct.msm_gpu* %22, i32 %23, i32 1)
  %25 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %26 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADRENO_QUIRK_FAULT_DETECT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %18
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %35 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11, align 4
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i32 %35, i32 -268435456)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %38 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12, align 4
  %39 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 -1)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13, align 4
  %42 = call i32 @gpu_write(%struct.msm_gpu* %40, i32 %41, i32 -1)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %44 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14, align 4
  %45 = call i32 @gpu_write(%struct.msm_gpu* %43, i32 %44, i32 -1)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %47 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15, align 4
  %48 = call i32 @gpu_write(%struct.msm_gpu* %46, i32 %47, i32 -1)
  %49 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %50 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16, align 4
  %51 = call i32 @gpu_write(%struct.msm_gpu* %49, i32 %50, i32 -1)
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %53 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17, align 4
  %54 = call i32 @gpu_write(%struct.msm_gpu* %52, i32 %53, i32 -1)
  %55 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %56 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18, align 4
  %57 = call i32 @gpu_write(%struct.msm_gpu* %55, i32 %56, i32 -1)
  br label %58

58:                                               ; preds = %33, %18
  %59 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %60 = load i32, i32* @REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL, align 4
  %61 = call i32 @gpu_write(%struct.msm_gpu* %59, i32 %60, i32 1073807359)
  %62 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %63 = load i32, i32* @REG_A5XX_RBBM_PERFCTR_CNTL, align 4
  %64 = call i32 @gpu_write(%struct.msm_gpu* %62, i32 %63, i32 1)
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %66 = load i32, i32* @REG_A5XX_CP_PERFCTR_CP_SEL_0, align 4
  %67 = load i32, i32* @PERF_CP_ALWAYS_COUNT, align 4
  %68 = call i32 @gpu_write(%struct.msm_gpu* %65, i32 %66, i32 %67)
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %70 = load i32, i32* @REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0, align 4
  %71 = call i32 @gpu_write(%struct.msm_gpu* %69, i32 %70, i32 6)
  %72 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %73 = load i32, i32* @REG_A5XX_UCHE_CACHE_WAYS, align 4
  %74 = call i32 @gpu_write(%struct.msm_gpu* %72, i32 %73, i32 2)
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %76 = load i32, i32* @REG_A5XX_UCHE_TRAP_BASE_LO, align 4
  %77 = call i32 @gpu_write(%struct.msm_gpu* %75, i32 %76, i32 -65536)
  %78 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %79 = load i32, i32* @REG_A5XX_UCHE_TRAP_BASE_HI, align 4
  %80 = call i32 @gpu_write(%struct.msm_gpu* %78, i32 %79, i32 131071)
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %82 = load i32, i32* @REG_A5XX_UCHE_WRITE_THRU_BASE_LO, align 4
  %83 = call i32 @gpu_write(%struct.msm_gpu* %81, i32 %82, i32 -65536)
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %85 = load i32, i32* @REG_A5XX_UCHE_WRITE_THRU_BASE_HI, align 4
  %86 = call i32 @gpu_write(%struct.msm_gpu* %84, i32 %85, i32 131071)
  %87 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %88 = load i32, i32* @REG_A5XX_UCHE_GMEM_RANGE_MIN_LO, align 4
  %89 = call i32 @gpu_write(%struct.msm_gpu* %87, i32 %88, i32 1048576)
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %91 = load i32, i32* @REG_A5XX_UCHE_GMEM_RANGE_MIN_HI, align 4
  %92 = call i32 @gpu_write(%struct.msm_gpu* %90, i32 %91, i32 0)
  %93 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %94 = load i32, i32* @REG_A5XX_UCHE_GMEM_RANGE_MAX_LO, align 4
  %95 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %96 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 1048576, %97
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @gpu_write(%struct.msm_gpu* %93, i32 %94, i32 %99)
  %101 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %102 = load i32, i32* @REG_A5XX_UCHE_GMEM_RANGE_MAX_HI, align 4
  %103 = call i32 @gpu_write(%struct.msm_gpu* %101, i32 %102, i32 0)
  %104 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %105 = load i32, i32* @REG_A5XX_CP_MEQ_THRESHOLDS, align 4
  %106 = call i32 @gpu_write(%struct.msm_gpu* %104, i32 %105, i32 64)
  %107 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %108 = call i64 @adreno_is_a530(%struct.adreno_gpu* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %58
  %111 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %112 = load i32, i32* @REG_A5XX_CP_MERCIU_SIZE, align 4
  %113 = call i32 @gpu_write(%struct.msm_gpu* %111, i32 %112, i32 64)
  br label %114

114:                                              ; preds = %110, %58
  %115 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %116 = call i64 @adreno_is_a540(%struct.adreno_gpu* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %120 = load i32, i32* @REG_A5XX_CP_MERCIU_SIZE, align 4
  %121 = call i32 @gpu_write(%struct.msm_gpu* %119, i32 %120, i32 1024)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %124 = load i32, i32* @REG_A5XX_CP_ROQ_THRESHOLDS_2, align 4
  %125 = call i32 @gpu_write(%struct.msm_gpu* %123, i32 %124, i32 -2147483552)
  %126 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %127 = load i32, i32* @REG_A5XX_CP_ROQ_THRESHOLDS_1, align 4
  %128 = call i32 @gpu_write(%struct.msm_gpu* %126, i32 %127, i32 1075845910)
  %129 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %130 = load i32, i32* @REG_A5XX_PC_DBG_ECO_CNTL, align 4
  %131 = call i32 @gpu_write(%struct.msm_gpu* %129, i32 %130, i32 -1071644672)
  %132 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %133 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ADRENO_QUIRK_TWO_PASS_USE_WFI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %122
  %141 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %142 = load i32, i32* @REG_A5XX_PC_DBG_ECO_CNTL, align 4
  %143 = call i32 @gpu_rmw(%struct.msm_gpu* %141, i32 %142, i32 0, i32 256)
  br label %144

144:                                              ; preds = %140, %122
  %145 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %146 = load i32, i32* @REG_A5XX_PC_DBG_ECO_CNTL, align 4
  %147 = call i32 @gpu_write(%struct.msm_gpu* %145, i32 %146, i32 -1071644416)
  %148 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %149 = load i32, i32* @REG_A5XX_CP_CHICKEN_DBG, align 4
  %150 = call i32 @gpu_write(%struct.msm_gpu* %148, i32 %149, i32 33554432)
  %151 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %152 = load i32, i32* @REG_A5XX_RBBM_AHB_CNTL1, align 4
  %153 = call i32 @gpu_write(%struct.msm_gpu* %151, i32 %152, i32 -1493172225)
  %154 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %155 = call i32 @a5xx_set_hwcg(%struct.msm_gpu* %154, i32 1)
  %156 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %157 = load i32, i32* @REG_A5XX_RBBM_AHB_CNTL2, align 4
  %158 = call i32 @gpu_write(%struct.msm_gpu* %156, i32 %157, i32 63)
  %159 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %160 = load i32, i32* @REG_A5XX_TPL1_MODE_CNTL, align 4
  %161 = call i32 @gpu_write(%struct.msm_gpu* %159, i32 %160, i32 256)
  %162 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %163 = load i32, i32* @REG_A5XX_RB_MODE_CNTL, align 4
  %164 = call i32 @gpu_write(%struct.msm_gpu* %162, i32 %163, i32 4)
  %165 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %166 = call i64 @adreno_is_a540(%struct.adreno_gpu* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %144
  %169 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %170 = load i32, i32* @REG_A5XX_UCHE_DBG_ECO_CNTL_2, align 4
  %171 = call i32 @gpu_write(%struct.msm_gpu* %169, i32 %170, i32 2)
  br label %172

172:                                              ; preds = %168, %144
  %173 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %174 = load i32, i32* @REG_A5XX_CP_PROTECT_CNTL, align 4
  %175 = call i32 @gpu_write(%struct.msm_gpu* %173, i32 %174, i32 7)
  %176 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %177 = call i32 @REG_A5XX_CP_PROTECT(i32 0)
  %178 = call i32 @ADRENO_PROTECT_RW(i32 4, i32 4)
  %179 = call i32 @gpu_write(%struct.msm_gpu* %176, i32 %177, i32 %178)
  %180 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %181 = call i32 @REG_A5XX_CP_PROTECT(i32 1)
  %182 = call i32 @ADRENO_PROTECT_RW(i32 8, i32 8)
  %183 = call i32 @gpu_write(%struct.msm_gpu* %180, i32 %181, i32 %182)
  %184 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %185 = call i32 @REG_A5XX_CP_PROTECT(i32 2)
  %186 = call i32 @ADRENO_PROTECT_RW(i32 16, i32 16)
  %187 = call i32 @gpu_write(%struct.msm_gpu* %184, i32 %185, i32 %186)
  %188 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %189 = call i32 @REG_A5XX_CP_PROTECT(i32 3)
  %190 = call i32 @ADRENO_PROTECT_RW(i32 32, i32 32)
  %191 = call i32 @gpu_write(%struct.msm_gpu* %188, i32 %189, i32 %190)
  %192 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %193 = call i32 @REG_A5XX_CP_PROTECT(i32 4)
  %194 = call i32 @ADRENO_PROTECT_RW(i32 64, i32 64)
  %195 = call i32 @gpu_write(%struct.msm_gpu* %192, i32 %193, i32 %194)
  %196 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %197 = call i32 @REG_A5XX_CP_PROTECT(i32 5)
  %198 = call i32 @ADRENO_PROTECT_RW(i32 128, i32 64)
  %199 = call i32 @gpu_write(%struct.msm_gpu* %196, i32 %197, i32 %198)
  %200 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %201 = call i32 @REG_A5XX_CP_PROTECT(i32 6)
  %202 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO, align 4
  %203 = call i32 @ADRENO_PROTECT_RW(i32 %202, i32 16)
  %204 = call i32 @gpu_write(%struct.msm_gpu* %200, i32 %201, i32 %203)
  %205 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %206 = call i32 @REG_A5XX_CP_PROTECT(i32 7)
  %207 = load i32, i32* @REG_A5XX_RBBM_SECVID_TRUST_CNTL, align 4
  %208 = call i32 @ADRENO_PROTECT_RW(i32 %207, i32 2)
  %209 = call i32 @gpu_write(%struct.msm_gpu* %205, i32 %206, i32 %208)
  %210 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %211 = call i32 @REG_A5XX_CP_PROTECT(i32 8)
  %212 = call i32 @ADRENO_PROTECT_RW(i32 2048, i32 64)
  %213 = call i32 @gpu_write(%struct.msm_gpu* %210, i32 %211, i32 %212)
  %214 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %215 = call i32 @REG_A5XX_CP_PROTECT(i32 9)
  %216 = call i32 @ADRENO_PROTECT_RW(i32 2112, i32 8)
  %217 = call i32 @gpu_write(%struct.msm_gpu* %214, i32 %215, i32 %216)
  %218 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %219 = call i32 @REG_A5XX_CP_PROTECT(i32 10)
  %220 = call i32 @ADRENO_PROTECT_RW(i32 2176, i32 32)
  %221 = call i32 @gpu_write(%struct.msm_gpu* %218, i32 %219, i32 %220)
  %222 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %223 = call i32 @REG_A5XX_CP_PROTECT(i32 11)
  %224 = call i32 @ADRENO_PROTECT_RW(i32 2720, i32 1)
  %225 = call i32 @gpu_write(%struct.msm_gpu* %222, i32 %223, i32 %224)
  %226 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %227 = call i32 @REG_A5XX_CP_PROTECT(i32 12)
  %228 = call i32 @ADRENO_PROTECT_RW(i32 3264, i32 1)
  %229 = call i32 @gpu_write(%struct.msm_gpu* %226, i32 %227, i32 %228)
  %230 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %231 = call i32 @REG_A5XX_CP_PROTECT(i32 13)
  %232 = call i32 @ADRENO_PROTECT_RW(i32 3312, i32 2)
  %233 = call i32 @gpu_write(%struct.msm_gpu* %230, i32 %231, i32 %232)
  %234 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %235 = call i32 @REG_A5XX_CP_PROTECT(i32 14)
  %236 = call i32 @ADRENO_PROTECT_RW(i32 3688, i32 8)
  %237 = call i32 @gpu_write(%struct.msm_gpu* %234, i32 %235, i32 %236)
  %238 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %239 = call i32 @REG_A5XX_CP_PROTECT(i32 15)
  %240 = call i32 @ADRENO_PROTECT_RW(i32 3696, i32 4)
  %241 = call i32 @gpu_write(%struct.msm_gpu* %238, i32 %239, i32 %240)
  %242 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %243 = call i32 @REG_A5XX_CP_PROTECT(i32 16)
  %244 = call i32 @ADRENO_PROTECT_RW(i32 3712, i32 16)
  %245 = call i32 @gpu_write(%struct.msm_gpu* %242, i32 %243, i32 %244)
  %246 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %247 = call i64 @adreno_is_a530(%struct.adreno_gpu* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %172
  %250 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %251 = call i32 @REG_A5XX_CP_PROTECT(i32 17)
  %252 = call i32 @ADRENO_PROTECT_RW(i32 65536, i32 32768)
  %253 = call i32 @gpu_write(%struct.msm_gpu* %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %172
  %255 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %256 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_CNTL, align 4
  %257 = call i32 @gpu_write(%struct.msm_gpu* %255, i32 %256, i32 0)
  %258 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %259 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO, align 4
  %260 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, align 4
  %261 = call i32 @gpu_write64(%struct.msm_gpu* %258, i32 %259, i32 %260, i32 0)
  %262 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %263 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE, align 4
  %264 = call i32 @gpu_write(%struct.msm_gpu* %262, i32 %263, i32 0)
  %265 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %266 = load i32, i32* @REG_A5XX_CP_ADDR_MODE_CNTL, align 4
  %267 = call i32 @gpu_write(%struct.msm_gpu* %265, i32 %266, i32 1)
  %268 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %269 = load i32, i32* @REG_A5XX_VSC_ADDR_MODE_CNTL, align 4
  %270 = call i32 @gpu_write(%struct.msm_gpu* %268, i32 %269, i32 1)
  %271 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %272 = load i32, i32* @REG_A5XX_GRAS_ADDR_MODE_CNTL, align 4
  %273 = call i32 @gpu_write(%struct.msm_gpu* %271, i32 %272, i32 1)
  %274 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %275 = load i32, i32* @REG_A5XX_RB_ADDR_MODE_CNTL, align 4
  %276 = call i32 @gpu_write(%struct.msm_gpu* %274, i32 %275, i32 1)
  %277 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %278 = load i32, i32* @REG_A5XX_PC_ADDR_MODE_CNTL, align 4
  %279 = call i32 @gpu_write(%struct.msm_gpu* %277, i32 %278, i32 1)
  %280 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %281 = load i32, i32* @REG_A5XX_HLSQ_ADDR_MODE_CNTL, align 4
  %282 = call i32 @gpu_write(%struct.msm_gpu* %280, i32 %281, i32 1)
  %283 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %284 = load i32, i32* @REG_A5XX_VFD_ADDR_MODE_CNTL, align 4
  %285 = call i32 @gpu_write(%struct.msm_gpu* %283, i32 %284, i32 1)
  %286 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %287 = load i32, i32* @REG_A5XX_VPC_ADDR_MODE_CNTL, align 4
  %288 = call i32 @gpu_write(%struct.msm_gpu* %286, i32 %287, i32 1)
  %289 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %290 = load i32, i32* @REG_A5XX_UCHE_ADDR_MODE_CNTL, align 4
  %291 = call i32 @gpu_write(%struct.msm_gpu* %289, i32 %290, i32 1)
  %292 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %293 = load i32, i32* @REG_A5XX_SP_ADDR_MODE_CNTL, align 4
  %294 = call i32 @gpu_write(%struct.msm_gpu* %292, i32 %293, i32 1)
  %295 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %296 = load i32, i32* @REG_A5XX_TPL1_ADDR_MODE_CNTL, align 4
  %297 = call i32 @gpu_write(%struct.msm_gpu* %295, i32 %296, i32 1)
  %298 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %299 = load i32, i32* @REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, align 4
  %300 = call i32 @gpu_write(%struct.msm_gpu* %298, i32 %299, i32 1)
  %301 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %302 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %301, i32 0, i32 1
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ADRENO_QUIRK_LMLOADKILL_DISABLE, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %254
  %310 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %311 = load i32, i32* @REG_A5XX_VPC_DBG_ECO_CNTL, align 4
  %312 = call i32 @BIT(i32 23)
  %313 = call i32 @gpu_rmw(%struct.msm_gpu* %310, i32 %311, i32 0, i32 %312)
  %314 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %315 = load i32, i32* @REG_A5XX_HLSQ_DBG_ECO_CNTL, align 4
  %316 = call i32 @BIT(i32 18)
  %317 = call i32 @gpu_rmw(%struct.msm_gpu* %314, i32 %315, i32 %316, i32 0)
  br label %318

318:                                              ; preds = %309, %254
  %319 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %320 = call i32 @adreno_hw_init(%struct.msm_gpu* %319)
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i32, i32* %5, align 4
  store i32 %324, i32* %2, align 4
  br label %455

325:                                              ; preds = %318
  %326 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %327 = call i32 @a5xx_preempt_hw_init(%struct.msm_gpu* %326)
  %328 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %329 = call i32 @a5xx_gpmu_ucode_init(%struct.msm_gpu* %328)
  %330 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %331 = call i32 @a5xx_ucode_init(%struct.msm_gpu* %330)
  store i32 %331, i32* %5, align 4
  %332 = load i32, i32* %5, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = load i32, i32* %5, align 4
  store i32 %335, i32* %2, align 4
  br label %455

336:                                              ; preds = %325
  %337 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %338 = load i32, i32* @REG_A5XX_RBBM_INT_0_MASK, align 4
  %339 = load i32, i32* @A5XX_INT_MASK, align 4
  %340 = call i32 @gpu_write(%struct.msm_gpu* %337, i32 %338, i32 %339)
  %341 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %342 = load i32, i32* @REG_A5XX_CP_PFP_ME_CNTL, align 4
  %343 = call i32 @gpu_write(%struct.msm_gpu* %341, i32 %342, i32 0)
  %344 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %345 = call i32 @a5xx_me_init(%struct.msm_gpu* %344)
  store i32 %345, i32* %5, align 4
  %346 = load i32, i32* %5, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %336
  %349 = load i32, i32* %5, align 4
  store i32 %349, i32* %2, align 4
  br label %455

350:                                              ; preds = %336
  %351 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %352 = call i32 @a5xx_power_init(%struct.msm_gpu* %351)
  store i32 %352, i32* %5, align 4
  %353 = load i32, i32* %5, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* %5, align 4
  store i32 %356, i32* %2, align 4
  br label %455

357:                                              ; preds = %350
  %358 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %359 = call i64 @adreno_is_a530(%struct.adreno_gpu* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %399

361:                                              ; preds = %357
  %362 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %363 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @CP_EVENT_WRITE, align 4
  %368 = call i32 @OUT_PKT7(i32 %366, i32 %367, i32 1)
  %369 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %370 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @OUT_RING(i32 %373, i32 15)
  %375 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %376 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %375, i32 0, i32 2
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = load i32 (%struct.msm_gpu*, i32)*, i32 (%struct.msm_gpu*, i32)** %378, align 8
  %380 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %381 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %382 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 %379(%struct.msm_gpu* %380, i32 %385)
  %387 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %388 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %389 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @a5xx_idle(%struct.msm_gpu* %387, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %361
  %396 = load i32, i32* @EINVAL, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %2, align 4
  br label %455

398:                                              ; preds = %361
  br label %399

399:                                              ; preds = %398, %357
  %400 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %401 = call i32 @a5xx_zap_shader_init(%struct.msm_gpu* %400)
  store i32 %401, i32* %5, align 4
  %402 = load i32, i32* %5, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %442, label %404

404:                                              ; preds = %399
  %405 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %406 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @CP_SET_SECURE_MODE, align 4
  %411 = call i32 @OUT_PKT7(i32 %409, i32 %410, i32 1)
  %412 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %413 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @OUT_RING(i32 %416, i32 0)
  %418 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %419 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %418, i32 0, i32 2
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32 (%struct.msm_gpu*, i32)*, i32 (%struct.msm_gpu*, i32)** %421, align 8
  %423 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %424 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %425 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 %422(%struct.msm_gpu* %423, i32 %428)
  %430 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %431 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %432 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @a5xx_idle(%struct.msm_gpu* %430, i32 %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %404
  %439 = load i32, i32* @EINVAL, align 4
  %440 = sub nsw i32 0, %439
  store i32 %440, i32* %2, align 4
  br label %455

441:                                              ; preds = %404
  br label %452

442:                                              ; preds = %399
  %443 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %444 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %443, i32 0, i32 0
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @dev_warn_once(i32 %447, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %449 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %450 = load i32, i32* @REG_A5XX_RBBM_SECVID_TRUST_CNTL, align 4
  %451 = call i32 @gpu_write(%struct.msm_gpu* %449, i32 %450, i32 0)
  br label %452

452:                                              ; preds = %442, %441
  %453 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %454 = call i32 @a5xx_preempt_start(%struct.msm_gpu* %453)
  store i32 0, i32* %2, align 4
  br label %455

455:                                              ; preds = %452, %438, %395, %355, %348, %334, %323
  %456 = load i32, i32* %2, align 4
  ret i32 %456
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i64 @adreno_is_a540(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a530(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_rmw(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @a5xx_set_hwcg(%struct.msm_gpu*, i32) #1

declare dso_local i32 @REG_A5XX_CP_PROTECT(i32) #1

declare dso_local i32 @ADRENO_PROTECT_RW(i32, i32) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adreno_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_preempt_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_gpmu_ucode_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_ucode_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_me_init(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_power_init(%struct.msm_gpu*) #1

declare dso_local i32 @OUT_PKT7(i32, i32, i32) #1

declare dso_local i32 @OUT_RING(i32, i32) #1

declare dso_local i32 @a5xx_idle(%struct.msm_gpu*, i32) #1

declare dso_local i32 @a5xx_zap_shader_init(%struct.msm_gpu*) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @a5xx_preempt_start(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
