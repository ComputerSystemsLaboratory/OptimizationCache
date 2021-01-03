; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@AAC_FLASH_UPD_PENDING = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@AAC_FWUPD_TIMEOUT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@AAC_FLASH_UPD_SUCCESS = common dso_local global i32 0, align 4
@AAC_FLASH_UPD_FAILED = common dso_local global i32 0, align 4
@AAC_BOOT_TIMEOUT = common dso_local global i64 0, align 8
@AAC_UP_AND_RUNNING = common dso_local global i32 0, align 4
@AAC_FLAGS_PERC2QC = common dso_local global i32 0, align 4
@AAC_MONKER_GETKERNVER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AAC_MONKER_GETINFO = common dso_local global i32 0, align 4
@AAC_SRB_STS_INVALID_REQUEST = common dso_local global i32 0, align 4
@AAC_SUPPORTED_4GB_WINDOW = common dso_local global i32 0, align 4
@AAC_FLAGS_NO4GB = common dso_local global i32 0, align 4
@AAC_FLAGS_4GB_WINDOW = common dso_local global i32 0, align 4
@AAC_SUPPORTED_NONDASD = common dso_local global i32 0, align 4
@AAC_FLAGS_ENABLE_CAM = common dso_local global i32 0, align 4
@AAC_SUPPORTED_SGMAP_HOST64 = common dso_local global i32 0, align 4
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@AAC_SUPPORTED_NEW_COMM_TYPE2 = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM_TYPE2 = common dso_local global i32 0, align 4
@AAC_SUPPORTED_NEW_COMM_TYPE1 = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM_TYPE1 = common dso_local global i32 0, align 4
@AAC_SUPPORTED_NEW_COMM_TYPE3 = common dso_local global i32 0, align 4
@AAC_SUPPORTED_NEW_COMM_TYPE4 = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM_TYPE34 = common dso_local global i32 0, align 4
@AAC_SUPPORTED_64BIT_ARRAYSIZE = common dso_local global i32 0, align 4
@AAC_FLAGS_ARRAY_64BIT = common dso_local global i32 0, align 4
@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@AAC_FLAGS_256FIBS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@AAC_FIB_DATASIZE = common dso_local global i32 0, align 4
@AAC_MONKER_GETCOMMPREF = common dso_local global i32 0, align 4
@AAC_HWIF_SRCV = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AAC_FLAGS_RAW_IO = common dso_local global i32 0, align 4
@AAC_FLAGS_LBA_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_check_firmware to i8*)], section "llvm.metadata"
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"FATAL: controller not coming ready, status %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error reading firmware version\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Firmware version %d.%d is not supported.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"RequestAdapterInfo failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Enabling 64-bit address support\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Communication interface not supported!\0A\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"Sync. mode enforced by driver parameter. This will cause a significant performance decrease!\0A\00", align 1
@.str.8 = private unnamed_addr constant [113 x i8] c"Async. mode not supported by current driver, sync. mode enforced.\0APlease update driver to get full performance.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"couldn't allocate register window\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Enable Raw I/O\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Enable 64-bit array\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @aac_check_firmware(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %15 = call i32 @fwprintf(%struct.aac_softc* %13, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %17 = call i32 @AAC_GET_FWSTATUS(%struct.aac_softc* %16)
  %18 = load i32, i32* @AAC_FLASH_UPD_PENDING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %1
  %22 = load i64, i64* @time_uptime, align 8
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %50, %21
  %24 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %25 = call i32 @AAC_GET_FWSTATUS(%struct.aac_softc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @time_uptime, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @AAC_FWUPD_TIMEOUT, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %33 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %567

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AAC_FLASH_UPD_SUCCESS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AAC_FLASH_UPD_FAILED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %23, label %52

52:                                               ; preds = %50
  store i32 100000, i32* %11, align 4
  br label %53

53:                                               ; preds = %56, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i32 @DELAY(i32 100)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %53

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i64, i64* @time_uptime, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %87, %61
  %64 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %65 = call i32 @AAC_GET_FWSTATUS(%struct.aac_softc* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i64, i64* @time_uptime, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @AAC_BOOT_TIMEOUT, align 8
  %69 = add nsw i64 %67, %68
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %73 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %567

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @AAC_UP_AND_RUNNING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, -1
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i1 [ true, %79 ], [ %86, %84 ]
  br i1 %88, label %63, label %89

89:                                               ; preds = %87
  %90 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %91 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AAC_FLAGS_PERC2QC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %89
  %97 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %98 = load i32, i32* @AAC_MONKER_GETKERNVER, align 4
  %99 = call i64 @aacraid_sync_command(%struct.aac_softc* %97, i32 %98, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %103 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  store i32 %106, i32* %2, align 4
  br label %567

107:                                              ; preds = %96
  %108 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %109 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %108, i32 1)
  %110 = and i32 %109, 255
  %111 = sub nsw i32 %110, 48
  store i32 %111, i32* %5, align 4
  %112 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %113 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %112, i32 2)
  %114 = and i32 %113, 255
  %115 = sub nsw i32 %114, 48
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %120 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %2, align 4
  br label %567

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %89
  %128 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %129 = load i32, i32* @AAC_MONKER_GETINFO, align 4
  %130 = call i64 @aacraid_sync_command(%struct.aac_softc* %128, i32 %129, i32 0, i32 0, i32 0, i32 0, i32* %10, i32* null)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @AAC_SRB_STS_INVALID_REQUEST, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @EIO, align 4
  store i32 %141, i32* %2, align 4
  br label %567

142:                                              ; preds = %132
  br label %270

143:                                              ; preds = %127
  %144 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %145 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %144, i32 1)
  store i32 %145, i32* %8, align 4
  %146 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %147 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %146, i32 2)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %150 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %152 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %151, i32 3)
  %153 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %154 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @AAC_SUPPORTED_4GB_WINDOW, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %143
  %160 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %161 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AAC_FLAGS_NO4GB, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32, i32* @AAC_FLAGS_4GB_WINDOW, align 4
  %168 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %169 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %159, %143
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @AAC_SUPPORTED_NONDASD, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @AAC_FLAGS_ENABLE_CAM, align 4
  %179 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @AAC_SUPPORTED_SGMAP_HOST64, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  br i1 false, label %189, label %205

189:                                              ; preds = %188
  %190 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %191 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %197 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32, i8*, ...) @device_printf(i32 %198, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %201 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %202 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %195, %189, %188, %183
  %206 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %207 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %206, i32 0, i32 17
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %258

211:                                              ; preds = %205
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @AAC_SUPPORTED_NEW_COMM_TYPE2, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %218 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE2, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %221 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %257

224:                                              ; preds = %211
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @AAC_SUPPORTED_NEW_COMM_TYPE1, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %231 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE1, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %234 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %256

237:                                              ; preds = %224
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @AAC_SUPPORTED_NEW_COMM_TYPE3, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @AAC_SUPPORTED_NEW_COMM_TYPE4, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %242, %237
  %248 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %249 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE34, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %252 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %247, %242
  br label %256

256:                                              ; preds = %255, %229
  br label %257

257:                                              ; preds = %256, %216
  br label %258

258:                                              ; preds = %257, %205
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @AAC_SUPPORTED_64BIT_ARRAYSIZE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load i32, i32* @AAC_FLAGS_ARRAY_64BIT, align 4
  %265 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %266 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %258
  br label %270

270:                                              ; preds = %269, %142
  %271 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %272 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %270
  %278 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %279 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %278, i32 0, i32 12
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @device_printf(i32 %280, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %282 = load i32, i32* @ENXIO, align 4
  store i32 %282, i32* %2, align 4
  br label %567

283:                                              ; preds = %270
  %284 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %285 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 2
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %283
  %290 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %291 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (i32, i8*, ...) @device_printf(i32 %292, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0))
  %294 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %295 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %296 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %317

299:                                              ; preds = %283
  %300 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %301 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE34, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %299
  %307 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %308 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32, i8*, ...) @device_printf(i32 %309, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.8, i64 0, i64 0))
  %311 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %312 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %313 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %306, %299
  br label %317

317:                                              ; preds = %316, %289
  %318 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %319 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @AAC_FLAGS_256FIBS, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 256, i32 512
  %326 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %327 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %330 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %329, i32 0, i32 13
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @rman_get_size(i32* %331)
  %333 = icmp sgt i32 %328, %332
  br i1 %333, label %334, label %396

334:                                              ; preds = %317
  %335 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %336 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %335, i32 0, i32 12
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @SYS_RES_MEMORY, align 4
  %339 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %340 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %339, i32 0, i32 16
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %343 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %342, i32 0, i32 13
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @bus_release_resource(i32 %337, i32 %338, i32 %341, i32* %344)
  %346 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %347 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %346, i32 0, i32 12
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @SYS_RES_MEMORY, align 4
  %350 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %351 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %350, i32 0, i32 16
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* @RF_ACTIVE, align 4
  %354 = call i32* @bus_alloc_resource_anywhere(i32 %348, i32 %349, i32* %351, i32 %352, i32 %353)
  %355 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %356 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %355, i32 0, i32 13
  store i32* %354, i32** %356, align 8
  %357 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %358 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %357, i32 0, i32 13
  %359 = load i32*, i32** %358, align 8
  %360 = icmp eq i32* %359, null
  br i1 %360, label %361, label %383

361:                                              ; preds = %334
  %362 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %363 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %362, i32 0, i32 12
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @SYS_RES_MEMORY, align 4
  %366 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %367 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %366, i32 0, i32 16
  %368 = load i32, i32* @RF_ACTIVE, align 4
  %369 = call i32* @bus_alloc_resource_any(i32 %364, i32 %365, i32* %367, i32 %368)
  %370 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %371 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %370, i32 0, i32 13
  store i32* %369, i32** %371, align 8
  %372 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %373 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %372, i32 0, i32 13
  %374 = load i32*, i32** %373, align 8
  %375 = icmp eq i32* %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %361
  %377 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %378 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %377, i32 0, i32 12
  %379 = load i32, i32* %378, align 8
  %380 = call i32 (i32, i8*, ...) @device_printf(i32 %379, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %381 = load i32, i32* @ENXIO, align 4
  store i32 %381, i32* %2, align 4
  br label %567

382:                                              ; preds = %361
  br label %383

383:                                              ; preds = %382, %334
  %384 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %385 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %384, i32 0, i32 13
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 @rman_get_bustag(i32* %386)
  %388 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %389 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %388, i32 0, i32 15
  store i32 %387, i32* %389, align 4
  %390 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %391 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %390, i32 0, i32 13
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @rman_get_bushandle(i32* %392)
  %394 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %395 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %394, i32 0, i32 14
  store i32 %393, i32* %395, align 8
  br label %396

396:                                              ; preds = %383, %317
  %397 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %398 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %397, i32 0, i32 5
  store i32 4, i32* %398, align 4
  %399 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %400 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %399, i32 0, i32 6
  store i32 128, i32* %400, align 8
  %401 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %402 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %401, i32 0, i32 7
  store i32 1, i32* %402, align 4
  %403 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %404 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %396
  %410 = load i32, i32* @AAC_FIB_DATASIZE, align 4
  %411 = sext i32 %410 to i64
  %412 = sub i64 %411, 4
  %413 = udiv i64 %412, 4
  %414 = trunc i64 %413 to i32
  %415 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %416 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %415, i32 0, i32 8
  store i32 %414, i32* %416, align 8
  br label %425

417:                                              ; preds = %396
  %418 = load i32, i32* @AAC_FIB_DATASIZE, align 4
  %419 = sext i32 %418 to i64
  %420 = sub i64 %419, 4
  %421 = udiv i64 %420, 4
  %422 = trunc i64 %421 to i32
  %423 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %424 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %423, i32 0, i32 8
  store i32 %422, i32* %424, align 8
  br label %425

425:                                              ; preds = %417, %409
  %426 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %427 = load i32, i32* @AAC_MONKER_GETCOMMPREF, align 4
  %428 = call i64 @aacraid_sync_command(%struct.aac_softc* %426, i32 %427, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %492, label %430

430:                                              ; preds = %425
  %431 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %432 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %431, i32 1)
  store i32 %432, i32* %8, align 4
  %433 = load i32, i32* %8, align 4
  %434 = and i32 %433, 65535
  %435 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %436 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %435, i32 0, i32 5
  store i32 %434, i32* %436, align 4
  %437 = load i32, i32* %8, align 4
  %438 = ashr i32 %437, 16
  %439 = shl i32 %438, 1
  %440 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %441 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %440, i32 0, i32 6
  store i32 %439, i32* %441, align 8
  %442 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %443 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %442, i32 2)
  store i32 %443, i32* %8, align 4
  %444 = load i32, i32* %8, align 4
  %445 = ashr i32 %444, 16
  %446 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %447 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %446, i32 0, i32 8
  store i32 %445, i32* %447, align 8
  %448 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %449 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %448, i32 3)
  store i32 %449, i32* %8, align 4
  %450 = load i32, i32* %8, align 4
  %451 = ashr i32 %450, 16
  %452 = and i32 %451, 65535
  %453 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %454 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %453, i32 0, i32 4
  store i32 %452, i32* %454, align 8
  %455 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %456 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %465, label %459

459:                                              ; preds = %430
  %460 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %461 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %460, i32 0, i32 9
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @AAC_HWIF_SRCV, align 8
  %464 = icmp ne i64 %462, %463
  br i1 %464, label %465, label %470

465:                                              ; preds = %459, %430
  %466 = load i32, i32* %8, align 4
  %467 = and i32 %466, 65535
  %468 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %469 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %468, i32 0, i32 4
  store i32 %467, i32* %469, align 8
  br label %470

470:                                              ; preds = %465, %459
  %471 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %472 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %471, i32 4)
  store i32 %472, i32* %8, align 4
  %473 = load i32, i32* %8, align 4
  %474 = and i32 %473, 65535
  %475 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %476 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %475, i32 0, i32 7
  store i32 %474, i32* %476, align 4
  %477 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %478 = call i32 @AAC_GET_MAILBOX(%struct.aac_softc* %477, i32 5)
  store i32 %478, i32* %8, align 4
  %479 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %480 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE2, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %470
  %486 = load i32, i32* %8, align 4
  br label %488

487:                                              ; preds = %470
  br label %488

488:                                              ; preds = %487, %485
  %489 = phi i32 [ %486, %485 ], [ 0, %487 ]
  %490 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %491 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %490, i32 0, i32 10
  store i32 %489, i32* %491, align 8
  br label %492

492:                                              ; preds = %488, %425
  %493 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %494 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %493, i32 0, i32 5
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, 31
  store i32 %496, i32* %7, align 4
  %497 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %498 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE1, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %492
  %504 = load i32, i32* %7, align 4
  %505 = sext i32 %504 to i64
  %506 = add i64 %505, 4
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %7, align 4
  br label %508

508:                                              ; preds = %503, %492
  %509 = load i32, i32* %7, align 4
  %510 = load i32, i32* @PAGE_SIZE, align 4
  %511 = icmp sgt i32 %509, %510
  br i1 %511, label %512, label %521

512:                                              ; preds = %508
  %513 = load i32, i32* %7, align 4
  %514 = load i32, i32* @PAGE_SIZE, align 4
  %515 = sub nsw i32 %513, %514
  %516 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %517 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = sub nsw i32 %518, %515
  store i32 %519, i32* %517, align 4
  %520 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %520, i32* %7, align 4
  br label %521

521:                                              ; preds = %512, %508
  %522 = load i32, i32* @PAGE_SIZE, align 4
  %523 = load i32, i32* %7, align 4
  %524 = sdiv i32 %522, %523
  %525 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %526 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %525, i32 0, i32 11
  store i32 %524, i32* %526, align 4
  %527 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %528 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %527, i32 0, i32 5
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  %531 = icmp ugt i64 %530, 4
  br i1 %531, label %532, label %542

532:                                              ; preds = %521
  %533 = load i32, i32* @AAC_FLAGS_RAW_IO, align 4
  %534 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %535 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = or i32 %536, %533
  store i32 %537, i32* %535, align 8
  %538 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %539 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %538, i32 0, i32 12
  %540 = load i32, i32* %539, align 8
  %541 = call i32 (i32, i8*, ...) @device_printf(i32 %540, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %542

542:                                              ; preds = %532, %521
  %543 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %544 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = load i32, i32* @AAC_FLAGS_RAW_IO, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %566

549:                                              ; preds = %542
  %550 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %551 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @AAC_FLAGS_ARRAY_64BIT, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %566

556:                                              ; preds = %549
  %557 = load i32, i32* @AAC_FLAGS_LBA_64BIT, align 4
  %558 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %559 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = or i32 %560, %557
  store i32 %561, i32* %559, align 8
  %562 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %563 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %562, i32 0, i32 12
  %564 = load i32, i32* %563, align 8
  %565 = call i32 (i32, i8*, ...) @device_printf(i32 %564, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %566

566:                                              ; preds = %556, %549, %542
  store i32 0, i32* %2, align 4
  br label %567

567:                                              ; preds = %566, %376, %277, %136, %118, %101, %71, %31
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_GET_FWSTATUS(%struct.aac_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @aacraid_sync_command(%struct.aac_softc*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @AAC_GET_MAILBOX(%struct.aac_softc*, i32) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
