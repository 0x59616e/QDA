module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @test(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(dense<0.70710678118654746> : vector<8xf64>) : vector<8xf64>
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.constant(64 : index) : i64
    %9 = llvm.mlir.constant(128 : index) : i64
    %10 = llvm.mlir.constant(16 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(512 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.constant(512 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.zero : !llvm.ptr
    %17 = llvm.getelementptr %16[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(64 : index) : i64
    %20 = llvm.add %18, %19 : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.sub %19, %23 : i64
    %25 = llvm.add %22, %24 : i64
    %26 = llvm.urem %25, %19  : i64
    %27 = llvm.sub %25, %26 : i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %21, %29[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %14, %33[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %15, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(512 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(64 : index) : i64
    %42 = llvm.add %40, %41 : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45 : i64
    %47 = llvm.add %44, %46 : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48 : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %36, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %37, %56[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%11 : i64)
  ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb5
    %59 = llvm.icmp "slt" %58, %12 : i64
    llvm.cond_br %59, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %60 = llvm.add %58, %10 : i64
    llvm.br ^bb3(%11 : i64)
  ^bb3(%61: i64):  // 2 preds: ^bb2, ^bb4
    %62 = llvm.icmp "slt" %61, %10 : i64
    llvm.cond_br %62, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %63 = llvm.add %61, %58 : i64
    %64 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.load %65 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %67 = llvm.add %61, %60 : i64
    %68 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %70 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %71 = llvm.fsub %66, %70  : vector<8xf64>
    %72 = llvm.fmul %71, %6  : vector<8xf64>
    %73 = llvm.add %60, %61 : i64
    %74 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %72, %75 {alignment = 8 : i64} : vector<8xf64>, !llvm.ptr
    %76 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.load %77 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %79 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %81 = llvm.load %80 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %82 = llvm.fadd %78, %81  : vector<8xf64>
    %83 = llvm.fmul %82, %6  : vector<8xf64>
    %84 = llvm.add %58, %61 : i64
    %85 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.getelementptr %85[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %83, %86 {alignment = 8 : i64} : vector<8xf64>, !llvm.ptr
    %87 = llvm.add %61, %7 : i64
    llvm.br ^bb3(%87 : i64)
  ^bb5:  // pred: ^bb3
    %88 = llvm.add %58, %13 : i64
    llvm.br ^bb1(%88 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%11 : i64)
  ^bb7(%89: i64):  // 2 preds: ^bb6, ^bb11
    %90 = llvm.icmp "slt" %89, %12 : i64
    llvm.cond_br %90, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %91 = llvm.add %89, %8 : i64
    llvm.br ^bb9(%11 : i64)
  ^bb9(%92: i64):  // 2 preds: ^bb8, ^bb10
    %93 = llvm.icmp "slt" %92, %8 : i64
    llvm.cond_br %93, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %94 = llvm.add %92, %89 : i64
    %95 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.getelementptr %95[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %97 = llvm.load %96 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %98 = llvm.add %92, %91 : i64
    %99 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %101 = llvm.load %100 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %102 = llvm.fsub %97, %101  : vector<8xf64>
    %103 = llvm.fmul %102, %6  : vector<8xf64>
    %104 = llvm.add %91, %92 : i64
    %105 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.getelementptr %105[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %103, %106 {alignment = 8 : i64} : vector<8xf64>, !llvm.ptr
    %107 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %107[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %109 = llvm.load %108 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %110 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %110[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %112 = llvm.load %111 {alignment = 8 : i64} : !llvm.ptr -> vector<8xf64>
    %113 = llvm.fadd %109, %112  : vector<8xf64>
    %114 = llvm.fmul %113, %6  : vector<8xf64>
    %115 = llvm.add %89, %92 : i64
    %116 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.getelementptr %116[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %114, %117 {alignment = 8 : i64} : vector<8xf64>, !llvm.ptr
    %118 = llvm.add %92, %7 : i64
    llvm.br ^bb9(%118 : i64)
  ^bb11:  // pred: ^bb9
    %119 = llvm.add %89, %9 : i64
    llvm.br ^bb7(%119 : i64)
  ^bb12:  // pred: ^bb7
    llvm.return %35 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
}

