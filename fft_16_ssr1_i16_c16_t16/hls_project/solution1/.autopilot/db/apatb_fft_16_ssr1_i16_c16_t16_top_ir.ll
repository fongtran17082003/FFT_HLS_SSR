; ModuleID = '/home/phongtran/Downloads/ssr-fft-main/fft_16_ssr1_i16_c16_t16/hls_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline
define void @apatb_fft_16_ssr1_i16_c16_t16_top_ir(%"struct.ap_int<32>"* noalias nocapture nonnull readonly "maxi" %din, %"struct.ap_int<32>"* noalias nocapture nonnull "maxi" %dout, i32 %iter) local_unnamed_addr #0 {
entry:
  %din_copy = alloca [512 x i32], align 512
  %dout_copy = alloca [512 x i32], align 512
  %0 = bitcast %"struct.ap_int<32>"* %din to [512 x %"struct.ap_int<32>"]*
  %1 = bitcast %"struct.ap_int<32>"* %dout to [512 x %"struct.ap_int<32>"]*
  call fastcc void @copy_in([512 x %"struct.ap_int<32>"]* nonnull %0, [512 x i32]* nonnull align 512 %din_copy, [512 x %"struct.ap_int<32>"]* nonnull %1, [512 x i32]* nonnull align 512 %dout_copy)
  call void @apatb_fft_16_ssr1_i16_c16_t16_top_hw([512 x i32]* %din_copy, [512 x i32]* %dout_copy, i32 %iter)
  call void @copy_back([512 x %"struct.ap_int<32>"]* %0, [512 x i32]* %din_copy, [512 x %"struct.ap_int<32>"]* %1, [512 x i32]* %dout_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([512 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="0", [512 x i32]* noalias nocapture align 512 "unpacked"="1.0", [512 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="2", [512 x i32]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>.26"([512 x i32]* align 512 %1, [512 x %"struct.ap_int<32>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>.26"([512 x i32]* align 512 %3, [512 x %"struct.ap_int<32>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([512 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [512 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0", [512 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [512 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>"([512 x %"struct.ap_int<32>"]* %0, [512 x i32]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>"([512 x %"struct.ap_int<32>"]* %2, [512 x i32]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>"([512 x %"struct.ap_int<32>"]* noalias "unpacked"="0" %dst, [512 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_int<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_int<32>.22"([512 x %"struct.ap_int<32>"]* nonnull %dst, [512 x i32]* %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a512struct.ap_int<32>.22"([512 x %"struct.ap_int<32>"]* "unpacked"="0" %dst, [512 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [512 x %"struct.ap_int<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x i32], [512 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [512 x %"struct.ap_int<32>"], [512 x %"struct.ap_int<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>.26"([512 x i32]* noalias nocapture align 512 "unpacked"="0.0" %dst, [512 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_int<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_int<32>.29"([512 x i32]* %dst, [512 x %"struct.ap_int<32>"]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a512struct.ap_int<32>.29"([512 x i32]* nocapture "unpacked"="0.0" %dst, [512 x %"struct.ap_int<32>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [512 x %"struct.ap_int<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x %"struct.ap_int<32>"], [512 x %"struct.ap_int<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [512 x i32], [512 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_fft_16_ssr1_i16_c16_t16_top_hw([512 x i32]*, [512 x i32]*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([512 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [512 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0", [512 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [512 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_int<32>"([512 x %"struct.ap_int<32>"]* %2, [512 x i32]* align 512 %3)
  ret void
}

define void @fft_16_ssr1_i16_c16_t16_top_hw_stub_wrapper([512 x i32]*, [512 x i32]*, i32) #5 {
entry:
  %3 = alloca [512 x %"struct.ap_int<32>"]
  %4 = alloca [512 x %"struct.ap_int<32>"]
  call void @copy_out([512 x %"struct.ap_int<32>"]* %3, [512 x i32]* %0, [512 x %"struct.ap_int<32>"]* %4, [512 x i32]* %1)
  %5 = bitcast [512 x %"struct.ap_int<32>"]* %3 to %"struct.ap_int<32>"*
  %6 = bitcast [512 x %"struct.ap_int<32>"]* %4 to %"struct.ap_int<32>"*
  call void @fft_16_ssr1_i16_c16_t16_top_hw_stub(%"struct.ap_int<32>"* %5, %"struct.ap_int<32>"* %6, i32 %2)
  call void @copy_in([512 x %"struct.ap_int<32>"]* %3, [512 x i32]* %0, [512 x %"struct.ap_int<32>"]* %4, [512 x i32]* %1)
  ret void
}

declare void @fft_16_ssr1_i16_c16_t16_top_hw_stub(%"struct.ap_int<32>"*, %"struct.ap_int<32>"*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
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
