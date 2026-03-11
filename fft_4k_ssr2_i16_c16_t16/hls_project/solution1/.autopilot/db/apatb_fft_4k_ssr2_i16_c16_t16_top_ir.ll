; ModuleID = '/home/phongtran/Downloads/ssr-fft-main/fft_4k_ssr2_i16_c16_t16/hls_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: noinline
define void @apatb_fft_4k_ssr2_i16_c16_t16_top_ir(%"struct.ap_int<64>"* noalias nocapture nonnull readonly "maxi" %din, %"struct.ap_int<64>"* noalias nocapture nonnull "maxi" %dout, i32 %iter) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 32768)
  %din_copy = bitcast i8* %malloccall to [4096 x i64]*
  %malloccall1 = call i8* @malloc(i64 32768)
  %dout_copy = bitcast i8* %malloccall1 to [4096 x i64]*
  %0 = bitcast %"struct.ap_int<64>"* %din to [4096 x %"struct.ap_int<64>"]*
  %1 = bitcast %"struct.ap_int<64>"* %dout to [4096 x %"struct.ap_int<64>"]*
  call fastcc void @copy_in([4096 x %"struct.ap_int<64>"]* nonnull %0, [4096 x i64]* %din_copy, [4096 x %"struct.ap_int<64>"]* nonnull %1, [4096 x i64]* %dout_copy)
  call void @apatb_fft_4k_ssr2_i16_c16_t16_top_hw([4096 x i64]* %din_copy, [4096 x i64]* %dout_copy, i32 %iter)
  call void @copy_back([4096 x %"struct.ap_int<64>"]* %0, [4096 x i64]* %din_copy, [4096 x %"struct.ap_int<64>"]* %1, [4096 x i64]* %dout_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([4096 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="0", [4096 x i64]* noalias nocapture "unpacked"="1.0", [4096 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="2", [4096 x i64]* noalias nocapture "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>.87"([4096 x i64]* %1, [4096 x %"struct.ap_int<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>.87"([4096 x i64]* %3, [4096 x %"struct.ap_int<64>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4096struct.ap_int<64>"([4096 x %"struct.ap_int<64>"]* %dst, [4096 x %"struct.ap_int<64>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_int<64>"]* %src, null
  %1 = icmp eq [4096 x %"struct.ap_int<64>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x %"struct.ap_int<64>"], [4096 x %"struct.ap_int<64>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4096 x %"struct.ap_int<64>"], [4096 x %"struct.ap_int<64>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([4096 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [4096 x i64]* noalias nocapture readonly "unpacked"="1.0", [4096 x %"struct.ap_int<64>"]* noalias "unpacked"="2", [4096 x i64]* noalias nocapture readonly "unpacked"="3.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>"([4096 x %"struct.ap_int<64>"]* %0, [4096 x i64]* %1)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>"([4096 x %"struct.ap_int<64>"]* %2, [4096 x i64]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>"([4096 x %"struct.ap_int<64>"]* noalias "unpacked"="0" %dst, [4096 x i64]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_int<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4096struct.ap_int<64>.83"([4096 x %"struct.ap_int<64>"]* nonnull %dst, [4096 x i64]* %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4096struct.ap_int<64>.83"([4096 x %"struct.ap_int<64>"]* "unpacked"="0" %dst, [4096 x i64]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_int<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x i64], [4096 x i64]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [4096 x %"struct.ap_int<64>"], [4096 x %"struct.ap_int<64>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>.87"([4096 x i64]* noalias nocapture "unpacked"="0.0" %dst, [4096 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_int<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4096struct.ap_int<64>.90"([4096 x i64]* %dst, [4096 x %"struct.ap_int<64>"]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4096struct.ap_int<64>.90"([4096 x i64]* nocapture "unpacked"="0.0" %dst, [4096 x %"struct.ap_int<64>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_int<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x %"struct.ap_int<64>"], [4096 x %"struct.ap_int<64>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4096 x i64], [4096 x i64]* %dst, i64 0, i64 %for.loop.idx2
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

declare void @apatb_fft_4k_ssr2_i16_c16_t16_top_hw([4096 x i64]*, [4096 x i64]*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([4096 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [4096 x i64]* noalias nocapture readonly "unpacked"="1.0", [4096 x %"struct.ap_int<64>"]* noalias "unpacked"="2", [4096 x i64]* noalias nocapture readonly "unpacked"="3.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_int<64>"([4096 x %"struct.ap_int<64>"]* %2, [4096 x i64]* %3)
  ret void
}

define void @fft_4k_ssr2_i16_c16_t16_top_hw_stub_wrapper([4096 x i64]*, [4096 x i64]*, i32) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 32768)
  %3 = bitcast i8* %malloccall to [4096 x %"struct.ap_int<64>"]*
  %malloccall1 = tail call i8* @malloc(i64 32768)
  %4 = bitcast i8* %malloccall1 to [4096 x %"struct.ap_int<64>"]*
  call void @copy_out([4096 x %"struct.ap_int<64>"]* %3, [4096 x i64]* %0, [4096 x %"struct.ap_int<64>"]* %4, [4096 x i64]* %1)
  %5 = bitcast [4096 x %"struct.ap_int<64>"]* %3 to %"struct.ap_int<64>"*
  %6 = bitcast [4096 x %"struct.ap_int<64>"]* %4 to %"struct.ap_int<64>"*
  call void @fft_4k_ssr2_i16_c16_t16_top_hw_stub(%"struct.ap_int<64>"* %5, %"struct.ap_int<64>"* %6, i32 %2)
  call void @copy_in([4096 x %"struct.ap_int<64>"]* %3, [4096 x i64]* %0, [4096 x %"struct.ap_int<64>"]* %4, [4096 x i64]* %1)
  ret void
}

declare void @fft_4k_ssr2_i16_c16_t16_top_hw_stub(%"struct.ap_int<64>"*, %"struct.ap_int<64>"*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
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
