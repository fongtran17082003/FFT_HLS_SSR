; ModuleID = '/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18/hls_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<56>" = type { %"struct.ap_int_base<56, true>" }
%"struct.ap_int_base<56, true>" = type { %"struct.ssdm_int<56, true>" }
%"struct.ssdm_int<56, true>" = type { i56 }
%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: noinline
define void @apatb_fft_16k_ssr2_i14_c16_t18_top_ir(%"struct.ap_int<56>"* noalias nocapture nonnull readonly "maxi" %din, %"struct.ap_int<64>"* noalias nocapture nonnull "maxi" %dout, i32 %iter) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 65536)
  %din_copy = bitcast i8* %malloccall to [8192 x i56]*
  %malloccall1 = call i8* @malloc(i64 65536)
  %dout_copy = bitcast i8* %malloccall1 to [8192 x i64]*
  %0 = bitcast %"struct.ap_int<56>"* %din to [8192 x %"struct.ap_int<56>"]*
  %1 = bitcast %"struct.ap_int<64>"* %dout to [8192 x %"struct.ap_int<64>"]*
  call fastcc void @copy_in([8192 x %"struct.ap_int<56>"]* nonnull %0, [8192 x i56]* %din_copy, [8192 x %"struct.ap_int<64>"]* nonnull %1, [8192 x i64]* %dout_copy)
  call void @apatb_fft_16k_ssr2_i14_c16_t18_top_hw([8192 x i56]* %din_copy, [8192 x i64]* %dout_copy, i32 %iter)
  call void @copy_back([8192 x %"struct.ap_int<56>"]* %0, [8192 x i56]* %din_copy, [8192 x %"struct.ap_int<64>"]* %1, [8192 x i64]* %dout_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([8192 x %"struct.ap_int<56>"]* noalias readonly "unpacked"="0", [8192 x i56]* noalias nocapture "unpacked"="1.0", [8192 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="2", [8192 x i64]* noalias nocapture "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<56>.90"([8192 x i56]* %1, [8192 x %"struct.ap_int<56>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<64>"([8192 x i64]* %3, [8192 x %"struct.ap_int<64>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<56>"([8192 x %"struct.ap_int<56>"]* noalias "unpacked"="0" %dst, [8192 x i56]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<56>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_int<56>"([8192 x %"struct.ap_int<56>"]* nonnull %dst, [8192 x i56]* %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_int<56>"([8192 x %"struct.ap_int<56>"]* "unpacked"="0" %dst, [8192 x i56]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<56>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x i56], [8192 x i56]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_int<56>"], [8192 x %"struct.ap_int<56>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i56, i56* %src.addr.0.0.05, align 8
  store i56 %1, i56* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<64>"([8192 x i64]* noalias nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_int<64>"([8192 x i64]* %dst, [8192 x %"struct.ap_int<64>"]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_int<64>"([8192 x i64]* nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_int<64>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_int<64>"], [8192 x %"struct.ap_int<64>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x i64], [8192 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([8192 x %"struct.ap_int<56>"]* noalias "unpacked"="0", [8192 x i56]* noalias nocapture readonly "unpacked"="1.0", [8192 x %"struct.ap_int<64>"]* noalias "unpacked"="2", [8192 x i64]* noalias nocapture readonly "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<56>"([8192 x %"struct.ap_int<56>"]* %0, [8192 x i56]* %1)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<64>.80"([8192 x %"struct.ap_int<64>"]* %2, [8192 x i64]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<64>.80"([8192 x %"struct.ap_int<64>"]* noalias "unpacked"="0" %dst, [8192 x i64]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_int<64>.83"([8192 x %"struct.ap_int<64>"]* nonnull %dst, [8192 x i64]* %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_int<64>.83"([8192 x %"struct.ap_int<64>"]* "unpacked"="0" %dst, [8192 x i64]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x i64], [8192 x i64]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_int<64>"], [8192 x %"struct.ap_int<64>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<56>.90"([8192 x i56]* noalias nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_int<56>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<56>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_int<56>.93"([8192 x i56]* %dst, [8192 x %"struct.ap_int<56>"]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_int<56>.93"([8192 x i56]* nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_int<56>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_int<56>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_int<56>"], [8192 x %"struct.ap_int<56>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x i56], [8192 x i56]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i56, i56* %src.addr.0.0.05, align 8
  store i56 %1, i56* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_fft_16k_ssr2_i14_c16_t18_top_hw([8192 x i56]*, [8192 x i64]*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([8192 x %"struct.ap_int<56>"]* noalias "unpacked"="0", [8192 x i56]* noalias nocapture readonly "unpacked"="1.0", [8192 x %"struct.ap_int<64>"]* noalias "unpacked"="2", [8192 x i64]* noalias nocapture readonly "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_int<64>.80"([8192 x %"struct.ap_int<64>"]* %2, [8192 x i64]* %3)
  ret void
}

define void @fft_16k_ssr2_i14_c16_t18_top_hw_stub_wrapper([8192 x i56]*, [8192 x i64]*, i32) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 65536)
  %3 = bitcast i8* %malloccall to [8192 x %"struct.ap_int<56>"]*
  %malloccall1 = tail call i8* @malloc(i64 65536)
  %4 = bitcast i8* %malloccall1 to [8192 x %"struct.ap_int<64>"]*
  call void @copy_out([8192 x %"struct.ap_int<56>"]* %3, [8192 x i56]* %0, [8192 x %"struct.ap_int<64>"]* %4, [8192 x i64]* %1)
  %5 = bitcast [8192 x %"struct.ap_int<56>"]* %3 to %"struct.ap_int<56>"*
  %6 = bitcast [8192 x %"struct.ap_int<64>"]* %4 to %"struct.ap_int<64>"*
  call void @fft_16k_ssr2_i14_c16_t18_top_hw_stub(%"struct.ap_int<56>"* %5, %"struct.ap_int<64>"* %6, i32 %2)
  call void @copy_in([8192 x %"struct.ap_int<56>"]* %3, [8192 x i56]* %0, [8192 x %"struct.ap_int<64>"]* %4, [8192 x i64]* %1)
  ret void
}

declare void @fft_16k_ssr2_i14_c16_t18_top_hw_stub(%"struct.ap_int<56>"*, %"struct.ap_int<64>"*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
