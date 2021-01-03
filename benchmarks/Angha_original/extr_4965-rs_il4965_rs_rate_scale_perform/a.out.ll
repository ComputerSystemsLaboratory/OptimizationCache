; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__*, %struct.ieee80211_hw* }
%struct.TYPE_4__ = type { %struct.il_tid_data* }
%struct.il_tid_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i32* }
%struct.il_lq_sta = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__, %struct.il_scale_tbl_info*, i32, i64 }
%struct.il_scale_tbl_info = type { i32*, i64, i32, i8*, %struct.il_rate_scale_data* }
%struct.il_rate_scale_data = type { i64, i32, i32, i32 }

@RATE_INVALID = common dso_local global i32 0, align 4
@IL_INVALID_VALUE = common dso_local global i32 0, align 4
@MAX_TID_COUNT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IL_AGG_OFF = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i8* null, align 8
@RATE_MIN_FAILURE_TH = common dso_local global i64 0, align 8
@RATE_MIN_SUCCESS_TH = common dso_local global i32 0, align 4
@RATE_DECREASE_TH = common dso_local global i32 0, align 4
@RATE_INCREASE_TH = common dso_local global i32 0, align 4
@RATE_HIGH_TH = common dso_local global i32 0, align 4
@RATE_COUNT = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@IL_AGG_TPT_THREHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.TYPE_5__*, %struct.ieee80211_sta*, %struct.il_lq_sta*)* @il4965_rs_rate_scale_perform to i8*)], section "llvm.metadata"
@.str = private unnamed_addr constant [39 x i8] c"rate scale calculate new rate for skb\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Rate scale idx %d for type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mask 0x%04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Current Rate is not valid\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"tbl->expected_tpt is NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"LQ: still below TH. succ=%d total=%d for idx %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"expected_tpt should have been calculated by now\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"LQ: SWITCHING TO NEW TBL suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"LQ: GOING BACK TO THE OLD TBL suc=%d cur-tpt=%d old-tpt=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"decrease rate because of low success_ratio\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"decrease rate because of low tpt\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"choose rate scale idx %d action %d low %d high %d type %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Switch current  mcs: %X idx: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"LQ: STAY in legacy table\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"try to aggregate tid %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal void @il4965_rs_rate_scale_perform(%struct.il_priv* %0, %struct.TYPE_5__* %1, %struct.ieee80211_sta* %2, %struct.il_lq_sta* %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_conf*, align 8
  %12 = alloca %struct.ieee80211_conf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.il_rate_scale_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.il_scale_tbl_info*, align 8
  %26 = alloca %struct.il_scale_tbl_info*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.il_tid_data*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.il_lq_sta* %3, %struct.il_lq_sta** %8, align 8
  %35 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %36, align 8
  store %struct.ieee80211_hw* %37, %struct.ieee80211_hw** %9, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  store %struct.ieee80211_conf* %39, %struct.ieee80211_conf** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = call %struct.ieee80211_conf* @IEEE80211_SKB_CB(%struct.TYPE_5__* %40)
  store %struct.ieee80211_conf* %41, %struct.ieee80211_conf** %11, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ieee80211_conf*
  store %struct.ieee80211_conf* %45, %struct.ieee80211_conf** %12, align 8
  %46 = load i32, i32* @RATE_INVALID, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @RATE_INVALID, align 4
  store i32 %47, i32* %14, align 4
  store %struct.il_rate_scale_data* null, %struct.il_rate_scale_data** %17, align 8
  %48 = load i32, i32* @IL_INVALID_VALUE, align 4
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* @IL_INVALID_VALUE, align 4
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* @IL_INVALID_VALUE, align 4
  store i32 %50, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %51 = load i32, i32* @MAX_TID_COUNT, align 4
  store i32 %51, i32* %33, align 4
  %52 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_is_data(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %4
  %59 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %4
  br label %847

66:                                               ; preds = %58
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %71 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %76 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %78 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %12, align 8
  %79 = call i32 @il4965_rs_tl_add_packet(%struct.il_lq_sta* %77, %struct.ieee80211_conf* %78)
  store i32 %79, i32* %33, align 4
  %80 = load i32, i32* %33, align 4
  %81 = load i32, i32* @MAX_TID_COUNT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %66
  %84 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %85 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %33, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %83
  %92 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %96 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.il_tid_data*, %struct.il_tid_data** %100, align 8
  %102 = load i32, i32* %33, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %101, i64 %103
  store %struct.il_tid_data* %104, %struct.il_tid_data** %34, align 8
  %105 = load %struct.il_tid_data*, %struct.il_tid_data** %34, align 8
  %106 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IL_AGG_OFF, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %91
  %112 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %113 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %112, i32 0, i32 3
  store i32 0, i32* %113, align 4
  br label %117

114:                                              ; preds = %91
  %115 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %116 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  br label %121

118:                                              ; preds = %83, %66
  %119 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %120 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %119, i32 0, i32 3
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %117
  %122 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %123 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %122, i32 0, i32 14
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %128 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %29, align 4
  br label %135

130:                                              ; preds = %121
  %131 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %132 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 1, %133
  store i32 %134, i32* %29, align 4
  br label %135

135:                                              ; preds = %130, %126
  %136 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %137 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %136, i32 0, i32 12
  %138 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %137, align 8
  %139 = load i32, i32* %29, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %138, i64 %140
  store %struct.il_scale_tbl_info* %141, %struct.il_scale_tbl_info** %25, align 8
  %142 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %143 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @is_legacy(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %149 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %148, i32 0, i32 5
  store i32 0, i32* %149, align 4
  br label %156

150:                                              ; preds = %135
  %151 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %152 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %153 = call i32 @il4965_rs_use_green(%struct.il_priv* %151, %struct.ieee80211_sta* %152)
  %154 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %155 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %147
  %157 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %158 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %28, align 4
  %160 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %161 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %165 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %163, i8* %166)
  %168 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %169 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %12, align 8
  %170 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %171 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @il4965_rs_get_supported_rates(%struct.il_lq_sta* %168, %struct.ieee80211_conf* %169, i8* %172)
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %23, align 4
  %175 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %177 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @is_legacy(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %156
  %182 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %183 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load i32, i32* %23, align 4
  %189 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %190 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %193 = shl i32 %191, %192
  %194 = and i32 %188, %193
  store i32 %194, i32* %27, align 4
  br label %201

195:                                              ; preds = %181
  %196 = load i32, i32* %23, align 4
  %197 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %198 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %196, %199
  store i32 %200, i32* %27, align 4
  br label %201

201:                                              ; preds = %195, %187
  br label %204

202:                                              ; preds = %156
  %203 = load i32, i32* %23, align 4
  store i32 %203, i32* %27, align 4
  br label %204

204:                                              ; preds = %202, %201
  %205 = load i32, i32* %27, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %23, align 4
  store i32 %208, i32* %27, align 4
  br label %209

209:                                              ; preds = %207, %204
  %210 = load i32, i32* %15, align 4
  %211 = shl i32 1, %210
  %212 = load i32, i32* %27, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %246, label %215

215:                                              ; preds = %209
  %216 = call i32 @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %217 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %218 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %217, i32 0, i32 14
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %215
  %222 = load i8*, i8** @LQ_NONE, align 8
  %223 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %224 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %226 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %225, i32 0, i32 14
  store i64 0, i64* %226, align 8
  %227 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %228 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %227, i32 0, i32 12
  %229 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %228, align 8
  %230 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %231 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %229, i64 %233
  store %struct.il_scale_tbl_info* %234, %struct.il_scale_tbl_info** %25, align 8
  %235 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %236 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @il4965_hwrate_to_plcp_idx(i32 %237)
  store i32 %238, i32* %15, align 4
  %239 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %240 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %241 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %28, align 4
  %244 = call i32 @il4965_rs_update_rate_tbl(%struct.il_priv* %239, %struct.il_lq_sta* %240, %struct.il_scale_tbl_info* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %221, %215
  br label %847

246:                                              ; preds = %209
  %247 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %248 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = call i32 @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %847

253:                                              ; preds = %246
  %254 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %255 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %274

258:                                              ; preds = %253
  %259 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %260 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %274

264:                                              ; preds = %258
  %265 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %266 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %15, align 4
  store i32 1, i32* %24, align 4
  %268 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %269 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %268, i32 0, i32 4
  %270 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %269, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %270, i64 %272
  store %struct.il_rate_scale_data* %273, %struct.il_rate_scale_data** %17, align 8
  br label %612

274:                                              ; preds = %258, %253
  %275 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %276 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %275, i32 0, i32 4
  %277 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %277, i64 %279
  store %struct.il_rate_scale_data* %280, %struct.il_rate_scale_data** %17, align 8
  %281 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %282 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %285 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = sub nsw i64 %283, %287
  store i64 %288, i64* %21, align 8
  %289 = load i64, i64* %21, align 8
  %290 = load i64, i64* @RATE_MIN_FAILURE_TH, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %274
  %293 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %294 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @RATE_MIN_SUCCESS_TH, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %312

298:                                              ; preds = %292
  %299 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %300 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %303 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %15, align 4
  %306 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %301, i64 %304, i32 %305)
  %307 = load i32, i32* @IL_INVALID_VALUE, align 4
  %308 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %309 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 8
  %310 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %311 = call i32 @il4965_rs_stay_in_table(%struct.il_lq_sta* %310, i32 0)
  br label %835

312:                                              ; preds = %292, %274
  %313 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %314 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %317 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %320 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %318, %325
  %327 = add nsw i32 %326, 64
  %328 = sdiv i32 %327, 128
  %329 = icmp ne i32 %315, %328
  br i1 %329, label %330, label %347

330:                                              ; preds = %312
  %331 = call i32 @IL_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %332 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %333 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %336 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = mul nsw i32 %334, %341
  %343 = add nsw i32 %342, 64
  %344 = sdiv i32 %343, 128
  %345 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %346 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 8
  br label %347

347:                                              ; preds = %330, %312
  %348 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %349 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %348, i32 0, i32 14
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %419

352:                                              ; preds = %347
  %353 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %354 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %357 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %356, i32 0, i32 8
  %358 = load i32, i32* %357, align 8
  %359 = icmp sgt i32 %355, %358
  br i1 %359, label %360, label %386

360:                                              ; preds = %352
  %361 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %362 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %365 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %368 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %367, i32 0, i32 8
  %369 = load i32, i32* %368, align 8
  %370 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %363, i32 %366, i32 %369)
  %371 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %372 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = call i64 @is_legacy(i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %360
  %377 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %378 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %377, i32 0, i32 9
  store i32 1, i32* %378, align 4
  br label %379

379:                                              ; preds = %376, %360
  %380 = load i32, i32* %29, align 4
  %381 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %382 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %381, i32 0, i32 4
  store i32 %380, i32* %382, align 8
  %383 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %384 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  store i32 %385, i32* %18, align 4
  br label %416

386:                                              ; preds = %352
  %387 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %388 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %391 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %394 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %393, i32 0, i32 8
  %395 = load i32, i32* %394, align 8
  %396 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %389, i32 %392, i32 %395)
  %397 = load i8*, i8** @LQ_NONE, align 8
  %398 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %399 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %398, i32 0, i32 3
  store i8* %397, i8** %399, align 8
  %400 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %401 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  store i32 %402, i32* %29, align 4
  %403 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %404 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %403, i32 0, i32 12
  %405 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %404, align 8
  %406 = load i32, i32* %29, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %405, i64 %407
  store %struct.il_scale_tbl_info* %408, %struct.il_scale_tbl_info** %25, align 8
  %409 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %410 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @il4965_hwrate_to_plcp_idx(i32 %411)
  store i32 %412, i32* %15, align 4
  %413 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %414 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %413, i32 0, i32 8
  %415 = load i32, i32* %414, align 8
  store i32 %415, i32* %18, align 4
  store i32 1, i32* %24, align 4
  br label %416

416:                                              ; preds = %386, %379
  %417 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %418 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %417, i32 0, i32 14
  store i64 0, i64* %418, align 8
  store i32 1, i32* %30, align 4
  br label %612

419:                                              ; preds = %347
  %420 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %421 = load i32, i32* %15, align 4
  %422 = load i32, i32* %27, align 4
  %423 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %424 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %423, i32 0, i32 3
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @il4965_rs_get_adjacent_rate(%struct.il_priv* %420, i32 %421, i32 %422, i8* %425)
  store i32 %426, i32* %31, align 4
  %427 = load i32, i32* %31, align 4
  %428 = and i32 %427, 255
  store i32 %428, i32* %13, align 4
  %429 = load i32, i32* %31, align 4
  %430 = ashr i32 %429, 8
  %431 = and i32 %430, 255
  store i32 %431, i32* %14, align 4
  %432 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %433 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %434, -1
  br i1 %435, label %436, label %444

436:                                              ; preds = %419
  %437 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %438 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %14, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %444

442:                                              ; preds = %436
  %443 = load i32, i32* @RATE_INVALID, align 4
  store i32 %443, i32* %14, align 4
  br label %444

444:                                              ; preds = %442, %436, %419
  %445 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %446 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  store i32 %447, i32* %32, align 4
  %448 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %449 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  store i32 %450, i32* %18, align 4
  %451 = load i32, i32* %13, align 4
  %452 = load i32, i32* @RATE_INVALID, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %463

454:                                              ; preds = %444
  %455 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %456 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %455, i32 0, i32 4
  %457 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %456, align 8
  %458 = load i32, i32* %13, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %457, i64 %459
  %461 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  store i32 %462, i32* %19, align 4
  br label %463

463:                                              ; preds = %454, %444
  %464 = load i32, i32* %14, align 4
  %465 = load i32, i32* @RATE_INVALID, align 4
  %466 = icmp ne i32 %464, %465
  br i1 %466, label %467, label %476

467:                                              ; preds = %463
  %468 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %469 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %468, i32 0, i32 4
  %470 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %469, align 8
  %471 = load i32, i32* %14, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %470, i64 %472
  %474 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  store i32 %475, i32* %20, align 4
  br label %476

476:                                              ; preds = %467, %463
  store i32 0, i32* %22, align 4
  %477 = load i32, i32* %32, align 4
  %478 = load i32, i32* @RATE_DECREASE_TH, align 4
  %479 = icmp sle i32 %477, %478
  br i1 %479, label %483, label %480

480:                                              ; preds = %476
  %481 = load i32, i32* %18, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %480, %476
  %484 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %22, align 4
  br label %562

485:                                              ; preds = %480
  %486 = load i32, i32* %19, align 4
  %487 = load i32, i32* @IL_INVALID_VALUE, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %509

489:                                              ; preds = %485
  %490 = load i32, i32* %20, align 4
  %491 = load i32, i32* @IL_INVALID_VALUE, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %509

493:                                              ; preds = %489
  %494 = load i32, i32* %14, align 4
  %495 = load i32, i32* @RATE_INVALID, align 4
  %496 = icmp ne i32 %494, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %493
  %498 = load i32, i32* %32, align 4
  %499 = load i32, i32* @RATE_INCREASE_TH, align 4
  %500 = icmp sge i32 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %497
  store i32 1, i32* %22, align 4
  br label %508

502:                                              ; preds = %497, %493
  %503 = load i32, i32* %13, align 4
  %504 = load i32, i32* @RATE_INVALID, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %502
  store i32 0, i32* %22, align 4
  br label %507

507:                                              ; preds = %506, %502
  br label %508

508:                                              ; preds = %507, %501
  br label %561

509:                                              ; preds = %489, %485
  %510 = load i32, i32* %19, align 4
  %511 = load i32, i32* @IL_INVALID_VALUE, align 4
  %512 = icmp ne i32 %510, %511
  br i1 %512, label %513, label %526

513:                                              ; preds = %509
  %514 = load i32, i32* %20, align 4
  %515 = load i32, i32* @IL_INVALID_VALUE, align 4
  %516 = icmp ne i32 %514, %515
  br i1 %516, label %517, label %526

517:                                              ; preds = %513
  %518 = load i32, i32* %19, align 4
  %519 = load i32, i32* %18, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %517
  %522 = load i32, i32* %20, align 4
  %523 = load i32, i32* %18, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  store i32 0, i32* %22, align 4
  br label %560

526:                                              ; preds = %521, %517, %513, %509
  %527 = load i32, i32* %20, align 4
  %528 = load i32, i32* @IL_INVALID_VALUE, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %541

530:                                              ; preds = %526
  %531 = load i32, i32* %20, align 4
  %532 = load i32, i32* %18, align 4
  %533 = icmp sgt i32 %531, %532
  br i1 %533, label %534, label %539

534:                                              ; preds = %530
  %535 = load i32, i32* %32, align 4
  %536 = load i32, i32* @RATE_INCREASE_TH, align 4
  %537 = icmp sge i32 %535, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %534
  store i32 1, i32* %22, align 4
  br label %540

539:                                              ; preds = %534, %530
  store i32 0, i32* %22, align 4
  br label %540

540:                                              ; preds = %539, %538
  br label %559

541:                                              ; preds = %526
  %542 = load i32, i32* %19, align 4
  %543 = load i32, i32* @IL_INVALID_VALUE, align 4
  %544 = icmp ne i32 %542, %543
  br i1 %544, label %545, label %558

545:                                              ; preds = %541
  %546 = load i32, i32* %19, align 4
  %547 = load i32, i32* %18, align 4
  %548 = icmp sgt i32 %546, %547
  br i1 %548, label %549, label %551

549:                                              ; preds = %545
  %550 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %22, align 4
  br label %557

551:                                              ; preds = %545
  %552 = load i32, i32* %32, align 4
  %553 = load i32, i32* @RATE_INCREASE_TH, align 4
  %554 = icmp sge i32 %552, %553
  br i1 %554, label %555, label %556

555:                                              ; preds = %551
  store i32 1, i32* %22, align 4
  br label %556

556:                                              ; preds = %555, %551
  br label %557

557:                                              ; preds = %556, %549
  br label %558

558:                                              ; preds = %557, %541
  br label %559

559:                                              ; preds = %558, %540
  br label %560

560:                                              ; preds = %559, %525
  br label %561

561:                                              ; preds = %560, %508
  br label %562

562:                                              ; preds = %561, %483
  %563 = load i32, i32* %22, align 4
  %564 = icmp eq i32 %563, -1
  br i1 %564, label %565, label %585

565:                                              ; preds = %562
  %566 = load i32, i32* %13, align 4
  %567 = load i32, i32* @RATE_INVALID, align 4
  %568 = icmp ne i32 %566, %567
  br i1 %568, label %569, label %585

569:                                              ; preds = %565
  %570 = load i32, i32* %32, align 4
  %571 = load i32, i32* @RATE_HIGH_TH, align 4
  %572 = icmp sgt i32 %570, %571
  br i1 %572, label %584, label %573

573:                                              ; preds = %569
  %574 = load i32, i32* %18, align 4
  %575 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %576 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %575, i32 0, i32 0
  %577 = load i32*, i32** %576, align 8
  %578 = load i32, i32* %13, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = mul nsw i32 100, %581
  %583 = icmp sgt i32 %574, %582
  br i1 %583, label %584, label %585

584:                                              ; preds = %573, %569
  store i32 0, i32* %22, align 4
  br label %585

585:                                              ; preds = %584, %573, %565, %562
  %586 = load i32, i32* %22, align 4
  switch i32 %586, label %602 [
    i32 -1, label %587
    i32 1, label %594
    i32 0, label %601
  ]

587:                                              ; preds = %585
  %588 = load i32, i32* %13, align 4
  %589 = load i32, i32* @RATE_INVALID, align 4
  %590 = icmp ne i32 %588, %589
  br i1 %590, label %591, label %593

591:                                              ; preds = %587
  store i32 1, i32* %24, align 4
  %592 = load i32, i32* %13, align 4
  store i32 %592, i32* %15, align 4
  br label %593

593:                                              ; preds = %591, %587
  br label %603

594:                                              ; preds = %585
  %595 = load i32, i32* %14, align 4
  %596 = load i32, i32* @RATE_INVALID, align 4
  %597 = icmp ne i32 %595, %596
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  store i32 1, i32* %24, align 4
  %599 = load i32, i32* %14, align 4
  store i32 %599, i32* %15, align 4
  br label %600

600:                                              ; preds = %598, %594
  br label %603

601:                                              ; preds = %585
  br label %602

602:                                              ; preds = %601, %585
  br label %603

603:                                              ; preds = %602, %600, %593
  %604 = load i32, i32* %15, align 4
  %605 = load i32, i32* %22, align 4
  %606 = load i32, i32* %13, align 4
  %607 = load i32, i32* %14, align 4
  %608 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %609 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %608, i32 0, i32 3
  %610 = load i8*, i8** %609, align 8
  %611 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %604, i32 %605, i32 %606, i32 %607, i8* %610)
  br label %612

612:                                              ; preds = %603, %416, %264
  %613 = load i32, i32* %24, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %622

615:                                              ; preds = %612
  %616 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %617 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %618 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %619 = load i32, i32* %15, align 4
  %620 = load i32, i32* %28, align 4
  %621 = call i32 @il4965_rs_update_rate_tbl(%struct.il_priv* %616, %struct.il_lq_sta* %617, %struct.il_scale_tbl_info* %618, i32 %619, i32 %620)
  br label %622

622:                                              ; preds = %615, %612
  %623 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %624 = call i32 @il4965_rs_stay_in_table(%struct.il_lq_sta* %623, i32 0)
  %625 = load i32, i32* %24, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %730, label %627

627:                                              ; preds = %622
  %628 = load i32, i32* %30, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %730, label %630

630:                                              ; preds = %627
  %631 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %632 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %631, i32 0, i32 13
  %633 = load i32, i32* %632, align 8
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %730, label %635

635:                                              ; preds = %630
  %636 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %17, align 8
  %637 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = icmp ne i64 %638, 0
  br i1 %639, label %640, label %730

640:                                              ; preds = %635
  %641 = load i32, i32* %18, align 4
  %642 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %643 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %642, i32 0, i32 8
  store i32 %641, i32* %643, align 8
  %644 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %645 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %644, i32 0, i32 3
  %646 = load i8*, i8** %645, align 8
  %647 = call i64 @is_legacy(i8* %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %656

649:                                              ; preds = %640
  %650 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %651 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %652 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %653 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %654 = load i32, i32* %15, align 4
  %655 = call i32 @il4965_rs_move_legacy_other(%struct.il_priv* %650, %struct.il_lq_sta* %651, %struct.ieee80211_conf* %652, %struct.ieee80211_sta* %653, i32 %654)
  br label %677

656:                                              ; preds = %640
  %657 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %658 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %657, i32 0, i32 3
  %659 = load i8*, i8** %658, align 8
  %660 = call i64 @is_siso(i8* %659)
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %656
  %663 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %664 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %665 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %666 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %667 = load i32, i32* %15, align 4
  %668 = call i32 @il4965_rs_move_siso_to_other(%struct.il_priv* %663, %struct.il_lq_sta* %664, %struct.ieee80211_conf* %665, %struct.ieee80211_sta* %666, i32 %667)
  br label %676

669:                                              ; preds = %656
  %670 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %671 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %672 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %673 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %674 = load i32, i32* %15, align 4
  %675 = call i32 @il4965_rs_move_mimo2_to_other(%struct.il_priv* %670, %struct.il_lq_sta* %671, %struct.ieee80211_conf* %672, %struct.ieee80211_sta* %673, i32 %674)
  br label %676

676:                                              ; preds = %669, %662
  br label %677

677:                                              ; preds = %676, %649
  %678 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %679 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %678, i32 0, i32 14
  %680 = load i64, i64* %679, align 8
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %728

682:                                              ; preds = %677
  %683 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %684 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %683, i32 0, i32 12
  %685 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %684, align 8
  %686 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %687 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %686, i32 0, i32 4
  %688 = load i32, i32* %687, align 8
  %689 = sub nsw i32 1, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %685, i64 %690
  store %struct.il_scale_tbl_info* %691, %struct.il_scale_tbl_info** %25, align 8
  store i32 0, i32* %16, align 4
  br label %692

692:                                              ; preds = %704, %682
  %693 = load i32, i32* %16, align 4
  %694 = load i32, i32* @RATE_COUNT, align 4
  %695 = icmp slt i32 %693, %694
  br i1 %695, label %696, label %707

696:                                              ; preds = %692
  %697 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %698 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %697, i32 0, i32 4
  %699 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %698, align 8
  %700 = load i32, i32* %16, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %699, i64 %701
  %703 = call i32 @il4965_rs_rate_scale_clear_win(%struct.il_rate_scale_data* %702)
  br label %704

704:                                              ; preds = %696
  %705 = load i32, i32* %16, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %16, align 4
  br label %692

707:                                              ; preds = %692
  %708 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %709 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @il4965_hwrate_to_plcp_idx(i32 %710)
  store i32 %711, i32* %15, align 4
  %712 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %713 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %712, i32 0, i32 2
  %714 = load i32, i32* %713, align 8
  %715 = load i32, i32* %15, align 4
  %716 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %714, i32 %715)
  %717 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %718 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %719 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %720 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %719, i32 0, i32 2
  %721 = load i32, i32* %720, align 8
  %722 = call i32 @il4965_rs_fill_link_cmd(%struct.il_priv* %717, %struct.il_lq_sta* %718, i32 %721)
  %723 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %724 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %725 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %724, i32 0, i32 11
  %726 = load i32, i32* @CMD_ASYNC, align 4
  %727 = call i32 @il_send_lq_cmd(%struct.il_priv* %723, %struct.TYPE_5__* %725, i32 %726, i32 0)
  br label %729

728:                                              ; preds = %677
  store i32 1, i32* %30, align 4
  br label %729

729:                                              ; preds = %728, %707
  br label %730

730:                                              ; preds = %729, %635, %630, %627, %622
  %731 = load i32, i32* %30, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %834

733:                                              ; preds = %730
  %734 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %735 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %734, i32 0, i32 13
  %736 = load i32, i32* %735, align 8
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %834, label %738

738:                                              ; preds = %733
  %739 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %740 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %739, i32 0, i32 12
  %741 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %740, align 8
  %742 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %743 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %742, i32 0, i32 4
  %744 = load i32, i32* %743, align 8
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %741, i64 %745
  store %struct.il_scale_tbl_info* %746, %struct.il_scale_tbl_info** %26, align 8
  %747 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %748 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %747, i32 0, i32 3
  %749 = load i8*, i8** %748, align 8
  %750 = call i64 @is_legacy(i8* %749)
  %751 = icmp ne i64 %750, 0
  br i1 %751, label %752, label %769

752:                                              ; preds = %738
  %753 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %754 = call i32 @conf_is_ht(%struct.ieee80211_conf* %753)
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %769, label %756

756:                                              ; preds = %752
  %757 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %758 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %757, i32 0, i32 10
  %759 = load i64, i64* %758, align 8
  %760 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %761 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %760, i32 0, i32 1
  %762 = load i64, i64* %761, align 8
  %763 = icmp sgt i64 %759, %762
  br i1 %763, label %764, label %769

764:                                              ; preds = %756
  %765 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %766 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %767 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %768 = call i32 @il4965_rs_set_stay_in_table(%struct.il_priv* %766, i32 1, %struct.il_lq_sta* %767)
  br label %769

769:                                              ; preds = %764, %756, %752, %738
  %770 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %771 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %770, i32 0, i32 9
  %772 = load i32, i32* %771, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %833

774:                                              ; preds = %769
  %775 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %776 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %775, i32 0, i32 10
  %777 = load i64, i64* %776, align 8
  %778 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %26, align 8
  %779 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %778, i32 0, i32 1
  %780 = load i64, i64* %779, align 8
  %781 = icmp sge i64 %777, %780
  br i1 %781, label %782, label %833

782:                                              ; preds = %774
  %783 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %784 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %783, i32 0, i32 8
  %785 = load i32, i32* %784, align 8
  %786 = load i32, i32* @IL_AGG_TPT_THREHOLD, align 4
  %787 = icmp sgt i32 %785, %786
  br i1 %787, label %788, label %829

788:                                              ; preds = %782
  %789 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %790 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %789, i32 0, i32 2
  %791 = load i32, i32* %790, align 8
  %792 = load i32, i32* %33, align 4
  %793 = shl i32 1, %792
  %794 = and i32 %791, %793
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %829

796:                                              ; preds = %788
  %797 = load i32, i32* %33, align 4
  %798 = load i32, i32* @MAX_TID_COUNT, align 4
  %799 = icmp ne i32 %797, %798
  br i1 %799, label %800, label %829

800:                                              ; preds = %796
  %801 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %802 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %801, i32 0, i32 0
  %803 = load %struct.TYPE_4__*, %struct.TYPE_4__** %802, align 8
  %804 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %805 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %804, i32 0, i32 11
  %806 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %805, i32 0, i32 0
  %807 = load i64, i64* %806, align 8
  %808 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %803, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %808, i32 0, i32 0
  %810 = load %struct.il_tid_data*, %struct.il_tid_data** %809, align 8
  %811 = load i32, i32* %33, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %810, i64 %812
  store %struct.il_tid_data* %813, %struct.il_tid_data** %34, align 8
  %814 = load %struct.il_tid_data*, %struct.il_tid_data** %34, align 8
  %815 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %814, i32 0, i32 0
  %816 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %815, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = load i64, i64* @IL_AGG_OFF, align 8
  %819 = icmp eq i64 %817, %818
  br i1 %819, label %820, label %828

820:                                              ; preds = %800
  %821 = load i32, i32* %33, align 4
  %822 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %821)
  %823 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %824 = load i32, i32* %33, align 4
  %825 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %826 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %827 = call i32 @il4965_rs_tl_turn_on_agg(%struct.il_priv* %823, i32 %824, %struct.il_lq_sta* %825, %struct.ieee80211_sta* %826)
  br label %828

828:                                              ; preds = %820, %800
  br label %829

829:                                              ; preds = %828, %796, %788, %782
  %830 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %831 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %832 = call i32 @il4965_rs_set_stay_in_table(%struct.il_priv* %830, i32 0, %struct.il_lq_sta* %831)
  br label %833

833:                                              ; preds = %829, %774, %769
  br label %834

834:                                              ; preds = %833, %733, %730
  br label %835

835:                                              ; preds = %834, %298
  %836 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %837 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %838 = load i32, i32* %15, align 4
  %839 = load i32, i32* %28, align 4
  %840 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %836, %struct.il_scale_tbl_info* %837, i32 %838, i32 %839)
  %841 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %25, align 8
  %842 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %841, i32 0, i32 2
  store i32 %840, i32* %842, align 8
  %843 = load i32, i32* %15, align 4
  store i32 %843, i32* %16, align 4
  %844 = load i32, i32* %16, align 4
  %845 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %846 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %845, i32 0, i32 6
  store i32 %844, i32* %846, align 8
  br label %847

847:                                              ; preds = %835, %251, %245, %65
  ret void
}

declare dso_local %struct.ieee80211_conf* @IEEE80211_SKB_CB(%struct.TYPE_5__*) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @il4965_rs_tl_add_packet(%struct.il_lq_sta*, %struct.ieee80211_conf*) #1

declare dso_local i64 @is_legacy(i8*) #1

declare dso_local i32 @il4965_rs_use_green(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @il4965_rs_get_supported_rates(%struct.il_lq_sta*, %struct.ieee80211_conf*, i8*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il4965_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @il4965_rs_update_rate_tbl(%struct.il_priv*, %struct.il_lq_sta*, %struct.il_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @il4965_rs_stay_in_table(%struct.il_lq_sta*, i32) #1

declare dso_local i32 @il4965_rs_get_adjacent_rate(%struct.il_priv*, i32, i32, i8*) #1

declare dso_local i32 @il4965_rs_move_legacy_other(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @is_siso(i8*) #1

declare dso_local i32 @il4965_rs_move_siso_to_other(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @il4965_rs_move_mimo2_to_other(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @il4965_rs_rate_scale_clear_win(%struct.il_rate_scale_data*) #1

declare dso_local i32 @il4965_rs_fill_link_cmd(%struct.il_priv*, %struct.il_lq_sta*, i32) #1

declare dso_local i32 @il_send_lq_cmd(%struct.il_priv*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @il4965_rs_set_stay_in_table(%struct.il_priv*, i32, %struct.il_lq_sta*) #1

declare dso_local i32 @il4965_rs_tl_turn_on_agg(%struct.il_priv*, i32, %struct.il_lq_sta*, %struct.ieee80211_sta*) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
