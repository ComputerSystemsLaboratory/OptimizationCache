; ModuleID = 'extr_aarp_aarp_rcv.c'
source_filename = "extr_aarp_aarp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64 }
%struct.elapaarp = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, i32 }
%struct.aarp_entry = type { i32, i32, i32, %struct.net_device* }
%struct.atalk_addr = type { i32, i64 }
%struct.atalk_iface = type { i32, %struct.atalk_addr }

@init_net = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@AARP_PA_ALEN = common dso_local global i64 0, align 8
@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@ATIF_PROBE = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4
@aarp_lock = common dso_local global i32 0, align 4
@proxies = common dso_local global i32* null, align 8
@unresolved_count = common dso_local global i32 0, align 4
@unresolved = common dso_local global i32* null, align 8
@aarp_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sysctl_aarp_expiry_time = common dso_local global i64 0, align 8
@resolved = common dso_local global i32* null, align 8
@sysctl_aarp_tick_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @aarp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @aarp_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.elapaarp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aarp_entry*, align 8
  %14 = alloca %struct.atalk_addr, align 8
  %15 = alloca %struct.atalk_addr*, align 8
  %16 = alloca %struct.atalk_addr, align 8
  %17 = alloca %struct.atalk_iface*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.elapaarp* @aarp_hdr(%struct.sk_buff* %18)
  store %struct.elapaarp* %19, %struct.elapaarp** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @dev_net(%struct.net_device* %20)
  %22 = call i32 @net_eq(i32 %21, i32* @init_net)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %300

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARPHRD_ETHER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %300

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_pull(%struct.sk_buff* %33, i32 80)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %300

37:                                               ; preds = %32
  %38 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %39 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 128
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 130
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %49 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETH_ALEN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %55 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AARP_PA_ALEN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %61 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %66 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59, %53, %47, %44, %37
  br label %300

70:                                               ; preds = %64
  %71 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %72 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AARP_HASH_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = srem i32 %73, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %78 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %82 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call %struct.atalk_iface* @atalk_find_dev(%struct.net_device* %85)
  store %struct.atalk_iface* %86, %struct.atalk_iface** %17, align 8
  %87 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %88 = icmp ne %struct.atalk_iface* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %70
  br label %299

90:                                               ; preds = %70
  %91 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %92 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ATIF_PROBE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %99 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %104 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %97
  %108 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %109 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %113 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %118 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %119 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %299

122:                                              ; preds = %107, %97, %90
  %123 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %124 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %129 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = call i32 @write_lock_bh(i32* @aarp_lock)
  %133 = load i32*, i32** @proxies, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call %struct.aarp_entry* @__aarp_find_entry(i32 %137, %struct.net_device* %138, %struct.atalk_addr* %16)
  store %struct.aarp_entry* %139, %struct.aarp_entry** %13, align 8
  %140 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %141 = icmp ne %struct.aarp_entry* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %122
  %143 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %144 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ATIF_PROBE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %151 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %152 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %297

155:                                              ; preds = %142, %122
  %156 = load i32, i32* %12, align 4
  switch i32 %156, label %296 [
    i32 129, label %157
    i32 128, label %202
    i32 130, label %202
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* @unresolved_count, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %296

161:                                              ; preds = %157
  %162 = load i32*, i32** @unresolved, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = call %struct.aarp_entry* @__aarp_find_entry(i32 %166, %struct.net_device* %167, %struct.atalk_addr* %14)
  store %struct.aarp_entry* %168, %struct.aarp_entry** %13, align 8
  %169 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %170 = icmp ne %struct.aarp_entry* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %161
  %172 = load %struct.net_device*, %struct.net_device** %6, align 8
  %173 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %174 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %173, i32 0, i32 3
  %175 = load %struct.net_device*, %struct.net_device** %174, align 8
  %176 = icmp ne %struct.net_device* %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171, %161
  br label %296

178:                                              ; preds = %171
  %179 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %180 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %183 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* @ETH_ALEN, align 8
  %186 = call i32 @memcpy(i32 %181, i32 %184, i64 %185)
  %187 = load i32*, i32** @unresolved, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @__aarp_resolved(i32* %190, %struct.aarp_entry* %191, i32 %192)
  %194 = load i32, i32* @unresolved_count, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %178
  %197 = load i64, i64* @jiffies, align 8
  %198 = load i64, i64* @sysctl_aarp_expiry_time, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @mod_timer(i32* @aarp_timer, i64 %199)
  br label %201

201:                                              ; preds = %196, %178
  br label %296

202:                                              ; preds = %155, %155
  %203 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %204 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %206, i32* %207, align 8
  %208 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %209 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %210, i64* %211, align 8
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = call %struct.atalk_addr* @__aarp_proxy_find(%struct.net_device* %212, %struct.atalk_addr* %14)
  store %struct.atalk_addr* %213, %struct.atalk_addr** %15, align 8
  %214 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %215 = icmp ne %struct.atalk_addr* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %202
  %217 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %218 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %217, i32 0, i32 1
  store %struct.atalk_addr* %218, %struct.atalk_addr** %15, align 8
  br label %226

219:                                              ; preds = %202
  %220 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 0
  store i32 %221, i32* %222, align 8
  %223 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 1
  store i64 %224, i64* %225, align 8
  store %struct.atalk_addr* %16, %struct.atalk_addr** %15, align 8
  br label %226

226:                                              ; preds = %219, %216
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %227, 130
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  %230 = load i32*, i32** @resolved, align 8
  %231 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @AARP_HASH_SIZE, align 4
  %234 = sub nsw i32 %233, 1
  %235 = srem i32 %232, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load %struct.net_device*, %struct.net_device** %240, align 8
  %242 = call %struct.aarp_entry* @__aarp_find_entry(i32 %238, %struct.net_device* %241, %struct.atalk_addr* %14)
  store %struct.aarp_entry* %242, %struct.aarp_entry** %13, align 8
  %243 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %244 = icmp ne %struct.aarp_entry* %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %229
  %246 = load i64, i64* @jiffies, align 8
  %247 = sub nsw i64 %246, 1
  %248 = trunc i64 %247 to i32
  %249 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %250 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load i64, i64* @jiffies, align 8
  %252 = load i64, i64* @sysctl_aarp_tick_time, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @mod_timer(i32* @aarp_timer, i64 %253)
  br label %255

255:                                              ; preds = %245, %229
  br label %256

256:                                              ; preds = %255, %226
  %257 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %260 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %296

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %264
  %269 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %270 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %277 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %275, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %273
  br label %296

281:                                              ; preds = %273, %268, %264
  %282 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %283 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %284, i32* %285, align 8
  %286 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %287 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %288, i64* %289, align 8
  %290 = load %struct.net_device*, %struct.net_device** %6, align 8
  %291 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %292 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %293 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @aarp_send_reply(%struct.net_device* %290, %struct.atalk_addr* %291, %struct.atalk_addr* %14, i32 %294)
  br label %296

296:                                              ; preds = %155, %281, %280, %263, %201, %177, %160
  br label %297

297:                                              ; preds = %296, %149
  %298 = call i32 @write_unlock_bh(i32* @aarp_lock)
  br label %299

299:                                              ; preds = %297, %116, %89
  store i32 1, i32* %11, align 4
  br label %300

300:                                              ; preds = %299, %69, %36, %31, %24
  %301 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %302 = call i32 @kfree_skb(%struct.sk_buff* %301)
  %303 = load i32, i32* %11, align 4
  ret i32 %303
}

declare dso_local %struct.elapaarp* @aarp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.atalk_iface* @atalk_find_dev(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.aarp_entry* @__aarp_find_entry(i32, %struct.net_device*, %struct.atalk_addr*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @__aarp_resolved(i32*, %struct.aarp_entry*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.atalk_addr* @__aarp_proxy_find(%struct.net_device*, %struct.atalk_addr*) #1

declare dso_local i32 @aarp_send_reply(%struct.net_device*, %struct.atalk_addr*, %struct.atalk_addr*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
