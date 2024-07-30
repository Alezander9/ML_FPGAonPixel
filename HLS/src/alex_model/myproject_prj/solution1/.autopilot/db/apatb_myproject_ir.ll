; ModuleID = '/home/alexyue/ML_FPGAonPixel/HLS/src/alex_model/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<15, 2, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<15, 2, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<15, true>" }
%"struct.ssdm_int<15, true>" = type { i15 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_myproject_ir(%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="52" %y_profile_input, %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" "partition" %layer7_out) local_unnamed_addr #0 {
entry:
  %y_profile_input_copy5 = alloca i780, align 512
  %layer7_out_copy_0 = alloca i15, align 512
  %layer7_out_copy_1 = alloca i15, align 512
  %layer7_out_copy_2 = alloca i15, align 512
  %layer7_out_copy_3 = alloca i15, align 512
  %layer7_out_copy_4 = alloca i15, align 512
  %layer7_out_copy_5 = alloca i15, align 512
  %layer7_out_copy_6 = alloca i15, align 512
  %layer7_out_copy_7 = alloca i15, align 512
  %layer7_out_copy_8 = alloca i15, align 512
  %layer7_out_copy_9 = alloca i15, align 512
  %layer7_out_copy_10 = alloca i15, align 512
  %layer7_out_copy_11 = alloca i15, align 512
  %layer7_out_copy_12 = alloca i15, align 512
  %layer7_out_copy_13 = alloca i15, align 512
  %layer7_out_copy_14 = alloca i15, align 512
  %layer7_out_copy_15 = alloca i15, align 512
  %0 = bitcast %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %y_profile_input to [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %layer7_out to [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i780* nonnull align 512 %y_profile_input_copy5, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i15* nonnull align 512 %layer7_out_copy_0, i15* nonnull align 512 %layer7_out_copy_1, i15* nonnull align 512 %layer7_out_copy_2, i15* nonnull align 512 %layer7_out_copy_3, i15* nonnull align 512 %layer7_out_copy_4, i15* nonnull align 512 %layer7_out_copy_5, i15* nonnull align 512 %layer7_out_copy_6, i15* nonnull align 512 %layer7_out_copy_7, i15* nonnull align 512 %layer7_out_copy_8, i15* nonnull align 512 %layer7_out_copy_9, i15* nonnull align 512 %layer7_out_copy_10, i15* nonnull align 512 %layer7_out_copy_11, i15* nonnull align 512 %layer7_out_copy_12, i15* nonnull align 512 %layer7_out_copy_13, i15* nonnull align 512 %layer7_out_copy_14, i15* nonnull align 512 %layer7_out_copy_15)
  call void @apatb_myproject_hw(i780* %y_profile_input_copy5, i15* %layer7_out_copy_0, i15* %layer7_out_copy_1, i15* %layer7_out_copy_2, i15* %layer7_out_copy_3, i15* %layer7_out_copy_4, i15* %layer7_out_copy_5, i15* %layer7_out_copy_6, i15* %layer7_out_copy_7, i15* %layer7_out_copy_8, i15* %layer7_out_copy_9, i15* %layer7_out_copy_10, i15* %layer7_out_copy_11, i15* %layer7_out_copy_12, i15* %layer7_out_copy_13, i15* %layer7_out_copy_14, i15* %layer7_out_copy_15)
  call void @copy_back([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0, i780* %y_profile_input_copy5, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %1, i15* %layer7_out_copy_0, i15* %layer7_out_copy_1, i15* %layer7_out_copy_2, i15* %layer7_out_copy_3, i15* %layer7_out_copy_4, i15* %layer7_out_copy_5, i15* %layer7_out_copy_6, i15* %layer7_out_copy_7, i15* %layer7_out_copy_8, i15* %layer7_out_copy_9, i15* %layer7_out_copy_10, i15* %layer7_out_copy_11, i15* %layer7_out_copy_12, i15* %layer7_out_copy_13, i15* %layer7_out_copy_14, i15* %layer7_out_copy_15)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.8" %dst_8, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.9" %dst_9, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.10" %dst_10, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.11" %dst_11, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.12" %dst_12, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.13" %dst_13, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.14" %dst_14, i15* nocapture "orig.arg.no"="0" "unpacked"="0.0.15" %dst_15, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %1 = trunc i64 %for.loop.idx2 to i4
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %2 = bitcast i15* %src.addr.0.0.05 to i16*
  %3 = load i16, i16* %2
  %4 = trunc i16 %3 to i15
  switch i4 %1, label %dst.addr.0.0.06.case.15 [
    i4 0, label %dst.addr.0.0.06.case.0
    i4 1, label %dst.addr.0.0.06.case.1
    i4 2, label %dst.addr.0.0.06.case.2
    i4 3, label %dst.addr.0.0.06.case.3
    i4 4, label %dst.addr.0.0.06.case.4
    i4 5, label %dst.addr.0.0.06.case.5
    i4 6, label %dst.addr.0.0.06.case.6
    i4 7, label %dst.addr.0.0.06.case.7
    i4 -8, label %dst.addr.0.0.06.case.8
    i4 -7, label %dst.addr.0.0.06.case.9
    i4 -6, label %dst.addr.0.0.06.case.10
    i4 -5, label %dst.addr.0.0.06.case.11
    i4 -4, label %dst.addr.0.0.06.case.12
    i4 -3, label %dst.addr.0.0.06.case.13
    i4 -2, label %dst.addr.0.0.06.case.14
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i15 %4, i15* %dst_0, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i15 %4, i15* %dst_1, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i15 %4, i15* %dst_2, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i15 %4, i15* %dst_3, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i15 %4, i15* %dst_4, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  store i15 %4, i15* %dst_5, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.6:                           ; preds = %for.loop
  store i15 %4, i15* %dst_6, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.7:                           ; preds = %for.loop
  store i15 %4, i15* %dst_7, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.8:                           ; preds = %for.loop
  store i15 %4, i15* %dst_8, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.9:                           ; preds = %for.loop
  store i15 %4, i15* %dst_9, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.10:                          ; preds = %for.loop
  store i15 %4, i15* %dst_10, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.11:                          ; preds = %for.loop
  store i15 %4, i15* %dst_11, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.12:                          ; preds = %for.loop
  store i15 %4, i15* %dst_12, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.13:                          ; preds = %for.loop
  store i15 %4, i15* %dst_13, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.14:                          ; preds = %for.loop
  store i15 %4, i15* %dst_14, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.15:                          ; preds = %for.loop
  store i15 %4, i15* %dst_15, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.15, %dst.addr.0.0.06.case.14, %dst.addr.0.0.06.case.13, %dst.addr.0.0.06.case.12, %dst.addr.0.0.06.case.11, %dst.addr.0.0.06.case.10, %dst.addr.0.0.06.case.9, %dst.addr.0.0.06.case.8, %dst.addr.0.0.06.case.7, %dst.addr.0.0.06.case.6, %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.8" %dst_8, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.9" %dst_9, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.10" %dst_10, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.11" %dst_11, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.12" %dst_12, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.13" %dst_13, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.14" %dst_14, i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.15" %dst_15, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* %dst_0, i15* %dst_1, i15* %dst_2, i15* %dst_3, i15* %dst_4, i15* %dst_5, i15* %dst_6, i15* %dst_7, i15* %dst_8, i15* %dst_9, i15* %dst_10, i15* %dst_11, i15* %dst_12, i15* %dst_13, i15* %dst_14, i15* %dst_15, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.31"([16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.8" %src_8, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.9" %src_9, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.10" %src_10, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.11" %src_11, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.12" %src_12, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.13" %src_13, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.14" %src_14, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.15" %src_15, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %1 = trunc i64 %for.loop.idx2 to i4
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i4 %1, label %src.addr.0.0.05.case.15 [
    i4 0, label %src.addr.0.0.05.case.0
    i4 1, label %src.addr.0.0.05.case.1
    i4 2, label %src.addr.0.0.05.case.2
    i4 3, label %src.addr.0.0.05.case.3
    i4 4, label %src.addr.0.0.05.case.4
    i4 5, label %src.addr.0.0.05.case.5
    i4 6, label %src.addr.0.0.05.case.6
    i4 7, label %src.addr.0.0.05.case.7
    i4 -8, label %src.addr.0.0.05.case.8
    i4 -7, label %src.addr.0.0.05.case.9
    i4 -6, label %src.addr.0.0.05.case.10
    i4 -5, label %src.addr.0.0.05.case.11
    i4 -4, label %src.addr.0.0.05.case.12
    i4 -3, label %src.addr.0.0.05.case.13
    i4 -2, label %src.addr.0.0.05.case.14
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %2 = bitcast i15* %src_0 to i16*
  %3 = load i16, i16* %2
  %4 = trunc i16 %3 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %5 = bitcast i15* %src_1 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %8 = bitcast i15* %src_2 to i16*
  %9 = load i16, i16* %8
  %10 = trunc i16 %9 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %11 = bitcast i15* %src_3 to i16*
  %12 = load i16, i16* %11
  %13 = trunc i16 %12 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %14 = bitcast i15* %src_4 to i16*
  %15 = load i16, i16* %14
  %16 = trunc i16 %15 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %17 = bitcast i15* %src_5 to i16*
  %18 = load i16, i16* %17
  %19 = trunc i16 %18 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.6:                           ; preds = %for.loop
  %20 = bitcast i15* %src_6 to i16*
  %21 = load i16, i16* %20
  %22 = trunc i16 %21 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.7:                           ; preds = %for.loop
  %23 = bitcast i15* %src_7 to i16*
  %24 = load i16, i16* %23
  %25 = trunc i16 %24 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.8:                           ; preds = %for.loop
  %26 = bitcast i15* %src_8 to i16*
  %27 = load i16, i16* %26
  %28 = trunc i16 %27 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.9:                           ; preds = %for.loop
  %29 = bitcast i15* %src_9 to i16*
  %30 = load i16, i16* %29
  %31 = trunc i16 %30 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.10:                          ; preds = %for.loop
  %32 = bitcast i15* %src_10 to i16*
  %33 = load i16, i16* %32
  %34 = trunc i16 %33 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.11:                          ; preds = %for.loop
  %35 = bitcast i15* %src_11 to i16*
  %36 = load i16, i16* %35
  %37 = trunc i16 %36 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.12:                          ; preds = %for.loop
  %38 = bitcast i15* %src_12 to i16*
  %39 = load i16, i16* %38
  %40 = trunc i16 %39 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.13:                          ; preds = %for.loop
  %41 = bitcast i15* %src_13 to i16*
  %42 = load i16, i16* %41
  %43 = trunc i16 %42 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.14:                          ; preds = %for.loop
  %44 = bitcast i15* %src_14 to i16*
  %45 = load i16, i16* %44
  %46 = trunc i16 %45 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.15:                          ; preds = %for.loop
  %47 = bitcast i15* %src_15 to i16*
  %48 = load i16, i16* %47
  %49 = trunc i16 %48 to i15
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.15, %src.addr.0.0.05.case.14, %src.addr.0.0.05.case.13, %src.addr.0.0.05.case.12, %src.addr.0.0.05.case.11, %src.addr.0.0.05.case.10, %src.addr.0.0.05.case.9, %src.addr.0.0.05.case.8, %src.addr.0.0.05.case.7, %src.addr.0.0.05.case.6, %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %50 = phi i15 [ %4, %src.addr.0.0.05.case.0 ], [ %7, %src.addr.0.0.05.case.1 ], [ %10, %src.addr.0.0.05.case.2 ], [ %13, %src.addr.0.0.05.case.3 ], [ %16, %src.addr.0.0.05.case.4 ], [ %19, %src.addr.0.0.05.case.5 ], [ %22, %src.addr.0.0.05.case.6 ], [ %25, %src.addr.0.0.05.case.7 ], [ %28, %src.addr.0.0.05.case.8 ], [ %31, %src.addr.0.0.05.case.9 ], [ %34, %src.addr.0.0.05.case.10 ], [ %37, %src.addr.0.0.05.case.11 ], [ %40, %src.addr.0.0.05.case.12 ], [ %43, %src.addr.0.0.05.case.13 ], [ %46, %src.addr.0.0.05.case.14 ], [ %49, %src.addr.0.0.05.case.15 ]
  store i15 %50, i15* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.28"([16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.8" %src_8, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.9" %src_9, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.10" %src_10, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.11" %src_11, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.12" %src_12, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.13" %src_13, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.14" %src_14, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.15" %src_15) #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.31"([16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i15* %src_0, i15* %src_1, i15* %src_2, i15* %src_3, i15* %src_4, i15* %src_5, i15* %src_6, i15* %src_7, i15* %src_8, i15* %src_9, i15* %src_10, i15* %src_11, i15* %src_12, i15* %src_13, i15* %src_14, i15* %src_15, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.41"(i780* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 15, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = bitcast i15* %src.addr.0.0.05 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i15
  %6 = bitcast i780* %dst to i784*
  %7 = load i784, i784* %6
  %8 = trunc i784 %7 to i780
  %9 = zext i64 %2 to i780
  %10 = shl i780 32767, %9
  %11 = zext i15 %5 to i780
  %12 = shl i780 %11, %9
  %thr.xor1 = xor i780 %10, -1
  %thr.and2 = and i780 %8, %thr.xor1
  %thr.or3 = or i780 %thr.and2, %12
  store i780 %thr.or3, i780* %dst, align 128
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.38"(i780* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.41"(i780* %dst, i64 0, [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 52)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i780* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.10" %_10, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.11" %_11, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.12" %_12, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.13" %_13, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.14" %_14, i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.15" %_15) #3 {
entry:
  call void @"onebyonecpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.38"(i780* align 512 %1, [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* align 512 %_0, i15* align 512 %_1, i15* align 512 %_2, i15* align 512 %_3, i15* align 512 %_4, i15* align 512 %_5, i15* align 512 %_6, i15* align 512 %_7, i15* align 512 %_8, i15* align 512 %_9, i15* align 512 %_10, i15* align 512 %_11, i15* align 512 %_12, i15* align 512 %_13, i15* align 512 %_14, i15* align 512 %_15, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i780* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %1 = mul i64 15, %for.loop.idx2
  %2 = add i64 %src_shift, %1
  %dst.addr.0.0.06 = getelementptr [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = bitcast i780* %src to i784*
  %4 = load i784, i784* %3
  %5 = trunc i784 %4 to i780
  %6 = zext i64 %2 to i780
  %7 = lshr i780 %5, %6
  %8 = trunc i780 %7 to i15
  store i15 %8, i15* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i780* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #2 {
entry:
  %0 = icmp eq [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i780* %src, i64 0, i64 52)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i780* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.10" %_10, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.11" %_11, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.12" %_12, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.13" %_13, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.14" %_14, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.15" %_15) #4 {
entry:
  call void @"onebyonecpy_hls.p0a52struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0, i780* align 512 %1)
  call void @"onebyonecpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.28"([16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i15* align 512 %_0, i15* align 512 %_1, i15* align 512 %_2, i15* align 512 %_3, i15* align 512 %_4, i15* align 512 %_5, i15* align 512 %_6, i15* align 512 %_7, i15* align 512 %_8, i15* align 512 %_9, i15* align 512 %_10, i15* align 512 %_11, i15* align 512 %_12, i15* align 512 %_13, i15* align 512 %_14, i15* align 512 %_15)
  ret void
}

declare void @apatb_myproject_hw(i780*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i780* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.10" %_10, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.11" %_11, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.12" %_12, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.13" %_13, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.14" %_14, i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.15" %_15) #4 {
entry:
  call void @"onebyonecpy_hls.p0a16struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.28"([16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i15* align 512 %_0, i15* align 512 %_1, i15* align 512 %_2, i15* align 512 %_3, i15* align 512 %_4, i15* align 512 %_5, i15* align 512 %_6, i15* align 512 %_7, i15* align 512 %_8, i15* align 512 %_9, i15* align 512 %_10, i15* align 512 %_11, i15* align 512 %_12, i15* align 512 %_13, i15* align 512 %_14, i15* align 512 %_15)
  ret void
}

define void @myproject_hw_stub_wrapper(i780*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*, i15*) #5 {
entry:
  %17 = alloca [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]
  %18 = alloca [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %17, i780* %0, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %18, i15* %1, i15* %2, i15* %3, i15* %4, i15* %5, i15* %6, i15* %7, i15* %8, i15* %9, i15* %10, i15* %11, i15* %12, i15* %13, i15* %14, i15* %15, i15* %16)
  %19 = bitcast [52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %17 to %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*
  %20 = bitcast [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %18 to %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %19, %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %20)
  call void @copy_in([52 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %17, i780* %0, [16 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %18, i15* %1, i15* %2, i15* %3, i15* %4, i15* %5, i15* %6, i15* %7, i15* %8, i15* %9, i15* %10, i15* %11, i15* %12, i15* %13, i15* %14, i15* %15, i15* %16)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1.0", [16 x i15]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!11 = !{!"1.0.0", i15* null}
!12 = !{!"1.0.1", i15* null}
!13 = !{!"1.0.2", i15* null}
!14 = !{!"1.0.3", i15* null}
!15 = !{!"1.0.4", i15* null}
!16 = !{!"1.0.5", i15* null}
!17 = !{!"1.0.6", i15* null}
!18 = !{!"1.0.7", i15* null}
!19 = !{!"1.0.8", i15* null}
!20 = !{!"1.0.9", i15* null}
!21 = !{!"1.0.10", i15* null}
!22 = !{!"1.0.11", i15* null}
!23 = !{!"1.0.12", i15* null}
!24 = !{!"1.0.13", i15* null}
!25 = !{!"1.0.14", i15* null}
!26 = !{!"1.0.15", i15* null}
