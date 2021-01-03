; ModuleID = 'a.out.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32 (%struct.ac97_info*)*, i64 }
%struct.ac97_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i8* }

@ENODEV = common dso_local global i32 0, align 4
@AC97_REG_POWER = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@AC97_REG_RESET = common dso_local global i32 0, align 4
@AC97_F_RDCD_BUG = common dso_local global i32 0, align 4
@AC97_REG_ID1 = common dso_local global i32 0, align 4
@AC97_REG_ID2 = common dso_local global i32 0, align 4
@ac97codecid = common dso_local global %struct.TYPE_6__* null, align 8
@ac97vendorid = common dso_local global %struct.TYPE_4__* null, align 8
@AC97_REGEXT_ID = common dso_local global i32 0, align 4
@AC97_REGEXT_STAT = common dso_local global i32 0, align 4
@AC97_EXTCAPS = common dso_local global i32 0, align 4
@AC97_MIXER_SIZE = common dso_local global i32 0, align 4
@ac97mixtable_default = common dso_local global %struct.TYPE_5__* null, align 8
@AC97_MIX_TONE = common dso_local global i32 0, align 4
@AC97_MIX_BEEP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ac97feature = common dso_local global i32* null, align 8
@SOUND_MIXER_VOLUME = common dso_local global i64 0, align 8
@ac97enhancement = common dso_local global i32* null, align 8
@ac97extfeature = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_info*)* @ac97_initmixer to i8*)], section "llvm.metadata"
@.str = private unnamed_addr constant [24 x i8] c"ac97 codec init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ac97 codec invalid or not present (id == %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<%s>\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Buggy AC97 Codec: aggressive ac97_rdcd() workaround enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Codec features \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s%d bit master volume\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Secondary\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s codec\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" extended features \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"ac97 codec reports dac not ready\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ac97 codec dac ready count: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ac97_initmixer(%struct.ac97_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ac97_info*, align 8
  %4 = alloca i32 (%struct.ac97_info*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ac97_info* %0, %struct.ac97_info** %3, align 8
  %18 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %19 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snd_mtxlock(i32 %20)
  %22 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %23 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %26 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @AC97_INIT(i32 %24, i32 %27)
  %29 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %30 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %32 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %1
  %36 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %37 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %41 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snd_mtxunlock(i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  store i32 %44, i32* %2, align 4
  br label %691

45:                                               ; preds = %1
  %46 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %47 = load i32, i32* @AC97_REG_POWER, align 4
  %48 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %49 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 32768, i32 0
  %56 = call i32 @ac97_wrcd(%struct.ac97_info* %46, i32 %47, i32 %55)
  %57 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %58 = call i32 @ac97_reset(%struct.ac97_info* %57)
  %59 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %60 = load i32, i32* @AC97_REG_POWER, align 4
  %61 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %62 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 32768, i32 0
  %69 = call i32 @ac97_wrcd(%struct.ac97_info* %59, i32 %60, i32 %68)
  %70 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %71 = load i32, i32* @AC97_REG_RESET, align 4
  %72 = call i32 @ac97_rdcd(%struct.ac97_info* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %74 = load i32, i32* @AC97_REG_RESET, align 4
  %75 = call i32 @ac97_rdcd(%struct.ac97_info* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %77 = load i32, i32* @AC97_REG_RESET, align 4
  %78 = call i32 @ac97_rdcd(%struct.ac97_info* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %45
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82, %45
  %87 = load i32, i32* @AC97_F_RDCD_BUG, align 4
  %88 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %89 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %93 = load i32, i32* @AC97_REG_RESET, align 4
  %94 = call i32 @ac97_rdcd(%struct.ac97_info* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %86, %82
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 1023
  %98 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %99 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 31744
  %102 = lshr i32 %101, 10
  %103 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %104 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %106 = load i32, i32* @AC97_REG_ID1, align 4
  %107 = call i32 @ac97_rdcd(%struct.ac97_info* %105, i32 %106)
  %108 = shl i32 %107, 16
  %109 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %110 = load i32, i32* @AC97_REG_ID2, align 4
  %111 = call i32 @ac97_rdcd(%struct.ac97_info* %109, i32 %110)
  %112 = or i32 %108, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %129

118:                                              ; preds = %115, %95
  %119 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %120 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %125 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_mtxunlock(i32 %126)
  %128 = load i32, i32* @ENODEV, align 4
  store i32 %128, i32* %2, align 4
  br label %691

129:                                              ; preds = %115
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %132 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %134 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @pci_get_subdevice(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = shl i32 %137, 16
  %139 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %140 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %142 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @pci_get_subvendor(i32 %143)
  %145 = trunc i64 %144 to i32
  %146 = and i32 %145, 65535
  %147 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %148 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %152 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %151, i32 0, i32 12
  store i64 0, i64* %152, align 8
  store i32 (%struct.ac97_info*)* null, i32 (%struct.ac97_info*)** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %212, %129
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %215

161:                                              ; preds = %153
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 -1, %167
  store i32 %168, i32* %17, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %17, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %161
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %183 = load i32, i32* %10, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %189 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %188, i32 0, i32 12
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32 (%struct.ac97_info*)*, i32 (%struct.ac97_info*)** %194, align 8
  store i32 (%struct.ac97_info*)* %195, i32 (%struct.ac97_info*)** %4, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ac97codecid, align 8
  %197 = load i32, i32* %10, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %5, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %17, align 4
  %204 = and i32 %202, %203
  %205 = and i32 %204, 255
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %17, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %206, %208
  %210 = and i32 %209, 255
  store i32 %210, i32* %9, align 4
  br label %215

211:                                              ; preds = %161
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %10, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %153

215:                                              ; preds = %181, %153
  store i8* null, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %216

216:                                              ; preds = %242, %215
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ac97vendorid, align 8
  %218 = load i32, i32* %10, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %216
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ac97vendorid, align 8
  %226 = load i32, i32* %10, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %15, align 4
  %232 = and i32 %231, -256
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %224
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ac97vendorid, align 8
  %236 = load i32, i32* %10, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %6, align 8
  br label %245

241:                                              ; preds = %224
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %216

245:                                              ; preds = %234, %216
  %246 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %247 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %246, i32 0, i32 6
  store i32 0, i32* %247, align 4
  %248 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %249 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %248, i32 0, i32 7
  store i32 0, i32* %249, align 8
  %250 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %251 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %250, i32 0, i32 8
  store i32 0, i32* %251, align 4
  %252 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %253 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %252, i32 0, i32 12
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %280, label %256

256:                                              ; preds = %245
  %257 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %258 = load i32, i32* @AC97_REGEXT_ID, align 4
  %259 = call i32 @ac97_rdcd(%struct.ac97_info* %257, i32 %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 65535
  br i1 %261, label %262, label %279

262:                                              ; preds = %256
  %263 = load i32, i32* %10, align 4
  %264 = and i32 %263, 16383
  %265 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %266 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %265, i32 0, i32 6
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %10, align 4
  %268 = and i32 %267, 49152
  %269 = lshr i32 %268, 14
  %270 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %271 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %270, i32 0, i32 7
  store i32 %269, i32* %271, align 8
  %272 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %273 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %274 = call i32 @ac97_rdcd(%struct.ac97_info* %272, i32 %273)
  %275 = load i32, i32* @AC97_EXTCAPS, align 4
  %276 = and i32 %274, %275
  %277 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %278 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %277, i32 0, i32 8
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %262, %256
  br label %280

280:                                              ; preds = %279, %245
  store i32 0, i32* %10, align 4
  br label %281

281:                                              ; preds = %298, %280
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @AC97_MIXER_SIZE, align 4
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %301

285:                                              ; preds = %281
  %286 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %287 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %286, i32 0, i32 11
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %287, align 8
  %289 = load i32, i32* %10, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i64 %290
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ac97mixtable_default, align 8
  %293 = load i32, i32* %10, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i64 %294
  %296 = bitcast %struct.TYPE_5__* %291 to i8*
  %297 = bitcast %struct.TYPE_5__* %295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %296, i8* align 8 %297, i64 24, i1 false)
  br label %298

298:                                              ; preds = %285
  %299 = load i32, i32* %10, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %10, align 4
  br label %281

301:                                              ; preds = %281
  %302 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %303 = call i32 @ac97_fix_auxout(%struct.ac97_info* %302)
  %304 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %305 = call i32 @ac97_fix_tone(%struct.ac97_info* %304)
  %306 = load i32 (%struct.ac97_info*)*, i32 (%struct.ac97_info*)** %4, align 8
  %307 = icmp ne i32 (%struct.ac97_info*)* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %301
  %309 = load i32 (%struct.ac97_info*)*, i32 (%struct.ac97_info*)** %4, align 8
  %310 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %311 = call i32 %309(%struct.ac97_info* %310)
  br label %312

312:                                              ; preds = %308, %301
  store i32 0, i32* %10, align 4
  br label %313

313:                                              ; preds = %515, %312
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* @AC97_MIXER_SIZE, align 4
  %316 = icmp ult i32 %314, %315
  br i1 %316, label %317, label %518

317:                                              ; preds = %313
  %318 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %319 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %318, i32 0, i32 12
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %317
  %323 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %324 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %323, i32 0, i32 11
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  br label %332

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331, %322
  %333 = phi i32 [ %330, %322 ], [ 1, %331 ]
  store i32 %333, i32* %12, align 4
  %334 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %335 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %334, i32 0, i32 11
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %332
  %345 = load i32, i32* %16, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %16, align 4
  br label %347

347:                                              ; preds = %344, %332
  %348 = load i32, i32* %12, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %514

350:                                              ; preds = %347
  %351 = load i32, i32* %16, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %514

353:                                              ; preds = %350
  %354 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %355 = load i32, i32* %16, align 4
  %356 = call i32 @ac97_rdcd(%struct.ac97_info* %354, i32 %355)
  store i32 %356, i32* %14, align 4
  store i32 %356, i32* %11, align 4
  %357 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %358 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %357, i32 0, i32 11
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %358, align 8
  %360 = load i32, i32* %10, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %353
  %367 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %11, align 4
  %370 = or i32 %369, 32768
  %371 = call i32 @ac97_wrcd(%struct.ac97_info* %367, i32 %368, i32 %370)
  %372 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %373 = load i32, i32* %16, align 4
  %374 = call i32 @ac97_rdcd(%struct.ac97_info* %372, i32 %373)
  store i32 %374, i32* %11, align 4
  br label %378

375:                                              ; preds = %353
  %376 = load i32, i32* %11, align 4
  %377 = or i32 %376, 32768
  store i32 %377, i32* %11, align 4
  br label %378

378:                                              ; preds = %375, %366
  %379 = load i32, i32* %11, align 4
  %380 = and i32 %379, 32768
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %501

382:                                              ; preds = %378
  %383 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %384 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %383, i32 0, i32 11
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %384, align 8
  %386 = load i32, i32* %10, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  store i32 %390, i32* %13, align 4
  %391 = load i32, i32* %13, align 4
  %392 = icmp eq i32 %391, 5
  br i1 %392, label %393, label %396

393:                                              ; preds = %382
  %394 = load i32, i32* %13, align 4
  %395 = add i32 %394, 1
  store i32 %395, i32* %13, align 4
  br label %396

396:                                              ; preds = %393, %382
  %397 = load i32, i32* %13, align 4
  %398 = shl i32 1, %397
  %399 = sub nsw i32 %398, 1
  %400 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %401 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %400, i32 0, i32 11
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %401, align 8
  %403 = load i32, i32* %10, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = shl i32 %399, %407
  store i32 %408, i32* %11, align 4
  %409 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %410 = load i32, i32* %16, align 4
  %411 = load i32, i32* %11, align 4
  %412 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %413 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %412, i32 0, i32 11
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %413, align 8
  %415 = load i32, i32* %10, align 4
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  %421 = zext i1 %420 to i64
  %422 = select i1 %420, i32 32768, i32 0
  %423 = or i32 %411, %422
  %424 = call i32 @ac97_wrcd(%struct.ac97_info* %409, i32 %410, i32 %423)
  %425 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %426 = load i32, i32* %16, align 4
  %427 = call i32 @ac97_rdcd(%struct.ac97_info* %425, i32 %426)
  %428 = load i32, i32* %11, align 4
  %429 = and i32 %427, %428
  store i32 %429, i32* %12, align 4
  %430 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %431 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %430, i32 0, i32 11
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %431, align 8
  %433 = load i32, i32* %10, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %12, align 4
  %439 = lshr i32 %438, %437
  store i32 %439, i32* %12, align 4
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* @AC97_MIX_TONE, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %450

443:                                              ; preds = %396
  %444 = load i32, i32* %12, align 4
  %445 = and i32 %444, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = load i32, i32* %12, align 4
  %449 = lshr i32 %448, 1
  store i32 %449, i32* %12, align 4
  br label %450

450:                                              ; preds = %447, %443, %396
  store i32 0, i32* %11, align 4
  br label %451

451:                                              ; preds = %457, %450
  %452 = load i32, i32* %12, align 4
  %453 = load i32, i32* %11, align 4
  %454 = lshr i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %451
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %11, align 4
  %459 = add i32 %458, 1
  store i32 %459, i32* %11, align 4
  br label %451

460:                                              ; preds = %451
  %461 = load i32, i32* %11, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %479

463:                                              ; preds = %460
  %464 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %465 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %464, i32 0, i32 11
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %465, align 8
  %467 = load i32, i32* %10, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  store i32 1, i32* %470, align 8
  %471 = load i32, i32* %11, align 4
  %472 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %473 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %472, i32 0, i32 11
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %473, align 8
  %475 = load i32, i32* %10, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 2
  store i32 %471, i32* %478, align 8
  br label %500

479:                                              ; preds = %460
  %480 = load i32, i32* %16, align 4
  %481 = load i32, i32* @AC97_MIX_BEEP, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %491

483:                                              ; preds = %479
  %484 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %485 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %484, i32 0, i32 11
  %486 = load %struct.TYPE_5__*, %struct.TYPE_5__** %485, align 8
  %487 = load i32, i32* %10, align 4
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 0
  store i32 1, i32* %490, align 8
  br label %499

491:                                              ; preds = %479
  %492 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %493 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %492, i32 0, i32 11
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %493, align 8
  %495 = load i32, i32* %10, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 0
  store i32 0, i32* %498, align 8
  br label %499

499:                                              ; preds = %491, %483
  br label %500

500:                                              ; preds = %499, %463
  br label %509

501:                                              ; preds = %378
  %502 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %503 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %502, i32 0, i32 11
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** %503, align 8
  %505 = load i32, i32* %10, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 0
  store i32 0, i32* %508, align 8
  br label %509

509:                                              ; preds = %501, %500
  %510 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %511 = load i32, i32* %16, align 4
  %512 = load i32, i32* %14, align 4
  %513 = call i32 @ac97_wrcd(%struct.ac97_info* %510, i32 %511, i32 %512)
  br label %514

514:                                              ; preds = %509, %350, %347
  br label %515

515:                                              ; preds = %514
  %516 = load i32, i32* %10, align 4
  %517 = add i32 %516, 1
  store i32 %517, i32* %10, align 4
  br label %313

518:                                              ; preds = %313
  %519 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %520 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %519, i32 0, i32 10
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %523 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 4
  %525 = load i8*, i8** %6, align 8
  %526 = load i8*, i8** %5, align 8
  %527 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %528 = call i32 @ac97_hw_desc(i32 %524, i8* %525, i8* %526, i8* %527)
  %529 = call i32 (i32, i8*, ...) @device_printf(i32 %521, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %528)
  %530 = load i64, i64* @bootverbose, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %659

532:                                              ; preds = %518
  %533 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %534 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = load i32, i32* @AC97_F_RDCD_BUG, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %532
  %540 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %541 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %540, i32 0, i32 10
  %542 = load i32, i32* %541, align 4
  %543 = call i32 (i32, i8*, ...) @device_printf(i32 %542, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %544

544:                                              ; preds = %539, %532
  %545 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %546 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %545, i32 0, i32 10
  %547 = load i32, i32* %546, align 4
  %548 = call i32 (i32, i8*, ...) @device_printf(i32 %547, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %549

549:                                              ; preds = %573, %544
  %550 = load i32, i32* %10, align 4
  %551 = icmp ult i32 %550, 10
  br i1 %551, label %552, label %576

552:                                              ; preds = %549
  %553 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %554 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* %10, align 4
  %557 = shl i32 1, %556
  %558 = and i32 %555, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %572

560:                                              ; preds = %552
  %561 = load i32, i32* %11, align 4
  %562 = add i32 %561, 1
  store i32 %562, i32* %11, align 4
  %563 = icmp ne i32 %561, 0
  %564 = zext i1 %563 to i64
  %565 = select i1 %563, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %566 = load i32*, i32** @ac97feature, align 8
  %567 = load i32, i32* %10, align 4
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %566, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %565, i32 %570)
  br label %572

572:                                              ; preds = %560, %552
  br label %573

573:                                              ; preds = %572
  %574 = load i32, i32* %10, align 4
  %575 = add i32 %574, 1
  store i32 %575, i32* %10, align 4
  br label %549

576:                                              ; preds = %549
  %577 = load i32, i32* %11, align 4
  %578 = add i32 %577, 1
  store i32 %578, i32* %11, align 4
  %579 = icmp ne i32 %577, 0
  %580 = zext i1 %579 to i64
  %581 = select i1 %579, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %582 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %583 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %582, i32 0, i32 11
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** %583, align 8
  %585 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %581, i32 %588)
  %590 = load i32, i32* %11, align 4
  %591 = icmp ne i32 %590, 0
  %592 = zext i1 %591 to i64
  %593 = select i1 %591, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %594 = load i32*, i32** @ac97enhancement, align 8
  %595 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %596 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %595, i32 0, i32 3
  %597 = load i32, i32* %596, align 8
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %594, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %593, i32 %600)
  %602 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %603 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %602, i32 0, i32 6
  %604 = load i32, i32* %603, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %611, label %606

606:                                              ; preds = %576
  %607 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %608 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %607, i32 0, i32 7
  %609 = load i32, i32* %608, align 8
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %658

611:                                              ; preds = %606, %576
  %612 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %613 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %612, i32 0, i32 10
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %616 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %615, i32 0, i32 7
  %617 = load i32, i32* %616, align 8
  %618 = icmp ne i32 %617, 0
  %619 = zext i1 %618 to i64
  %620 = select i1 %618, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)
  %621 = call i32 (i32, i8*, ...) @device_printf(i32 %614, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %620)
  %622 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %623 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %622, i32 0, i32 6
  %624 = load i32, i32* %623, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %611
  %627 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %628

628:                                              ; preds = %626, %611
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %629

629:                                              ; preds = %653, %628
  %630 = load i32, i32* %10, align 4
  %631 = icmp ult i32 %630, 14
  br i1 %631, label %632, label %656

632:                                              ; preds = %629
  %633 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %634 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %633, i32 0, i32 6
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %10, align 4
  %637 = shl i32 1, %636
  %638 = and i32 %635, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %652

640:                                              ; preds = %632
  %641 = load i32, i32* %11, align 4
  %642 = add i32 %641, 1
  store i32 %642, i32* %11, align 4
  %643 = icmp ne i32 %641, 0
  %644 = zext i1 %643 to i64
  %645 = select i1 %643, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %646 = load i32*, i32** @ac97extfeature, align 8
  %647 = load i32, i32* %10, align 4
  %648 = zext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %646, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %645, i32 %650)
  br label %652

652:                                              ; preds = %640, %632
  br label %653

653:                                              ; preds = %652
  %654 = load i32, i32* %10, align 4
  %655 = add i32 %654, 1
  store i32 %655, i32* %10, align 4
  br label %629

656:                                              ; preds = %629
  %657 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %658

658:                                              ; preds = %656, %606
  br label %659

659:                                              ; preds = %658, %518
  store i32 0, i32* %10, align 4
  br label %660

660:                                              ; preds = %675, %659
  %661 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %662 = load i32, i32* @AC97_REG_POWER, align 4
  %663 = call i32 @ac97_rdcd(%struct.ac97_info* %661, i32 %662)
  %664 = and i32 %663, 2
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %677

666:                                              ; preds = %660
  %667 = load i32, i32* %10, align 4
  %668 = add i32 %667, 1
  store i32 %668, i32* %10, align 4
  %669 = icmp eq i32 %668, 100
  br i1 %669, label %670, label %675

670:                                              ; preds = %666
  %671 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %672 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %671, i32 0, i32 10
  %673 = load i32, i32* %672, align 4
  %674 = call i32 (i32, i8*, ...) @device_printf(i32 %673, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %677

675:                                              ; preds = %666
  %676 = call i32 @DELAY(i32 1000)
  br label %660

677:                                              ; preds = %670, %660
  %678 = load i64, i64* @bootverbose, align 8
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %677
  %681 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %682 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %681, i32 0, i32 10
  %683 = load i32, i32* %682, align 4
  %684 = load i32, i32* %10, align 4
  %685 = call i32 (i32, i8*, ...) @device_printf(i32 %683, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %684)
  br label %686

686:                                              ; preds = %680, %677
  %687 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %688 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %687, i32 0, i32 9
  %689 = load i32, i32* %688, align 8
  %690 = call i32 @snd_mtxunlock(i32 %689)
  store i32 0, i32* %2, align 4
  br label %691

691:                                              ; preds = %686, %118, %35
  %692 = load i32, i32* %2, align 4
  ret i32 %692
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @AC97_INIT(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @ac97_reset(%struct.ac97_info*) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ac97_fix_auxout(%struct.ac97_info*) #1

declare dso_local i32 @ac97_fix_tone(%struct.ac97_info*) #1

declare dso_local i32 @ac97_hw_desc(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
