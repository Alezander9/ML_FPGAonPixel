; ModuleID = '/home/alexyue/ML_FPGAonPixel/HLS/src/alex_model/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<15, 2, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<15, 2, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<15, true>" }
%"struct.ssdm_int<15, true>" = type { i15 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_myproject_ir(%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="53" %y_timed_input, %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" "partition" %layer10_out) local_unnamed_addr #0 {
entry:
  %y_timed_input_copy6 = alloca i795, align 512
  %layer10_out_copy5 = alloca i15, align 512
  %0 = bitcast %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %y_timed_input to [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %layer10_out to [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i795* nonnull align 512 %y_timed_input_copy6, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i15* nonnull align 512 %layer10_out_copy5)
  call void @apatb_myproject_hw(i795* %y_timed_input_copy6, i15* %layer10_out_copy5)
  call void @copy_back([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0, i795* %y_timed_input_copy6, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %1, i15* %layer10_out_copy5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i15* %src.addr.0.0.05 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i15
  store i15 %3, i15* %dst, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* %dst, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.47"([1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i15* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i15* %src to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i15
  store i15 %3, i15* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.44"([1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i15* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.47"([1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i15* %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.57"(i795* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 15, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = bitcast i15* %src.addr.0.0.05 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i15
  %6 = bitcast i795* %dst to i800*
  %7 = load i800, i800* %6
  %8 = trunc i800 %7 to i795
  %9 = zext i64 %2 to i795
  %10 = shl i795 32767, %9
  %11 = zext i15 %5 to i795
  %12 = shl i795 %11, %9
  %thr.xor1 = xor i795 %10, -1
  %thr.and2 = and i795 %8, %thr.xor1
  %thr.or3 = or i795 %thr.and2, %12
  store i795 %thr.or3, i795* %dst, align 128
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.54"(i795* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.57"(i795* %dst, i64 0, [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 53)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i795* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0") #3 {
entry:
  call void @"onebyonecpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.54"(i795* align 512 %1, [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"(i15* align 512 %3, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i795* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
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
  %dst.addr.0.0.06 = getelementptr [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"], [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = bitcast i795* %src to i800*
  %4 = load i800, i800* %3
  %5 = trunc i800 %4 to i795
  %6 = zext i64 %2 to i795
  %7 = lshr i795 %5, %6
  %8 = trunc i795 %7 to i15
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
define internal void @"onebyonecpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i795* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #2 {
entry:
  %0 = icmp eq [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i795* %src, i64 0, i64 53)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i795* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0") #4 {
entry:
  call void @"onebyonecpy_hls.p0a53struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %0, i795* align 512 %1)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.44"([1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i15* align 512 %3)
  ret void
}

declare void @apatb_myproject_hw(i795*, i15*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i795* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i15* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0") #4 {
entry:
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>.44"([1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i15* align 512 %3)
  ret void
}

define void @myproject_hw_stub_wrapper(i795*, i15*) #5 {
entry:
  %2 = alloca [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]
  %3 = alloca [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i795* %0, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %3, i15* %1)
  %4 = bitcast [53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2 to %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*
  %5 = bitcast [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %4, %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"* %5)
  call void @copy_in([53 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %2, i795* %0, [1 x %"struct.ap_fixed<15, 2, AP_TRN, AP_WRAP, 0>"]* %3, i15* %1)
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
!7 = !{!"1.0", [1 x i15]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11}
!11 = !{!"1.0", i15* null}
