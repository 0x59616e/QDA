; ModuleID = './test.ll'
source_filename = "LLVMDialectModule"

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
define { ptr, ptr, i64, [1 x i64], [1 x i64] } @test(ptr nocapture readnone %0, ptr nocapture readonly %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
  %6 = tail call dereferenceable_or_null(4160) ptr @malloc(i64 4160)
  %7 = ptrtoint ptr %6 to i64
  %8 = add i64 %7, 63
  %9 = and i64 %8, -64
  %10 = tail call dereferenceable_or_null(4160) ptr @malloc(i64 4160)
  %11 = ptrtoint ptr %10 to i64
  %12 = add i64 %11, 63
  %13 = and i64 %12, -64
  %14 = inttoptr i64 %13 to ptr
  br label %15

15:                                               ; preds = %5, %15
  %16 = phi i64 [ 0, %5 ], [ %44, %15 ]
  %17 = getelementptr double, ptr %1, i64 %16
  %18 = load <8 x double>, ptr %17, align 8
  %19 = or disjoint i64 %16, 16
  %20 = getelementptr double, ptr %1, i64 %19
  %21 = load <8 x double>, ptr %20, align 8
  %22 = fsub <8 x double> %18, %21
  %23 = fmul <8 x double> %22, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %24 = getelementptr double, ptr %14, i64 %19
  store <8 x double> %23, ptr %24, align 64
  %25 = load <8 x double>, ptr %17, align 8
  %26 = load <8 x double>, ptr %20, align 8
  %27 = fadd <8 x double> %25, %26
  %28 = fmul <8 x double> %27, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %29 = getelementptr double, ptr %14, i64 %16
  store <8 x double> %28, ptr %29, align 64
  %30 = or disjoint i64 %16, 8
  %31 = getelementptr double, ptr %1, i64 %30
  %32 = load <8 x double>, ptr %31, align 8
  %33 = or disjoint i64 %16, 24
  %34 = getelementptr double, ptr %1, i64 %33
  %35 = load <8 x double>, ptr %34, align 8
  %36 = fsub <8 x double> %32, %35
  %37 = fmul <8 x double> %36, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %38 = getelementptr double, ptr %14, i64 %33
  store <8 x double> %37, ptr %38, align 64
  %39 = load <8 x double>, ptr %31, align 8
  %40 = load <8 x double>, ptr %34, align 8
  %41 = fadd <8 x double> %39, %40
  %42 = fmul <8 x double> %41, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %43 = getelementptr double, ptr %14, i64 %30
  store <8 x double> %42, ptr %43, align 64
  %44 = add nuw nsw i64 %16, 32
  %45 = icmp ult i64 %16, 480
  br i1 %45, label %15, label %.preheader.preheader

.preheader.preheader:                             ; preds = %15
  %46 = inttoptr i64 %9 to ptr
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %47 = phi i64 [ %159, %.preheader ], [ 0, %.preheader.preheader ]
  %48 = getelementptr double, ptr %14, i64 %47
  %49 = load <8 x double>, ptr %48, align 64
  %50 = or disjoint i64 %47, 64
  %51 = getelementptr double, ptr %14, i64 %50
  %52 = load <8 x double>, ptr %51, align 64
  %53 = fsub <8 x double> %49, %52
  %54 = fmul <8 x double> %53, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %55 = getelementptr double, ptr %46, i64 %50
  store <8 x double> %54, ptr %55, align 64
  %56 = load <8 x double>, ptr %48, align 64
  %57 = load <8 x double>, ptr %51, align 64
  %58 = fadd <8 x double> %56, %57
  %59 = fmul <8 x double> %58, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %60 = getelementptr double, ptr %46, i64 %47
  store <8 x double> %59, ptr %60, align 64
  %61 = or disjoint i64 %47, 8
  %62 = getelementptr double, ptr %14, i64 %61
  %63 = load <8 x double>, ptr %62, align 64
  %64 = or disjoint i64 %47, 72
  %65 = getelementptr double, ptr %14, i64 %64
  %66 = load <8 x double>, ptr %65, align 64
  %67 = fsub <8 x double> %63, %66
  %68 = fmul <8 x double> %67, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %69 = getelementptr double, ptr %46, i64 %64
  store <8 x double> %68, ptr %69, align 64
  %70 = load <8 x double>, ptr %62, align 64
  %71 = load <8 x double>, ptr %65, align 64
  %72 = fadd <8 x double> %70, %71
  %73 = fmul <8 x double> %72, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %74 = getelementptr double, ptr %46, i64 %61
  store <8 x double> %73, ptr %74, align 64
  %75 = or disjoint i64 %47, 16
  %76 = getelementptr double, ptr %14, i64 %75
  %77 = load <8 x double>, ptr %76, align 64
  %78 = or disjoint i64 %47, 80
  %79 = getelementptr double, ptr %14, i64 %78
  %80 = load <8 x double>, ptr %79, align 64
  %81 = fsub <8 x double> %77, %80
  %82 = fmul <8 x double> %81, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %83 = getelementptr double, ptr %46, i64 %78
  store <8 x double> %82, ptr %83, align 64
  %84 = load <8 x double>, ptr %76, align 64
  %85 = load <8 x double>, ptr %79, align 64
  %86 = fadd <8 x double> %84, %85
  %87 = fmul <8 x double> %86, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %88 = getelementptr double, ptr %46, i64 %75
  store <8 x double> %87, ptr %88, align 64
  %89 = or disjoint i64 %47, 24
  %90 = getelementptr double, ptr %14, i64 %89
  %91 = load <8 x double>, ptr %90, align 64
  %92 = or disjoint i64 %47, 88
  %93 = getelementptr double, ptr %14, i64 %92
  %94 = load <8 x double>, ptr %93, align 64
  %95 = fsub <8 x double> %91, %94
  %96 = fmul <8 x double> %95, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %97 = getelementptr double, ptr %46, i64 %92
  store <8 x double> %96, ptr %97, align 64
  %98 = load <8 x double>, ptr %90, align 64
  %99 = load <8 x double>, ptr %93, align 64
  %100 = fadd <8 x double> %98, %99
  %101 = fmul <8 x double> %100, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %102 = getelementptr double, ptr %46, i64 %89
  store <8 x double> %101, ptr %102, align 64
  %103 = or disjoint i64 %47, 32
  %104 = getelementptr double, ptr %14, i64 %103
  %105 = load <8 x double>, ptr %104, align 64
  %106 = or disjoint i64 %47, 96
  %107 = getelementptr double, ptr %14, i64 %106
  %108 = load <8 x double>, ptr %107, align 64
  %109 = fsub <8 x double> %105, %108
  %110 = fmul <8 x double> %109, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %111 = getelementptr double, ptr %46, i64 %106
  store <8 x double> %110, ptr %111, align 64
  %112 = load <8 x double>, ptr %104, align 64
  %113 = load <8 x double>, ptr %107, align 64
  %114 = fadd <8 x double> %112, %113
  %115 = fmul <8 x double> %114, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %116 = getelementptr double, ptr %46, i64 %103
  store <8 x double> %115, ptr %116, align 64
  %117 = or disjoint i64 %47, 40
  %118 = getelementptr double, ptr %14, i64 %117
  %119 = load <8 x double>, ptr %118, align 64
  %120 = or disjoint i64 %47, 104
  %121 = getelementptr double, ptr %14, i64 %120
  %122 = load <8 x double>, ptr %121, align 64
  %123 = fsub <8 x double> %119, %122
  %124 = fmul <8 x double> %123, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %125 = getelementptr double, ptr %46, i64 %120
  store <8 x double> %124, ptr %125, align 64
  %126 = load <8 x double>, ptr %118, align 64
  %127 = load <8 x double>, ptr %121, align 64
  %128 = fadd <8 x double> %126, %127
  %129 = fmul <8 x double> %128, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %130 = getelementptr double, ptr %46, i64 %117
  store <8 x double> %129, ptr %130, align 64
  %131 = or disjoint i64 %47, 48
  %132 = getelementptr double, ptr %14, i64 %131
  %133 = load <8 x double>, ptr %132, align 64
  %134 = or disjoint i64 %47, 112
  %135 = getelementptr double, ptr %14, i64 %134
  %136 = load <8 x double>, ptr %135, align 64
  %137 = fsub <8 x double> %133, %136
  %138 = fmul <8 x double> %137, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %139 = getelementptr double, ptr %46, i64 %134
  store <8 x double> %138, ptr %139, align 64
  %140 = load <8 x double>, ptr %132, align 64
  %141 = load <8 x double>, ptr %135, align 64
  %142 = fadd <8 x double> %140, %141
  %143 = fmul <8 x double> %142, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %144 = getelementptr double, ptr %46, i64 %131
  store <8 x double> %143, ptr %144, align 64
  %145 = or disjoint i64 %47, 56
  %146 = getelementptr double, ptr %14, i64 %145
  %147 = load <8 x double>, ptr %146, align 64
  %148 = or disjoint i64 %47, 120
  %149 = getelementptr double, ptr %14, i64 %148
  %150 = load <8 x double>, ptr %149, align 64
  %151 = fsub <8 x double> %147, %150
  %152 = fmul <8 x double> %151, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %153 = getelementptr double, ptr %46, i64 %148
  store <8 x double> %152, ptr %153, align 64
  %154 = load <8 x double>, ptr %146, align 64
  %155 = load <8 x double>, ptr %149, align 64
  %156 = fadd <8 x double> %154, %155
  %157 = fmul <8 x double> %156, <double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC, double 0x3FE6A09E667F3BCC>
  %158 = getelementptr double, ptr %46, i64 %145
  store <8 x double> %157, ptr %158, align 64
  %159 = add nuw nsw i64 %47, 128
  %160 = icmp ult i64 %47, 384
  br i1 %160, label %.preheader, label %161

161:                                              ; preds = %.preheader
  %162 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %6, 0
  %163 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %162, ptr %46, 1
  %164 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %163, i64 0, 2
  %165 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %164, i64 512, 3, 0
  %166 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, i64 1, 4, 0
  ret { ptr, ptr, i64, [1 x i64], [1 x i64] } %166
}

attributes #0 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
