; ModuleID = 'extr_4965-rs_il4965_rs_move_siso_to_other.c'
source_filename = "extr_4965-rs_il4965_rs_move_siso_to_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.il_lq_sta = type { i32, i64, i32, i32, i32, %struct.il_scale_tbl_info* }
%struct.il_scale_tbl_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.il_rate_scale_data* }
%struct.il_rate_scale_data = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle Antenna\0A\00", align 1
@IL_RS_GOOD_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LQ: SISO switch to MIMO2\0A\00", align 1
@ANT_AB = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LQ: SISO toggle SGI/NGI\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SGI was set in GF+SISO\0A\00", align 1
@LQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, i32)* @il4965_rs_move_siso_to_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @il4965_rs_move_siso_to_other(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.il_scale_tbl_info*, align 8
  %14 = alloca %struct.il_scale_tbl_info*, align 8
  %15 = alloca %struct.il_rate_scale_data*, align 8
  %16 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %8, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %28 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %27, i32 0, i32 5
  %29 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %28, align 8
  %30 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %31 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %29, i64 %32
  store %struct.il_scale_tbl_info* %33, %struct.il_scale_tbl_info** %13, align 8
  %34 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %35 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %34, i32 0, i32 5
  %36 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %35, align 8
  %37 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %38 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 1, %39
  %41 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %36, i64 %40
  store %struct.il_scale_tbl_info* %41, %struct.il_scale_tbl_info** %14, align 8
  %42 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %43 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %42, i32 0, i32 7
  %44 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %44, i64 %46
  store %struct.il_rate_scale_data* %47, %struct.il_rate_scale_data** %15, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %49, %struct.ieee80211_sta_ht_cap** %16, align 8
  %50 = load i32, i32* @RATE_COUNT, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = sub i64 40, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %19, align 4
  %59 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %63 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %64 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %264, %5
  %67 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %68 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %72 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %245 [
    i32 133, label %74
    i32 132, label %74
    i32 130, label %112
    i32 129, label %112
    i32 128, label %112
    i32 131, label %162
  ]

74:                                               ; preds = %66, %66
  %75 = call i32 @D_RATE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %77 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 133
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %20, align 4
  %82 = icmp sle i32 %81, 1
  br i1 %82, label %91, label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %85 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 132
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* %20, align 4
  %90 = icmp sle i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %80
  br label %245

92:                                               ; preds = %88, %83
  %93 = load %struct.il_rate_scale_data*, %struct.il_rate_scale_data** %15, align 8
  %94 = getelementptr inbounds %struct.il_rate_scale_data, %struct.il_rate_scale_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IL_RS_GOOD_RATIO, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %245

99:                                               ; preds = %92
  %100 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %101 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @memcpy(%struct.il_scale_tbl_info* %100, %struct.il_scale_tbl_info* %101, i32 %102)
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %106 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %105, i32 0, i32 4
  %107 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %108 = call i32 @il4965_rs_toggle_antenna(i32 %104, i32* %106, %struct.il_scale_tbl_info* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 1, i32* %21, align 4
  br label %269

111:                                              ; preds = %99
  br label %245

112:                                              ; preds = %66, %66, %66
  %113 = call i32 @D_RATE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %115 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @memcpy(%struct.il_scale_tbl_info* %114, %struct.il_scale_tbl_info* %115, i32 %116)
  %118 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %119 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %121 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 130
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load i32, i32* @ANT_AB, align 4
  %126 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %127 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  br label %142

128:                                              ; preds = %112
  %129 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %130 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @ANT_AC, align 4
  %135 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %136 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  br label %141

137:                                              ; preds = %128
  %138 = load i32, i32* @ANT_BC, align 4
  %139 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %140 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %145 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @il4965_rs_is_valid_ant(i32 %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %245

150:                                              ; preds = %142
  %151 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %152 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %153 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %154 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %155 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @il4965_rs_switch_to_mimo2(%struct.il_priv* %151, %struct.il_lq_sta* %152, %struct.ieee80211_conf* %153, %struct.ieee80211_sta* %154, %struct.il_scale_tbl_info* %155, i32 %156)
  store i32 %157, i32* %22, align 4
  %158 = load i32, i32* %22, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  br label %269

161:                                              ; preds = %150
  br label %245

162:                                              ; preds = %66
  %163 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %164 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %169 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %245

175:                                              ; preds = %167, %162
  %176 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %177 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %16, align 8
  %182 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180
  br label %245

188:                                              ; preds = %180, %175
  %189 = call i32 @D_RATE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %190 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %191 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @memcpy(%struct.il_scale_tbl_info* %190, %struct.il_scale_tbl_info* %191, i32 %192)
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %198 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  br label %245

202:                                              ; preds = %196
  %203 = call i32 @IL_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %204, %188
  %206 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %207 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %213 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %215 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %216 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %214, %struct.il_scale_tbl_info* %215)
  %217 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %218 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %205
  %222 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %223 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 100
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* %23, align 4
  %227 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %228 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp sge i32 %226, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %221
  br label %245

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %205
  %238 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %239 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %238, %struct.il_scale_tbl_info* %239, i32 %240, i32 %241)
  %243 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %244 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 4
  store i32 1, i32* %21, align 4
  br label %269

245:                                              ; preds = %66, %235, %201, %187, %174, %161, %149, %111, %98, %91
  %246 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %247 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  %250 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %251 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %252, 131
  br i1 %253, label %254, label %257

254:                                              ; preds = %245
  %255 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %256 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %255, i32 0, i32 0
  store i32 133, i32* %256, align 8
  br label %257

257:                                              ; preds = %254, %245
  %258 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %259 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %18, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %265

264:                                              ; preds = %257
  br label %66

265:                                              ; preds = %263
  %266 = load i32, i32* @LQ_NONE, align 4
  %267 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %268 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  store i32 0, i32* %6, align 4
  br label %293

269:                                              ; preds = %237, %160, %110
  %270 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %271 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %270, i32 0, i32 3
  store i32 1, i32* %271, align 4
  %272 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %273 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 8
  %276 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %277 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp sgt i32 %278, 131
  br i1 %279, label %280, label %283

280:                                              ; preds = %269
  %281 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %282 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %281, i32 0, i32 0
  store i32 133, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %269
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %13, align 8
  %288 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %14, align 8
  %291 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %286, %283
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %292, %265
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local i32 @D_RATE(i8*) #1

declare dso_local i32 @memcpy(%struct.il_scale_tbl_info*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @il4965_rs_toggle_antenna(i32, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_is_valid_ant(i32, i32) #1

declare dso_local i32 @il4965_rs_switch_to_mimo2(%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
